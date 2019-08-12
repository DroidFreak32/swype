.class public Lcom/nuance/swype/startup/AccountRegisterActivity;
.super Lcom/nuance/swype/startup/StartupActivity;
.source "AccountRegisterActivity.java"


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

.field private final cnNwDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

.field private connect:Lcom/nuance/swype/connect/Connect;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field private final connectionDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

.field private final invalidEmailDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

.field private registerButtonListener:Landroid/view/View$OnClickListener;

.field private skipButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->accountsList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Lcom/nuance/swype/startup/AccountRegisterActivity$3;

    invoke-direct {v0}, Lcom/nuance/swype/startup/AccountRegisterActivity$3;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->invalidEmailDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    .line 118
    new-instance v0, Lcom/nuance/swype/startup/AccountRegisterActivity$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/AccountRegisterActivity$4;-><init>(Lcom/nuance/swype/startup/AccountRegisterActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connectionDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    .line 125
    new-instance v0, Lcom/nuance/swype/startup/AccountRegisterActivity$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/AccountRegisterActivity$5;-><init>(Lcom/nuance/swype/startup/AccountRegisterActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->cnNwDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    .line 149
    new-instance v0, Lcom/nuance/swype/startup/AccountRegisterActivity$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/AccountRegisterActivity$6;-><init>(Lcom/nuance/swype/startup/AccountRegisterActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->registerButtonListener:Landroid/view/View$OnClickListener;

    .line 177
    new-instance v0, Lcom/nuance/swype/startup/AccountRegisterActivity$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/AccountRegisterActivity$7;-><init>(Lcom/nuance/swype/startup/AccountRegisterActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->skipButtonListener:Landroid/view/View$OnClickListener;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/startup/AccountRegisterActivity;)Lcom/nuance/swype/preference/ConnectionAwarePreferences;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/AccountRegisterActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/startup/AccountRegisterActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/AccountRegisterActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->register()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setStartupRegistrationShown()V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->startNextActivity()V

    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/startup/AccountRegisterActivity;)Lcom/nuance/swype/connect/ConnectedStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/startup/AccountRegisterActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method private register()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 185
    const-string v1, ""

    .line 186
    .local v1, "email":Ljava/lang/String;
    const/4 v6, 0x0

    .line 188
    .local v6, "shouldCommitTextLater":Z
    sget v9, Lcom/nuance/swype/input/R$id;->emailSelect:I

    invoke-virtual {p0, v9}, Lcom/nuance/swype/startup/AccountRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/startup/ComboBox;

    .line 189
    .local v4, "s":Lcom/nuance/swype/startup/ComboBox;
    if-eqz v4, :cond_1

    .line 190
    invoke-virtual {v4}, Lcom/nuance/swype/startup/ComboBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 191
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 193
    const/4 v6, 0x1

    .line 196
    :cond_0
    if-nez v6, :cond_1

    .line 197
    invoke-virtual {v4}, Lcom/nuance/swype/startup/ComboBox;->onCommitEditText()V

    .line 198
    invoke-virtual {v4}, Lcom/nuance/swype/startup/ComboBox;->getSelectedItem()Ljava/lang/String;

    move-result-object v1

    .line 201
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_1
    iget-object v9, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->isValidEmail(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 202
    invoke-virtual {p0, v11}, Lcom/nuance/swype/startup/AccountRegisterActivity;->showDialog(I)V

    .line 203
    if-eqz v6, :cond_2

    .line 204
    invoke-virtual {v4}, Lcom/nuance/swype/startup/ComboBox;->onCommitEditText()V

    .line 235
    :cond_2
    :goto_0
    return v8

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->showTosForFeature()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->showUsageOptInScreen()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 209
    :cond_4
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 211
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v5, "sequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 213
    .local v7, "startClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->showTosForFeature()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 214
    const-class v9, Lcom/nuance/swype/startup/ConnectTOSActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const-class v7, Lcom/nuance/swype/startup/ConnectTOSActivity;

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->showUsageOptInScreen()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 218
    const-class v9, Lcom/nuance/swype/startup/UsageOptInActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    if-nez v7, :cond_6

    .line 220
    const-class v7, Lcom/nuance/swype/startup/UsageOptInActivity;

    .line 224
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "launch_mode"

    const-string v10, "startup_sequence"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v9, "activity_order"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 228
    const-string v9, "start_flags"

    const/4 v10, 0x7

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v3, v11}, Lcom/nuance/swype/startup/AccountRegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 235
    .end local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "sequence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "startClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    iget-object v8, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connect:Lcom/nuance/swype/connect/Connect;

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
    .line 105
    invoke-virtual {p0, p1}, Lcom/nuance/swype/startup/AccountRegisterActivity;->showDialog(I)V

    .line 106
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/swype/startup/StartupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connect:Lcom/nuance/swype/connect/Connect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 83
    invoke-direct {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->register()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->setStartupRegistrationShown()V

    .line 85
    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->startNextActivity()V

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->startNextActivity()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/nuance/swype/startup/StartupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connect:Lcom/nuance/swype/connect/Connect;

    .line 54
    new-instance v0, Lcom/nuance/swype/startup/AccountRegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/AccountRegisterActivity$1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 59
    new-instance v0, Lcom/nuance/swype/startup/AccountRegisterActivity$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/AccountRegisterActivity$2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 63
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->invalidEmailDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/startup/AccountRegisterActivity;->registerDialog(ILcom/nuance/swype/startup/StartupActivity$DialogCreator;)V

    .line 64
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connectionDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/startup/AccountRegisterActivity;->registerDialog(ILcom/nuance/swype/startup/StartupActivity$DialogCreator;)V

    .line 65
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->cnNwDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/startup/AccountRegisterActivity;->registerDialog(ILcom/nuance/swype/startup/StartupActivity$DialogCreator;)V

    .line 67
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_account_choose_email:I

    sget v2, Lcom/nuance/swype/input/R$string;->back_and_sync_title:I

    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/startup/AccountRegisterActivity;->loadTemplateToContentView(II)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/nuance/swype/input/R$string;->skip_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->skipButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v2}, Lcom/nuance/swype/startup/AccountRegisterActivity;->setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/nuance/swype/input/R$string;->register_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->registerButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v2, v1}, Lcom/nuance/swype/startup/AccountRegisterActivity;->setupPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V

    sget v0, Lcom/nuance/swype/input/R$id;->emailSelect:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/startup/ComboBox;

    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->startup_signup_header:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/startup/ComboBox;->setAddNewItemText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->accountsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getRegisteredEmailAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    iget-object v4, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->accountsList:Ljava/util/ArrayList;

    iget-object v5, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->accountsList:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v0, Lcom/nuance/swype/input/R$id;->emailSelect:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/startup/ComboBox;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->accountsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/startup/ComboBox;->setItems(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->enablePositiveButton()V

    .line 68
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 100
    invoke-virtual {p0, p1, p0}, Lcom/nuance/swype/startup/AccountRegisterActivity;->doCreateDialog(ILandroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/startup/AccountRegisterActivity;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 73
    invoke-super {p0}, Lcom/nuance/swype/startup/StartupActivity;->onDestroy()V

    .line 74
    return-void
.end method
