.class public Lcom/nuance/swype/startup/BackupAndSyncActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "BackupAndSyncActivity.java"


# instance fields
.field private final accountsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final alternateAccountWarningDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

.field private final cnNwDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

.field private connect:Lcom/nuance/swype/connect/Connect;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field private final connectionDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

.field private final invalidEmailDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

.field private registerButton:Landroid/widget/Button;

.field private registerButtonListener:Landroid/view/View$OnClickListener;

.field private settings:Lcom/nuance/swype/input/AppPreferences;

.field private skipButton:Landroid/widget/Button;

.field private skipButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->accountsList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncActivity$3;

    invoke-direct {v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity$3;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->invalidEmailDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    .line 131
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncActivity$4;

    invoke-direct {v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity$4;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->alternateAccountWarningDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    .line 143
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncActivity$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity$5;-><init>(Lcom/nuance/swype/startup/BackupAndSyncActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connectionDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    .line 150
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncActivity$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity$6;-><init>(Lcom/nuance/swype/startup/BackupAndSyncActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->cnNwDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    .line 174
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncActivity$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity$7;-><init>(Lcom/nuance/swype/startup/BackupAndSyncActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->registerButtonListener:Landroid/view/View$OnClickListener;

    .line 203
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncActivity$8;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity$8;-><init>(Lcom/nuance/swype/startup/BackupAndSyncActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->skipButtonListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/BackupAndSyncActivity;)Lcom/nuance/swype/preference/ConnectionAwarePreferences;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/startup/BackupAndSyncActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->register()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setStartupRegistrationShown()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nuance/swype/startup/TermsOfServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/startup/BackupAndSyncActivity;)Lcom/nuance/swype/connect/ConnectedStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/BackupAndSyncActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method private register()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 212
    const-string v1, ""

    .line 213
    .local v1, "email":Ljava/lang/String;
    const/4 v6, 0x0

    .line 215
    .local v6, "shouldCommitTextLater":Z
    sget v9, Lcom/nuance/swype/input/R$id;->emailSelect:I

    invoke-virtual {p0, v9}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/startup/ComboBox;

    .line 216
    .local v4, "s":Lcom/nuance/swype/startup/ComboBox;
    if-eqz v4, :cond_1

    .line 217
    invoke-virtual {v4}, Lcom/nuance/swype/startup/ComboBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 218
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 220
    const/4 v6, 0x1

    .line 223
    :cond_0
    if-nez v6, :cond_1

    .line 224
    invoke-virtual {v4}, Lcom/nuance/swype/startup/ComboBox;->onCommitEditText()V

    .line 225
    invoke-virtual {v4}, Lcom/nuance/swype/startup/ComboBox;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    .line 228
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_1
    iget-object v9, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->isValidEmail(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 229
    invoke-virtual {p0, v11}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->showDialog(I)V

    .line 230
    if-eqz v6, :cond_2

    .line 231
    invoke-virtual {v4}, Lcom/nuance/swype/startup/ComboBox;->onCommitEditText()V

    .line 264
    :cond_2
    :goto_0
    return v8

    .line 235
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->showTosForFeature()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->showUsageOptInScreen()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 236
    :cond_4
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 238
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v5, "sequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 240
    .local v7, "startClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->showTosForFeature()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 241
    const-class v9, Lcom/nuance/swype/startup/TermsOfServiceActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    const-class v7, Lcom/nuance/swype/startup/TermsOfServiceActivity;

    .line 244
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->showUsageOptInScreen()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 245
    const-class v9, Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    if-nez v7, :cond_6

    .line 247
    const-class v7, Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    .line 251
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "launch_mode"

    const-string v10, "startup_sequence"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v9, "activity_order"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 255
    const-string v9, "start_flags"

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v9, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v9, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceAcountEmail(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, v3, v11}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 259
    invoke-virtual {p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->finish()V

    goto :goto_0

    .line 263
    .end local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "sequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "startClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    iget-object v8, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connect:Lcom/nuance/swype/connect/Connect;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 264
    iget-object v8, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v8

    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->isTablet(Landroid/content/Context;)Z

    move-result v9

    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->buildDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v1, v9, v10, v11}, Lcom/nuance/swype/connect/Connect$Accounts;->createAccount(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v8

    goto :goto_0
.end method


# virtual methods
.method final doShowDialog(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->showDialog(I)V

    .line 114
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->register()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setStartupRegistrationShown()V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connect:Lcom/nuance/swype/connect/Connect;

    .line 59
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity$1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 64
    new-instance v0, Lcom/nuance/swype/startup/BackupAndSyncActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity$2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 66
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 67
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->settings:Lcom/nuance/swype/input/AppPreferences;

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->settings:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setStartupTipShown()V

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->settings:Lcom/nuance/swype/input/AppPreferences;

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->GettingStarted:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->invalidEmailDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->registerDialog(ILcom/nuance/swype/startup/StartupActivity$DialogCreator;)V

    .line 73
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->alternateAccountWarningDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->registerDialog(ILcom/nuance/swype/startup/StartupActivity$DialogCreator;)V

    .line 74
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connectionDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->registerDialog(ILcom/nuance/swype/startup/StartupActivity$DialogCreator;)V

    .line 75
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->cnNwDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->registerDialog(ILcom/nuance/swype/startup/StartupActivity$DialogCreator;)V

    .line 76
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template_dtc:I

    sget v1, Lcom/nuance/swype/input/R$layout;->startup_backup_sync:I

    sget v2, Lcom/nuance/swype/input/R$string;->back_and_sync_title:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->loadTemplateToContentView(III)V

    sget v0, Lcom/nuance/swype/input/R$id;->skip:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->skipButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->skipButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->skipButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nuance/swype/input/R$id;->register:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->registerButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->registerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->registerButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nuance/swype/input/R$id;->emailSelect:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/startup/ComboBox;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_signup_header:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/ComboBox;->setAddNewItemText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->accountsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getRegisteredEmailAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->accountsList:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->accountsList:Ljava/util/ArrayList;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v0, Lcom/nuance/swype/input/R$id;->emailSelect:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/startup/ComboBox;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->accountsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/ComboBox;->setItems(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->enablePositiveButton()V

    .line 77
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1, p0}, Lcom/nuance/swype/startup/BackupAndSyncActivity;->doCreateDialog(ILandroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/startup/BackupAndSyncActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 83
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onPause()V

    .line 119
    return-void
.end method
