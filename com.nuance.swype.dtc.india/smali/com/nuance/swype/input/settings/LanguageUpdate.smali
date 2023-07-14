.class public abstract Lcom/nuance/swype/input/settings/LanguageUpdate;
.super Ljava/lang/Object;
.source "LanguageUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LANGUAGE_KEY:Ljava/lang/String; = "language"

.field private static final MESSAGE_DATASET_INVALIDATED:I = 0x1

.field private static final MESSAGE_LIST_UPDATED:I = 0x0

.field private static final MESSAGE_TIMEOUT_LIST:I = 0x2

.field private static final MESSAGE_UPDATE_STATUS:I = 0x4

.field private static final REQUEST_CODE_LANGUAGE_INSTALL:I = 0x1

.field private static final TIMEOUT_DELAY:I = 0x7530

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field final activity:Landroid/app/Activity;

.field private adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

.field private callback:Landroid/os/Handler$Callback;

.field private connectDialog:Landroid/app/Dialog;

.field private final connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private final connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

.field private displayTimeoutDialog:Z

.field private dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

.field private isRunning:Z

.field private weakHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/input/settings/LanguageUpdate;->$assertionsDisabled:Z

    .line 103
    const-string/jumbo v0, "LanguageUpdate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$1;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->callback:Landroid/os/Handler$Callback;

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->callback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->displayTimeoutDialog:Z

    .line 117
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$2;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .line 158
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    .line 160
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$3;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/LanguageUpdate$3;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 166
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/LanguageUpdate$4;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 198
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 199
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-direct {v0, p1, v1, p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/input/settings/LanguageUpdate;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    .line 200
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->onConnectionChanged()V

    .line 202
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->registerDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 206
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateLanguages(Ljava/util/Map;)Z

    .line 209
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->DOWNLOAD_LANGUAGE:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/LanguageUpdate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->cancelDownloadInProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/LanguageUpdate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->displayTimeoutDialog:Z

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/settings/LanguageUpdate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->displayTimeoutDialog:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/LanguageUpdate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->isRunning:Z

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nuance/swype/input/settings/LanguageUpdate;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/LanguageUpdate;IZZLandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/settings/LanguageUpdate;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private cancelDownloadInProgress(I)V
    .locals 5
    .param p1, "languageId"    # I

    .prologue
    const/4 v4, 0x1

    .line 366
    sget-object v0, Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "cancelDownload() "

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0, p1, v4}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageCancel(IZ)Z

    .line 368
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateStatus(I)V

    .line 369
    return-void
.end method

.method private showLegalRequirements(IZZLandroid/os/Bundle;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-static {v1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 374
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 376
    const/4 v1, 0x1

    .line 378
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createConnectDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createConnectDialogForLanguage()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->getLanguageDownloadFailedDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createRemoveLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 315
    sget-boolean v4, Lcom/nuance/swype/input/settings/LanguageUpdate;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 316
    :cond_0
    const-string/jumbo v4, "language"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 317
    .local v1, "languageId":I
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v4, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 318
    .local v0, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v0, :cond_1

    .line 333
    :goto_0
    return-object v3

    .line 322
    :cond_1
    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    sget v5, Lcom/nuance/swype/input/R$string;->pref_remove_languages_dialog_desc:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 323
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/nuance/swype/input/R$string;->pref_remove_languages_dialog_title:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 326
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->yes_button:I

    new-instance v6, Lcom/nuance/swype/input/settings/LanguageUpdate$5;

    invoke-direct {v6, p0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$5;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;I)V

    .line 327
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->no_button:I

    .line 332
    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 333
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0
.end method

.method protected abstract doGetListView()Landroid/widget/ListView;
.end method

.method protected abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    return-object v0
.end method

.method public getLanguageDownloadFailedDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x1030133

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 308
    sget v1, Lcom/nuance/swype/input/R$string;->error_connection_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 309
    sget v1, Lcom/nuance/swype/input/R$string;->error_language_download_failure:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 310
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    return-object v0
.end method

.method protected isLicensed()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/high16 v3, -0x80000000

    .line 259
    packed-switch p1, :pswitch_data_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 261
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 262
    const-string/jumbo v2, "result_data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 263
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v2, "language"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 265
    .local v1, "languageId":I
    if-eq v1, v3, :cond_0

    .line 266
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->installLanguage(I)V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onDestroy()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->unregisterDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 227
    return-void
.end method

.method onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 277
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 278
    return-void
.end method

.method onPause()V
    .locals 2

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->isRunning:Z

    .line 218
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    return-void
.end method

.method onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 230
    iput-boolean v6, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->isRunning:Z

    .line 232
    sget-object v2, Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "LanguageUpdate connection.isConnected() "

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 233
    sget-object v2, Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "LanguageUpdate connection.isInitialized()"

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isInitialized()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 234
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 237
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->doGetListView()Landroid/widget/ListView;

    move-result-object v1

    .line 238
    .local v1, "v":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 239
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    sget v3, Lcom/nuance/swype/input/R$id;->progressbar:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, "empty":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 256
    .end local v0    # "empty":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 242
    .end local v1    # "v":Landroid/widget/ListView;
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->doGetListView()Landroid/widget/ListView;

    move-result-object v1

    .line 244
    .restart local v1    # "v":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 245
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    sget v3, Lcom/nuance/swype/input/R$id;->data_required:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .restart local v0    # "empty":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 249
    .end local v0    # "empty":Landroid/view/View;
    .end local v1    # "v":Landroid/widget/ListView;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->doGetListView()Landroid/widget/ListView;

    move-result-object v1

    .line 250
    .restart local v1    # "v":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 251
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    sget v3, Lcom/nuance/swype/input/R$id;->no_languages:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 252
    .restart local v0    # "empty":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method onStart()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 214
    return-void
.end method

.method onStop()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 223
    return-void
.end method

.method protected abstract showConnectDialog()V
.end method

.method protected abstract showRemoveLanguageDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showTimeoutDialog()V
.end method

.method public timeoutDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 341
    sget v1, Lcom/nuance/swype/input/R$string;->startup_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 342
    sget v1, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 343
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/settings/LanguageUpdate$6;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$6;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/settings/LanguageUpdate$7;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$7;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 362
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
