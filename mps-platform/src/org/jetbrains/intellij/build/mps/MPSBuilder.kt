package org.jetbrains.intellij.build.mps

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.runBlocking
import org.jetbrains.intellij.build.BuildOptions
import org.jetbrains.intellij.build.BuildTasks
import org.jetbrains.intellij.build.OsFamily
import org.jetbrains.intellij.build.ProprietaryBuildTools
import org.jetbrains.intellij.build.dependencies.BuildDependenciesCommunityRoot
import org.jetbrains.intellij.build.fus.FeatureUsageStatisticsProperties
import org.jetbrains.intellij.build.impl.BuildContextImpl
import java.nio.file.Path

class MPSBuilder {

    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            val home = args[0]

            val options = BuildOptions(
                validateImplicitPlatformModule = false,
            )
            options.incrementalCompilation = true
            options.useCompiledClassesFromProjectOutput = false
            options.targetOs = OsFamily.ALL
            options.buildStepsToSkip.add(BuildOptions.MAC_SIGN_STEP)
            options.buildStepsToSkip.add(BuildOptions.MAC_NOTARIZE_STEP)

            val fusp = FeatureUsageStatisticsProperties("FUS", "https://resources.jetbrains.com/storage/fus/config/v4/FUS/")
            val buildTools = ProprietaryBuildTools(ProprietaryBuildTools.DUMMY.signTool,
                    scrambleTool = null, macOsCodesignIdentity = null, artifactsServer = null,
                    featureUsageStatisticsProperties = listOf(fusp), licenseServerHost = null
            )

            runBlocking(Dispatchers.Default) {
                val buildContext = BuildContextImpl.createContext(
                    communityHome = BuildDependenciesCommunityRoot(Path.of("$home/community")),
                    projectHome = Path.of(home),
                    productProperties = MPSProperties(),
                    proprietaryBuildTools = buildTools,
                    options = options
                )
    
                val buildTasks = BuildTasks.create(buildContext)
                buildTasks.compileProjectAndTests(
                    listOf(
                        "intellij.platform.jps.build",
                        "intellij.platform.jps.build.tests",
                        "intellij.platform.jps.model.tests",
                        "intellij.platform.jps.model.serialization.tests"
                    )
                )
    
                buildTasks.buildDistributions()

                val jpsArtifactDir = "$buildContext.paths.distAll/lib/jps"
                val jpsArtifactPath = Path.of(jpsArtifactDir)
                buildContext.notifyArtifactBuilt(jpsArtifactPath)
            }
        }
    }
}
