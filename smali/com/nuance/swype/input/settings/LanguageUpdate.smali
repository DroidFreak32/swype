.class public abstract Lcom/nuance/swype/input/settings/LanguageUpdate;
.super Ljava/lang/Object;
.source "LanguageUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/LanguageUpdate$9;,
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

.field private static final displayLanguageCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field final activity:Landroid/app/Activity;

.field private adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

.field private callback:Landroid/os/Handler$Callback;

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
    .line 46
    const-class v0, Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/input/settings/LanguageUpdate;->$assertionsDisabled:Z

    .line 97
    const-string v0, "LanguageUpdate"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 100
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$2;

    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate$2;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/settings/LanguageUpdate;->displayLanguageCompare:Ljava/util/Comparator;

    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$1;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->callback:Landroid/os/Handler$Callback;

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->callback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->displayTimeoutDialog:Z

    .line 122
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$3;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    .line 145
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    .line 147
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$4;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/LanguageUpdate$4;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 153
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$5;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/LanguageUpdate$5;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 163
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 164
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-direct {v0, p1, v1, p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;-><init>(Landroid/content/Context;Lcom/nuance/swype/connect/SDKDownloadManager;Lcom/nuance/swype/input/settings/LanguageUpdate;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    .line 165
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->onConnectionChanged(Z)V

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->registerDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateLanguages(Ljava/util/Map;)Z

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/LanguageUpdate;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->cancelDownloadInProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/LanguageUpdate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->displayTimeoutDialog:Z

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/settings/LanguageUpdate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->displayTimeoutDialog:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/LanguageUpdate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->isRunning:Z

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/ConnectedStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/LanguageUpdate;IZZLandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/settings/LanguageUpdate;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private cancelDownloadInProgress(I)V
    .locals 3
    .param p1, "languageId"    # I

    .prologue
    .line 309
    sget-object v0, Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "cancelDownload() "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageCancel(IZ)Z

    .line 311
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateStatus(I)V

    .line 312
    return-void
.end method

.method private showLegalRequirements(IZZLandroid/os/Bundle;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-static {v1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 319
    const/4 v1, 0x1

    .line 321
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
    .line 258
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createRemoveLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 262
    sget-boolean v3, Lcom/nuance/swype/input/settings/LanguageUpdate;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 263
    :cond_0
    const-string v3, "language"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 264
    .local v1, "languageId":I
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 265
    .local v0, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    sget v4, Lcom/nuance/swype/input/R$string;->pref_remove_languages_dialog_desc:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 266
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/nuance/swype/input/R$string;->pref_remove_languages_dialog_title:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->yes_button:I

    new-instance v5, Lcom/nuance/swype/input/settings/LanguageUpdate$6;

    invoke-direct {v5, p0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$6;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$string;->no_button:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method protected abstract doGetListView()Landroid/widget/ListView;
.end method

.method protected abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    return-object v0
.end method

.method protected isLicensed()Z
    .locals 1

    .prologue
    .line 244
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

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 224
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 225
    const-string v2, "result_data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 226
    .local v0, "extra":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 227
    const-string v2, "language"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 228
    .local v1, "languageId":I
    if-eq v1, v3, :cond_0

    .line 229
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->installLanguage(I)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onDestroy()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->unregisterDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 189
    return-void
.end method

.method onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 240
    return-void
.end method

.method onPause()V
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->isRunning:Z

    .line 180
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    return-void
.end method

.method onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 192
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->isRunning:Z

    .line 193
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 195
    sget-object v2, Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "LanguageUpdate connection.isConnected() "

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    sget-object v2, Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "LanguageUpdate connection.isInitialized()"

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isInitialized()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 200
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->doGetListView()Landroid/widget/ListView;

    move-result-object v1

    .line 201
    .local v1, "v":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 202
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    sget v3, Lcom/nuance/swype/input/R$id;->progressbar:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "empty":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 219
    .end local v0    # "empty":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 205
    .end local v1    # "v":Landroid/widget/ListView;
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->doGetListView()Landroid/widget/ListView;

    move-result-object v1

    .line 207
    .restart local v1    # "v":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    sget v3, Lcom/nuance/swype/input/R$id;->data_required:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .restart local v0    # "empty":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 212
    .end local v0    # "empty":Landroid/view/View;
    .end local v1    # "v":Landroid/widget/ListView;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->doGetListView()Landroid/widget/ListView;

    move-result-object v1

    .line 213
    .restart local v1    # "v":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 214
    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    sget v3, Lcom/nuance/swype/input/R$id;->no_languages:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .restart local v0    # "empty":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method onStart()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method onStop()V
    .locals 0

    .prologue
    .line 185
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
    .line 281
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 284
    sget v1, Lcom/nuance/swype/input/R$string;->startup_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 285
    sget v1, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 286
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_close:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/settings/LanguageUpdate$7;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$7;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->startup_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/settings/LanguageUpdate$8;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/LanguageUpdate$8;-><init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
