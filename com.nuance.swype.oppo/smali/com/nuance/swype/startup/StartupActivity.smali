.class public abstract Lcom/nuance/swype/startup/StartupActivity;
.super Landroid/app/Activity;
.source "StartupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/startup/StartupActivity$DialogCreator;,
        Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;,
        Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;,
        Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;
    }
.end annotation


# static fields
.field private static CONTENT_AREA_ID:I

.field private static DEFAULT_LAYOUT_TEMPLATE:I


# instance fields
.field protected activityOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/startup/StartupActivity$DialogCreator;",
            ">;"
        }
    .end annotation
.end field

.field private lastIntent:Landroid/content/Intent;

.field private launchMode:Ljava/lang/String;

.field protected resultData:Landroid/os/Bundle;

.field private skipRegistrationDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

.field protected startFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/nuance/swype/input/R$layout;->startup_template:I

    sput v0, Lcom/nuance/swype/startup/StartupActivity;->DEFAULT_LAYOUT_TEMPLATE:I

    .line 65
    sget v0, Lcom/nuance/swype/input/R$id;->firstStartContent:I

    sput v0, Lcom/nuance/swype/startup/StartupActivity;->CONTENT_AREA_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->lastIntent:Landroid/content/Intent;

    .line 126
    const-string v0, "standalone"

    iput-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->launchMode:Ljava/lang/String;

    .line 293
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->dialogs:Landroid/util/SparseArray;

    .line 326
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/StartupActivity$1;-><init>(Lcom/nuance/swype/startup/StartupActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->skipRegistrationDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    .line 343
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$2;

    invoke-direct {v0}, Lcom/nuance/swype/startup/StartupActivity$2;-><init>()V

    .line 761
    new-instance v0, Lcom/nuance/swype/startup/StartupActivity$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/startup/StartupActivity$3;-><init>(Lcom/nuance/swype/startup/StartupActivity;)V

    return-void
.end method

.method static synthetic access$000$4a008768(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;
    .locals 5
    .param p0, "x1"    # Lcom/nuance/connect/util/ConnectAction;

    .prologue
    const/4 v4, 0x1

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/connect/util/ConnectAction;->getFilter()Lcom/nuance/connect/util/ActionFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.nuance.connect.DISPLAY_DIALOG"

    invoke-virtual {v1}, Lcom/nuance/connect/util/ActionFilter;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.nuance.connect.TYPE_TERMS_OF_SERVICE"

    invoke-virtual {v1}, Lcom/nuance/connect/util/ActionFilter;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "STATUS"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "BLOCK_DISPLAY"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-object v0
.end method

.method private static getSwypeIMEState(Landroid/content/Context;)Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 808
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 809
    .local v1, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 811
    .local v2, "selectedInputMethods":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 812
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 814
    sget-object v3, Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;->SELECTED:Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;

    .line 819
    :goto_1
    return-object v3

    .line 816
    :cond_0
    sget-object v3, Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;->ENABLED:Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;

    goto :goto_1

    .line 811
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    :cond_2
    sget-object v3, Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;->DISABLED:Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;

    goto :goto_1
.end method

.method public static targetClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getStartupSequenceStatus()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "status":Ljava/lang/String;
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->Eula:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-class v1, Lcom/nuance/swype/startup/EulaGooglePlayActivity;

    .line 195
    :goto_0
    return-object v1

    .line 174
    :cond_0
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->TracePath:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const-class v1, Lcom/nuance/swype/startup/TracePathActivity;

    goto :goto_0

    .line 176
    :cond_1
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->EnableSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/nuance/swype/startup/StartupActivity;->getSwypeIMEState(Landroid/content/Context;)Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;->DISABLED:Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->SelectSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    :cond_2
    const-class v1, Lcom/nuance/swype/startup/EnableSwypeActivity;

    goto :goto_0

    .line 180
    :cond_3
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->SelectSwype:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    const-class v1, Lcom/nuance/swype/startup/SelectSwypeActivity;

    goto :goto_0

    .line 182
    :cond_4
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ChooseLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    const-class v1, Lcom/nuance/swype/startup/ChooseLanguageActivity;

    goto :goto_0

    .line 184
    :cond_5
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->DownloadLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    const-class v1, Lcom/nuance/swype/startup/DownloadLanguageActivity;

    goto :goto_0

    .line 186
    :cond_6
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->BackupAndSync:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    const-class v1, Lcom/nuance/swype/startup/BackupAndSyncActivity;

    goto :goto_0

    .line 188
    :cond_7
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->TermsOfService:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 189
    const-class v1, Lcom/nuance/swype/startup/TermsOfServiceActivity;

    goto :goto_0

    .line 190
    :cond_8
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->ContributeUsageData:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 191
    const-class v1, Lcom/nuance/swype/startup/ContributeUsageDataActivity;

    goto/16 :goto_0

    .line 192
    :cond_9
    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->GettingStarted:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 193
    const-class v1, Lcom/nuance/swype/startup/GettingStartedActivity;

    goto/16 :goto_0

    .line 195
    :cond_a
    const-class v1, Lcom/nuance/swype/startup/EulaGooglePlayActivity;

    goto/16 :goto_0
.end method


# virtual methods
.method protected final doCreateDialog(ILandroid/content/Context;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->dialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->dialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    .line 321
    invoke-interface {v0, p2}, Lcom/nuance/swype/startup/StartupActivity$DialogCreator;->doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final enablePositiveButton()V
    .locals 2

    .prologue
    .line 507
    sget v1, Lcom/nuance/swype/input/R$id;->startup_button_positive:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 508
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 509
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 511
    :cond_0
    return-void
.end method

.method protected final enableUsageOptin()V
    .locals 6

    .prologue
    .line 827
    :try_start_0
    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->acceptOptIn()V

    .line 828
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->setUsageCollectionOptInAlreadyShown()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    iget v4, p0, Lcom/nuance/swype/startup/StartupActivity;->startFlags:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 855
    :cond_0
    :goto_1
    return-void

    .line 829
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0

    .line 838
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 841
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 844
    :cond_2
    invoke-static {p0}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v3

    .line 846
    .local v3, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v3, :cond_0

    .line 847
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 848
    .local v1, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 849
    .local v0, "currentLocale":Ljava/util/Locale;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Initial Locale:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|Lang:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|KeyboardLayoutId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v5

    iget v5, v5, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, "localeSetting":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordInitialLocaleSetting(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected final isSwypeEnabled()Z
    .locals 2

    .prologue
    .line 797
    invoke-static {p0}, Lcom/nuance/swype/startup/StartupActivity;->getSwypeIMEState(Landroid/content/Context;)Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;->DISABLED:Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isSwypeSelected()Z
    .locals 2

    .prologue
    .line 801
    invoke-static {p0}, Lcom/nuance/swype/startup/StartupActivity;->getSwypeIMEState(Landroid/content/Context;)Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;->SELECTED:Lcom/nuance/swype/startup/StartupActivity$SwypeIMEState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final loadTemplateToContentView(II)V
    .locals 1
    .param p1, "innerContentId"    # I
    .param p2, "titleId"    # I

    .prologue
    .line 380
    sget v0, Lcom/nuance/swype/startup/StartupActivity;->DEFAULT_LAYOUT_TEMPLATE:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/swype/startup/StartupActivity;->loadTemplateToContentView(III)V

    .line 381
    return-void
.end method

.method protected final loadTemplateToContentView(III)V
    .locals 1
    .param p1, "layoutTemplateId"    # I
    .param p2, "innerContentId"    # I
    .param p3, "titleId"    # I

    .prologue
    .line 397
    invoke-virtual {p0, p3}, Lcom/nuance/swype/startup/StartupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/swype/startup/StartupActivity;->loadTemplateToContentView(IILjava/lang/String;)V

    .line 398
    return-void
.end method

.method protected final loadTemplateToContentView(IILjava/lang/String;)V
    .locals 8
    .param p1, "layoutTemplateId"    # I
    .param p2, "innerContentId"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    .line 414
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 415
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 416
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/nuance/swype/startup/StartupActivity;->setContentView(Landroid/view/View;)V

    .line 418
    sget v6, Lcom/nuance/swype/input/R$id;->pageDesc:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 419
    .local v3, "pageTitle":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_0
    if-nez p3, :cond_1

    .line 423
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    :cond_1
    sget v6, Lcom/nuance/swype/startup/StartupActivity;->CONTENT_AREA_ID:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 427
    .local v2, "pageContents":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 428
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 429
    invoke-virtual {v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 432
    :cond_2
    sget v6, Lcom/nuance/swype/input/R$id;->startup_button_negative:I

    invoke-virtual {p0, v6}, Lcom/nuance/swype/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 433
    .local v1, "negativeButton":Landroid/widget/Button;
    if-eqz v1, :cond_3

    .line 434
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 436
    :cond_3
    sget v6, Lcom/nuance/swype/input/R$id;->startup_button_positive:I

    invoke-virtual {p0, v6}, Lcom/nuance/swype/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 437
    .local v4, "positiveButton":Landroid/widget/Button;
    if-eqz v4, :cond_4

    .line 438
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 440
    :cond_4
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 253
    packed-switch p1, :pswitch_data_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 255
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/StartupActivity;->setResult(I)V

    .line 257
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->finish()V

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 266
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/nuance/swype/input/R$style;->AppStartupTheme:I

    invoke-super {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nuance/swype/startup/StartupActivity;->setRequestedOrientation(I)V

    .line 206
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "launch_mode"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "mode":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 211
    iput-object v1, p0, Lcom/nuance/swype/startup/StartupActivity;->launchMode:Ljava/lang/String;

    .line 213
    :cond_0
    const-string v2, "activity_order"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->activityOrder:Ljava/util/ArrayList;

    .line 214
    const-string v2, "start_flags"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/startup/StartupActivity;->startFlags:I

    .line 215
    const-string v2, "result_data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->resultData:Landroid/os/Bundle;

    .line 216
    const-string v2, "intent_last"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->lastIntent:Landroid/content/Intent;

    .line 218
    const/16 v2, 0x64

    iget-object v3, p0, Lcom/nuance/swype/startup/StartupActivity;->skipRegistrationDialog:Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/startup/StartupActivity;->registerDialog(ILcom/nuance/swype/startup/StartupActivity$DialogCreator;)V

    .line 219
    return-void

    .line 205
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "mode":Ljava/lang/String;
    :cond_1
    sget v2, Lcom/nuance/swype/input/R$style;->AppStartupTheme_FloatingActivity:I

    invoke-super {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 249
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 225
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 226
    const-string v4, "launch"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "classToLaunch":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 232
    .local v2, "nextActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "launch_mode"

    const-string v4, "startup_sequence"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v3, "activity_order"

    iget-object v4, p0, Lcom/nuance/swype/startup/StartupActivity;->activityOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 235
    const-string v3, "intent_last"

    iget-object v4, p0, Lcom/nuance/swype/startup/StartupActivity;->lastIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/StartupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "nextActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->finish()V

    .line 244
    :cond_0
    return-void

    .line 238
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onSkip$13462e()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method protected final registerDialog(ILcom/nuance/swype/startup/StartupActivity$DialogCreator;)V
    .locals 1
    .param p1, "dialogId"    # I
    .param p2, "creator"    # Lcom/nuance/swype/startup/StartupActivity$DialogCreator;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->dialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 304
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->dialogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    :cond_0
    return-void
.end method

.method protected final setupNegativeButton$411327c6(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "buttonText"    # Ljava/lang/String;
    .param p2, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 456
    sget v1, Lcom/nuance/swype/input/R$id;->startup_button_negative:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 457
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 458
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 460
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 461
    if-eqz p2, :cond_0

    .line 462
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    :cond_0
    return-void
.end method

.method protected final setupPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Z)V
    .locals 2
    .param p1, "buttonText"    # Ljava/lang/String;
    .param p2, "l"    # Landroid/view/View$OnClickListener;
    .param p3, "enabled"    # Z

    .prologue
    .line 492
    sget v1, Lcom/nuance/swype/input/R$id;->startup_button_positive:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 493
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 495
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 496
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 497
    if-eqz p2, :cond_0

    .line 498
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    :cond_0
    return-void
.end method

.method protected showSelectSwypeDialog()V
    .locals 3

    .prologue
    .line 783
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->startup_exit_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->license_exit:I

    new-instance v2, Lcom/nuance/swype/startup/StartupActivity$4;

    invoke-direct {v2, p0}, Lcom/nuance/swype/startup/StartupActivity$4;-><init>(Lcom/nuance/swype/startup/StartupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 794
    return-void
.end method

.method protected final showTosForFeature()Z
    .locals 1

    .prologue
    .line 713
    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 716
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final showUsageOptInScreen()Z
    .locals 1

    .prologue
    .line 726
    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const/4 v0, 0x0

    .line 729
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final startNextActivity()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 521
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->launchMode:Ljava/lang/String;

    const-string v2, "startup_sequence"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->activityOrder:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->activityOrder:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/StartupActivity;->setResult(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->finish()V

    .line 522
    :cond_2
    :goto_0
    return-void

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity;->activityOrder:Ljava/util/ArrayList;

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v2, v5

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    aget-object v7, v0, v1

    :try_start_0
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->valueOf(Ljava/lang/String;)Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->getFinishPredecessors()Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v8

    if-eqz v8, :cond_b

    :goto_2
    move-object v2, v1

    move-object v1, v3

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    array-length v3, v0

    if-ge v4, v3, :cond_8

    :try_start_2
    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "launch_mode"

    const-string v7, "startup_sequence"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "activity_order"

    iget-object v7, p0, Lcom/nuance/swype/startup/StartupActivity;->activityOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v6, "start_flags"

    iget v7, p0, Lcom/nuance/swype/startup/StartupActivity;->startFlags:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "result_data"

    iget-object v7, p0, Lcom/nuance/swype/startup/StartupActivity;->resultData:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget v6, p0, Lcom/nuance/swype/startup/StartupActivity;->startFlags:I

    and-int/lit8 v6, v6, 0x2

    if-ne v6, v9, :cond_4

    const/high16 v6, 0x2000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->valueOf(Ljava/lang/String;)Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->getFinishPredecessors()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/nuance/swype/startup/StartupActivity$StartupActivityEnum;->getFinishPredecessors()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v5}, Lcom/nuance/swype/startup/StartupActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v5

    :goto_4
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    :try_start_3
    invoke-virtual {p0, v5}, Lcom/nuance/swype/startup/StartupActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->finish()V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "launch"

    aget-object v0, v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "launch_mode"

    const-string v2, "startup_sequence"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "activity_order"

    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->activityOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v0, "start_flags"

    iget v2, p0, Lcom/nuance/swype/startup/StartupActivity;->startFlags:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "result_data"

    iget-object v2, p0, Lcom/nuance/swype/startup/StartupActivity;->resultData:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/StartupActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v5}, Lcom/nuance/swype/startup/StartupActivity;->startActivity(Landroid/content/Intent;)V

    iget v0, p0, Lcom/nuance/swype/startup/StartupActivity;->startFlags:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v9, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->finish()V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_8
    array-length v1, v0

    if-lt v4, v1, :cond_a

    iget-object v1, p0, Lcom/nuance/swype/startup/StartupActivity;->lastIntent:Landroid/content/Intent;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/nuance/swype/startup/StartupActivity;->lastIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/startup/StartupActivity;->startActivity(Landroid/content/Intent;)V

    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupActivity;->finish()V

    :cond_a
    move v1, v4

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    goto :goto_4

    :cond_b
    move-object v1, v2

    goto/16 :goto_2
.end method
