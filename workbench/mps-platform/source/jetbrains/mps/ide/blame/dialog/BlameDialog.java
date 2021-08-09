/*
 * Copyright 2003-2011 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.ide.blame.dialog;

import com.intellij.credentialStore.CredentialAttributes;
import com.intellij.credentialStore.CredentialAttributesKt;
import com.intellij.credentialStore.CredentialPromptDialog;
import com.intellij.diagnostic.DiagnosticBundle;
import com.intellij.ide.BrowserUtil;
import com.intellij.ide.passwordSafe.PasswordSafe;
import com.intellij.ide.plugins.IdeaPluginDescriptor;
import com.intellij.ide.ui.UISettings;
import com.intellij.openapi.application.ApplicationInfo;
import com.intellij.openapi.application.ex.ApplicationInfoEx;
import com.intellij.openapi.extensions.PluginDescriptor;
import com.intellij.openapi.progress.ProgressIndicator;
import com.intellij.openapi.progress.ProgressManager;
import com.intellij.openapi.progress.Task.Modal;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.ui.DialogWrapper;
import com.intellij.openapi.ui.Messages;
import com.intellij.openapi.util.DimensionService;
import com.intellij.ui.BrowserHyperlinkListener;
import com.intellij.ui.HideableDecorator;
import com.intellij.ui.HyperlinkLabel;
import com.intellij.ui.IdeBorderFactory;
import com.intellij.ui.components.JBCheckBox;
import com.intellij.ui.components.JBLabel;
import com.intellij.ui.components.JBScrollPane;
import com.intellij.ui.components.JBTextField;
import com.intellij.uiDesigner.core.GridConstraints;
import com.intellij.uiDesigner.core.GridLayoutManager;
import com.intellij.uiDesigner.core.Spacer;
import com.intellij.util.ui.JBUI;
import com.intellij.util.ui.UIUtil;
import jetbrains.mps.ide.IdeBundle;
import jetbrains.mps.ide.blame.api.Reporter;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.annotations.ApiStatus.ScheduledForRemoval;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.JCheckBox;
import javax.swing.JComponent;
import javax.swing.JEditorPane;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.event.HyperlinkEvent;
import java.awt.BorderLayout;
import java.awt.Dialog;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Frame;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class BlameDialog extends DialogWrapper {
  private static final String CAPTION = "Submit System Exception to Developers";

  private JPanel myPanel;
  private JTextField myTitleField;
  private JTextArea myDescriptionField;
  private JCheckBox myDoNotIncludeAppInfo;
  private JPanel myExceptionContainer;
  private JTextArea myException;
  private JCheckBox mySkipTrace;
  private JCheckBox myHiddenCheckBox;
  private HyperlinkLabel myCredentialsLabel;
  private JBCheckBox myShareDataAgreementCheck;
  private JEditorPane myShareDataAgreement;

  private boolean myIsCancelled = true;
  private Project myProject;

  private String myTitle = "";
  private String myDescription = "";
  private List<Throwable> myThrowableList = new ArrayList<>();
  private List<File> myFilesToAttach = new ArrayList<>();
  private String mySubsystem = null;
  private PluginDescriptor myPluginDescriptor;
  private String myToken = null;

  public BlameDialog(Project project, Dialog dialog) {
    super(dialog, true);
    myProject = project;
  }

  public BlameDialog(Project project, Frame mainFrame) {
    super(mainFrame, true);
    myProject = project;
  }

  public void addExceptions(Collection<Throwable> throwables) {
    myThrowableList.addAll(throwables);
  }

  public void setIssueTitle(String message) {
    myTitle = message;
  }

  public void setDescription(String message) {
    myDescription = message;
  }

  public void addFile(@NotNull File file) {
    if (file.exists()) {
      myFilesToAttach.add(file);
    }
  }

  public void setIssueHidden(boolean hidden) {
    myHiddenCheckBox.setSelected(hidden);
  }

  public void setSubsystem(String subsystem) {
    mySubsystem = subsystem;
  }

  public void setPluginDescriptor(PluginDescriptor pluginDescriptor) {
    myPluginDescriptor = pluginDescriptor;
  }

  @Override
  protected JComponent createCenterPanel() {
    myPanel = new JPanel(new GridLayoutManager(9, 1, JBUI.emptyInsets(), -1, -1));

    myPanel.add(new JBLabel("Title:"), getConstraints(myPanel.getComponentCount()));
    myTitleField = new JBTextField();
    myPanel.add(myTitleField, getConstraints(myPanel.getComponentCount()));

    myPanel.add(new JBLabel(DiagnosticBundle.message("error.dialog.comment.prompt")), getConstraints(myPanel.getComponentCount()));
    myDescriptionField = new JTextArea();
    myDescriptionField.setEditable(true);
    myDescriptionField.setRows(2);
    JBScrollPane descriptionScrollPane = new JBScrollPane();
    descriptionScrollPane.setViewportView(myDescriptionField);
    final GridConstraints descriptionConstraints = getConstraints(myPanel.getComponentCount());
    descriptionConstraints.setAnchor(GridConstraints.ANCHOR_CENTER);
    descriptionConstraints.setFill(GridConstraints.FILL_BOTH);
    descriptionConstraints.setVSizePolicy(GridConstraints.SIZEPOLICY_CAN_SHRINK | GridConstraints.SIZEPOLICY_CAN_GROW | GridConstraints.SIZEPOLICY_WANT_GROW);
    myPanel.add(descriptionScrollPane, descriptionConstraints);


    final JPanel appInfoPanel = new JPanel(new GridLayoutManager(2, 1));
    appInfoPanel.setBorder(IdeBorderFactory.createEmptyBorder(JBUI.emptyInsets()));
    final JBLabel appInfo = new JBLabel(AppInfo.getApplicationInfo(AppInfo.Format.HTML, myPluginDescriptor));
    appInfoPanel.add(appInfo, getConstraints(appInfoPanel.getComponentCount()));
    myDoNotIncludeAppInfo = new JBCheckBox("Do not include application info to issue description", false);
    myDoNotIncludeAppInfo.addChangeListener(changeEvent -> appInfo.setEnabled(!myDoNotIncludeAppInfo.isSelected()));
    appInfoPanel.add(myDoNotIncludeAppInfo, getConstraints(appInfoPanel.getComponentCount()));

    final JPanel appInfoHolder = new JPanel(new BorderLayout());
    HideableDecorator decorator = new HideableDecorator(appInfoHolder, "Application information", true);
    decorator.setContentComponent(appInfoPanel);
    decorator.setOn(false);
    myPanel.add(appInfoHolder, getConstraints(myPanel.getComponentCount()));

    myExceptionContainer = new JPanel(new GridLayoutManager(3, 1, JBUI.emptyInsets(), -1, -1));

    myExceptionContainer.add(new JBLabel("Exception:"), getConstraints(myExceptionContainer.getComponentCount()));
    myException = new JTextArea();
    myException.setEditable(false);
    final JBScrollPane exceptionScrollPane = new JBScrollPane();
    exceptionScrollPane.setViewportView(myException);
    myExceptionContainer.add(exceptionScrollPane, getConstraints(myExceptionContainer.getComponentCount()));
    mySkipTrace = new JBCheckBox("Exclude exception trace from description", false);
    mySkipTrace.addChangeListener(changeEvent -> myException.setEnabled(!mySkipTrace.isSelected()));
    myExceptionContainer.add(mySkipTrace, getConstraints(myExceptionContainer.getComponentCount()));

    myPanel.add(myExceptionContainer, getConstraints(myPanel.getComponentCount()));

    myHiddenCheckBox = new JBCheckBox("Visible only to MPS Team");
    myPanel.add(myHiddenCheckBox, getConstraints(myPanel.getComponentCount()));
    myHiddenCheckBox.setToolTipText("Select this if you want this bug report will be visible only to you and MPS Team");

    myCredentialsLabel = new HyperlinkLabel();
    myCredentialsLabel.addHyperlinkListener(e -> {
      if (e.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {
        CredentialAttributes credentialAttributes = getCredentialAttributes();
        myToken = CredentialPromptDialog.askPassword(myProject, "Enter Access Token for YouTrack", "Permanent token", credentialAttributes, true);
        updateCredentialsPane();
      }
    });
    final GridConstraints credentialsConstraints = getConstraints(myPanel.getComponentCount());
    credentialsConstraints.setAnchor(GridConstraints.ANCHOR_EAST);
    credentialsConstraints.setFill(GridConstraints.FILL_NONE);
    myPanel.add(myCredentialsLabel, credentialsConstraints);

    JPanel agreementPanel = new JPanel(new GridLayoutManager(1, 3));

    myShareDataAgreementCheck = new JBCheckBox();
    myShareDataAgreementCheck.addChangeListener(changeEvent -> this.setOKActionEnabled(myShareDataAgreementCheck.isSelected()));
    myShareDataAgreementCheck.setSelected(false);
    GridConstraints constraints = getConstraints(0);
    constraints.setAnchor(GridConstraints.ANCHOR_NORTHWEST);
    constraints.setFill(GridConstraints.FILL_NONE);
    agreementPanel.add(myShareDataAgreementCheck, constraints);

    myShareDataAgreement = new JEditorPane(UIUtil.HTML_MIME, "");
    updateDataUsageAgreementText();
    myShareDataAgreement.setEditable(false);
    myShareDataAgreement.setBackground(UIUtil.getPanelBackground());
    myShareDataAgreement.addHyperlinkListener(new BrowserHyperlinkListener());
    myShareDataAgreement.setBorder(JBUI.Borders.empty());
    myShareDataAgreement.setFocusable(false);
    constraints = getConstraints(0);
    constraints.setColumn(1);
    constraints.setAnchor(GridConstraints.ANCHOR_NORTHWEST);
    agreementPanel.add(myShareDataAgreement, constraints);

    constraints = getConstraints(0);
    constraints.setColumn(2);
    constraints.setHSizePolicy(GridConstraints.SIZEPOLICY_CAN_GROW);
    agreementPanel.add(new Spacer(), constraints);

    myPanel.add(agreementPanel, getConstraints(myPanel.getComponentCount()));

    return myPanel;
  }

  private void updateDataUsageAgreementText() {
    final Font font = UISettings.getInstance().getFontFace() != null
                      ? new Font(UISettings.getInstance().getFontFace(), Font.PLAIN, UISettings.getInstance().getFontSize()) : UIUtil.getLabelFont();
    final String signedInAgreement =
        String.format(IdeBundle.message("blame.dialog.agreement"), font.getFamily());
    final String anonymousAgreement =
        String.format(IdeBundle.message("blame.dialog.agreement.anonymous"), font.getFamily());

    myShareDataAgreement.setText(myToken != null ? signedInAgreement : anonymousAgreement);
  }

  private GridConstraints getConstraints(int row) {
    return new GridConstraints(row, 0, 1, 1,
                               GridConstraints.ANCHOR_WEST,
                               GridConstraints.FILL_HORIZONTAL,
                               GridConstraints.SIZEPOLICY_CAN_SHRINK,
                               GridConstraints.SIZEPOLICY_CAN_SHRINK,
                               null, null, null);
  }

  @Nullable
  @Override
  public JComponent getPreferredFocusedComponent() {
    return myDescriptionField;
  }

  private CredentialAttributes getCredentialAttributes() {
    return new CredentialAttributes(CredentialAttributesKt.generateServiceName("MPS token for YouTrack", Reporter.YOUTRACK_BASE_URL));
  }

  private void updateCredentialsPane() {
    if (myToken != null) {
      myCredentialsLabel.setHtmlText(IdeBundle.message("blame.dialog.submit.error.as"));
    } else {
      myCredentialsLabel.setHtmlText(IdeBundle.message("blame.dialog.submit.error.anonymously"));
    }
    updateDataUsageAgreementText();
  }

  /**
   * This method initialize UI components and update them with data from setters.<br/>
   * Must be called before {@link DialogWrapper#show()} method.
   */
  public void initDialog() {
    setTitle(CAPTION);
    setModal(true);
    init();

    myTitleField.setText(myTitle);
    myDescriptionField.setText(myDescription);

    myExceptionContainer.setVisible(!myThrowableList.isEmpty());
    if (!myThrowableList.isEmpty()) {
      StringBuilder builder = new StringBuilder();
      for (Throwable throwable : myThrowableList) {
        builder.append(ex2str(throwable)).append("\n\n");
      }
      myException.setText(builder.toString());
    }

    myToken = PasswordSafe.getInstance().getPassword(getCredentialAttributes());
    updateCredentialsPane();

    Dimension size = DimensionService.getInstance().getSize(getDimensionServiceKey());
    if (size == null) {
      myPanel.setPreferredSize(new Dimension(750, 550));
    }

    setOKButtonText("Send");
    setOKActionEnabled(false);
  }

  @Override
  @NotNull
  protected String getDimensionServiceKey() {
    return getClass().getName();
  }

  private String ex2str(Throwable e) {
    if (e == null) {
      return "";
    }

    StringWriter sw = new StringWriter();
    PrintWriter pw = new PrintWriter(sw);
    e.printStackTrace(pw);

    return (e.getMessage() == null ? "" : e.getMessage() + "\n") + sw.toString();
  }

  private void addInfoLine(StringBuilder builder, Object text, String formatStart, String formatEnd, String endLine) {
    addInfoLine(builder, null, text, formatStart, formatEnd, endLine);
  }

  private void addInfoLine(StringBuilder builder, @Nullable String name, Object text, String formatStart, String formatEnd, String endLine) {
    if (name != null) {
      builder.append(name).append(": ");
    }
    builder.append(formatStart).append(text).append(formatEnd).append(endLine);
  }

  private static class AppInfo {
    private final StringBuilder myBuilder = new StringBuilder(1000);
    private final ApplicationInfo myApplicationInfo = ApplicationInfo.getInstance();
    private final PluginDescriptor myPluginDescriptor;
    private final Format myFormat;

    private AppInfo(Format format, PluginDescriptor pluginDescriptor) {
      myFormat = format;
      myPluginDescriptor = pluginDescriptor;
    }

    static String getApplicationInfo(Format format, PluginDescriptor pluginDescriptor) {
      return new AppInfo(format, pluginDescriptor).getInfo();
    }

    private String getInfo() {
      if (myFormat == Format.HTML) {
        myBuilder.append("<html><body>");
      }

      addHeaderLine("Build info");
      if (myApplicationInfo instanceof ApplicationInfoEx) {
        addInfoLine("Application name", ((ApplicationInfoEx) myApplicationInfo).getFullApplicationName());
      }
      addInfoLine("Build number", myApplicationInfo.getBuild().asString());
      addInfoLine("Version", myApplicationInfo.getFullVersion());
      myBuilder.append(myFormat.myEndLine);

      if (myPluginDescriptor != null) {
        addHeaderLine("Plugin info");
        addInfoLine("Plugin id", myPluginDescriptor.getPluginId());
        if (myPluginDescriptor instanceof IdeaPluginDescriptor) {
          final IdeaPluginDescriptor pluginDescriptor = (IdeaPluginDescriptor) myPluginDescriptor;
          addInfoLine("Name", pluginDescriptor.getName());
          addInfoLine("Version", pluginDescriptor.getVersion());
          addInfoLine("Vendor", pluginDescriptor.getVendor());
          addInfoLine("Category", pluginDescriptor.getCategory());
          addInfoLine("Is bundled", pluginDescriptor.isBundled());
          addInfoLine("Is enabled", pluginDescriptor.isEnabled());
        }
      }

      if (myFormat == Format.HTML) {
        myBuilder.append("</body></html>");
      }

      return myBuilder.toString();
    }

    private void addHeaderLine(String text) {
      myBuilder.append(myFormat.myBoldStart).append(text).append(myFormat.myBoldEnd).append(myFormat.myEndLine);
    }

    private void addInfoLine(String name, Object text) {
      myBuilder.append(name).append(": ").append(myFormat.myItalicStart).append(text).append(myFormat.myItalicEnd).append(myFormat.myEndLine);
    }

    private static final String END_LINE_HTML = "<br>";
    private static final String END_LINE_MARKDOWN = "\n";

    private static final String ITALIC_START_HTML = "<em>";
    private static final String ITALIC_END_HTML = "</em>";
    private static final String ITALIC_MARKDOWN = "*";
    private static final String ITALIC_YOUTRACK_WIKI = "''";

    private static final String BOLD_START_HTML = "<strong>";
    private static final String BOLD_END_HTML = "</strong>";
    private static final String BOLD_MARKDOWN = "**";
    private static final String BOLD_YOUTRACK_WIKI = "'''";

    private enum Format {
      HTML(END_LINE_HTML, BOLD_START_HTML, BOLD_END_HTML, ITALIC_START_HTML, ITALIC_END_HTML),
      MARK_DOWN(END_LINE_MARKDOWN, BOLD_MARKDOWN, BOLD_MARKDOWN, ITALIC_MARKDOWN, ITALIC_MARKDOWN),
      @Deprecated(since = "2021.1.3", forRemoval = true)
      YOUTRACK_WIKI(END_LINE_MARKDOWN, BOLD_YOUTRACK_WIKI, BOLD_YOUTRACK_WIKI, ITALIC_YOUTRACK_WIKI, ITALIC_YOUTRACK_WIKI);

      final String myEndLine;
      final String myBoldStart;
      final String myBoldEnd;
      final String myItalicStart;
      final String myItalicEnd;

      Format(String endLine, String boldStart, String boldEnd, String italicStart, String italicEnd) {
        myEndLine = endLine;
        myBoldStart = boldStart;
        myBoldEnd = boldEnd;
        myItalicStart = italicStart;
        myItalicEnd = italicEnd;
      }
    }
  }

  protected JComponent getMainComponent() {
    return myPanel;
  }

  public boolean isCancelled() {
    return myIsCancelled;
  }

  @Override
  protected void doOKAction() {
    StringBuilder description = new StringBuilder(myDescriptionField.getText().length()
                                                  + (myDoNotIncludeAppInfo.isSelected() ? 0 : 1000) // approximate application info length
                                                  + (mySkipTrace.isSelected() ? 50 : 5000 * myThrowableList.size())  // approximate stacktrace info length
    );

    if (myDescriptionField.getText().trim().length() != 0) {
      description.append(myDescriptionField.getText());
      description.append("\n\n");
    }

    if (!myDoNotIncludeAppInfo.isSelected()) {
      description.append(AppInfo.getApplicationInfo(AppInfo.Format.MARK_DOWN, myPluginDescriptor));
    }

    if (!myThrowableList.isEmpty()) {
      if (!mySkipTrace.isSelected()) {
        for (Throwable ex : myThrowableList) {
          description.append("\n\n");
          description.append("```stacktrace\n");
          description.append(ex2str(ex));
          description.append("\n```");
        }
      } else {
        description.append("Exception trace was hidden by submitter\n");
      }
    }

    final String token = myToken;
    final String summary = myTitleField.getText();
    final String descript = description.toString();
    final boolean hidden = myHiddenCheckBox.isSelected();
    final String affectedVersion = ApplicationInfo.getInstance().getFullVersion();
    final String subsystem = mySubsystem;
    final File[] files = myFilesToAttach.toArray(new File[0]);

    // result[0] - id of new issue or null if not successful
    // result[1] - error message if not successful
    final String[] result = new String[2];

    ProgressManager.getInstance().run(new Modal(myProject, "Connection in progress. Please wait.", false) {
      @Override
      public void run(@NotNull ProgressIndicator indicator) {
        try {
          Reporter reporter = new Reporter(token);
          result[0] = reporter.postIssue(summary, descript, affectedVersion, hidden, null, subsystem, files);
        } catch (Throwable e) {
          result[0] = null;
          result[1] = e.toString();
        }
      }
    });

    if (result[0] == null) {
      final String errorMessage = String.format("Error occurred while sending:%n%n%s", result[1]);
      Messages.showErrorDialog(BlameDialog.this.getOwner(), errorMessage, "Issue Submission Failed");
      return;
    }

    openIssueInBrowser(result[0]);

    myIsCancelled = false;
    close(DialogWrapper.OK_EXIT_CODE);
  }

  private void openIssueInBrowser(String issueReadableId) {
      BrowserUtil.browse(Reporter.getIssueUrl(issueReadableId));
  }

  @Override
  public void doCancelAction() {
    myIsCancelled = true;
    close(DialogWrapper.CANCEL_EXIT_CODE);
  }
}
