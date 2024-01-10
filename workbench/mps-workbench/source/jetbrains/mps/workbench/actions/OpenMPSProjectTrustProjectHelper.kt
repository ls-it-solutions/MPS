package jetbrains.mps.workbench.actions

import com.intellij.CommonBundle
import com.intellij.DynamicBundle
import com.intellij.codeWithMe.ClientId
import com.intellij.ide.IdeBundle
import com.intellij.ide.impl.*
import com.intellij.ide.impl.TrustedProjectsStatistics.NEW_PROJECT_OPEN_OR_IMPORT_CHOICE
import com.intellij.ide.trustedProjects.TrustedProjects
import com.intellij.ide.trustedProjects.TrustedProjectsLocator
import com.intellij.openapi.application.ApplicationManager
import com.intellij.openapi.application.ApplicationNamesInfo
import com.intellij.openapi.application.EDT
import com.intellij.openapi.ui.DoNotAskOption
import com.intellij.openapi.ui.MessageDialogBuilder
import com.intellij.openapi.ui.Messages
import com.intellij.openapi.util.NlsContexts
import com.intellij.openapi.util.io.FileUtil
import com.intellij.openapi.vfs.VirtualFile
import com.intellij.util.ThreeState
import com.intellij.util.io.basicAttributesIfExists
import jetbrains.mps.ide.ThreadUtils
import jetbrains.mps.intellij.integration.MPSRecentProjectsManagerBase
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import java.nio.file.Path

@Suppress("UnstableApiUsage")
object OpenMPSProjectTrustProjectHelper {

    /**
     * Checks whether the project can be trusted. Returns the result of the check.
     * @return True, if the project can be open
     */
    suspend fun checkTrustSuspend(file: Path?): Boolean {
        if (file == null) return false

        // A simplified check inspired by ProjectUtil.openProject() for file existence before we show a trust project dialog
        val fileAttributes = file.basicAttributesIfExists()
        if (fileAttributes == null) {
            withContext(Dispatchers.EDT) {
                Messages.showErrorDialog(IdeBundle.message("error.project.file.does.not.exist", file.toString()), CommonBundle.getErrorTitle())
            }
            return false
        }
        val tp: TrustedPaths = TrustedPaths.getInstance()
        val state = tp.getProjectPathTrustedState(file)
        val locatedProject = TrustedProjectsLocator.locateProject(projectRoot =  file, null)
        if (state != ThreeState.YES && !TrustedProjects.isProjectTrusted(locatedProject)) {
            // need for a dialog to have the user confirm trusting the project
            val title: @NlsContexts.DialogTitle String = IdeBundle.message("untrusted.project.open.dialog.title", file)
            val message: @NlsContexts.DialogMessage String = DynamicBundle(MPSRecentProjectsManagerBase::class.java,"messages.MPSIdeBundle").getMessage(
                "untrusted.mps.project.open.dialog.text",
                ApplicationNamesInfo.getInstance()
                    .fullProductName
            )
            val trustButtonText: @NlsContexts.Button String = IdeBundle.message("untrusted.project.dialog.trust.button")
            val cancelButtonText: @NlsContexts.Button String = IdeBundle.message("untrusted.project.open.dialog.cancel.button")
            val doNotAskOption = file.parent?.let(::createDoNotAskOptionForLocation)
            val choice = if (ThreadUtils.isInEDT()) {
                showDialog(title, message, trustButtonText, cancelButtonText, doNotAskOption)
            } else {
                withContext(Dispatchers.EDT) {
                    showDialog(title, message, trustButtonText, cancelButtonText, doNotAskOption)
                }
            }
            if (choice == trustButtonText) {
                tp.setProjectPathTrusted(file, true)
                NEW_PROJECT_OPEN_OR_IMPORT_CHOICE.log(OpenUntrustedProjectChoice.TRUST_AND_OPEN)
            } else {
                NEW_PROJECT_OPEN_OR_IMPORT_CHOICE.log(OpenUntrustedProjectChoice.CANCEL)
                return false
            }
        }
        return true
    }

    private fun showDialog(
        title: @NlsContexts.DialogTitle String,
        message: @NlsContexts.DialogMessage String,
        trustButtonText: @NlsContexts.Button String,
        cancelButtonText: @NlsContexts.Button String,
        doNotAskOption: DoNotAskOption?
    ) = MessageDialogBuilder.Message(title, message).buttons(trustButtonText, cancelButtonText)
        .defaultButton(trustButtonText)
        .focusedButton(cancelButtonText)
        .doNotAsk(doNotAskOption)
        .asWarning()
        .help(TRUSTED_PROJECTS_HELP_TOPIC)
        .show()

    private fun createDoNotAskOptionForLocation(projectLocation: Path): DoNotAskOption {
        val projectLocationPath = projectLocation.toString()
        return object : DoNotAskOption.Adapter() {
            override fun rememberChoice(isSelected: Boolean, exitCode: Int) {
                if (isSelected && exitCode == Messages.YES) {
                    TrustedProjectsStatistics.TRUST_LOCATION_CHECKBOX_SELECTED.log()

                    // Inlined version of com.intellij.openapi.components.service<TrustedPathsSettings>(),
                    // please replace when JDK version aligns with IDEA JDK version
                    val serviceClass = TrustedPathsSettings::class.java
                    val service = ApplicationManager.getApplication().getService(serviceClass)
                        ?: throw RuntimeException("Cannot find service ${serviceClass.name} (classloader=${serviceClass.classLoader}, client=${ClientId.currentOrNull})")

                    service.addTrustedPath(projectLocationPath)
                }
            }

            override fun getDoNotShowMessage(): String {
                val path = FileUtil.getLocationRelativeToUserHome(projectLocationPath, false)
                return IdeBundle.message("untrusted.project.warning.trust.location.checkbox", path)
            }
        }
    }

    /**
     * Checks whether the project can be trusted. Returns the result of the check.
     * @return True, if the project can be open
     */
    @JvmStatic
    fun checkTrust(virtualFile: VirtualFile): Boolean {
        val file = Path.of(virtualFile.path)
        return checkTrust(file)
    }

    @JvmStatic
    fun checkTrust(file: Path): Boolean {
        return runBlocking {
            checkTrustSuspend(file)
        }
    }
}