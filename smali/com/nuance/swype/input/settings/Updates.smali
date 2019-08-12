.class public abstract Lcom/nuance/swype/input/settings/Updates;
.super Ljava/lang/Object;
.source "Updates.java"


# static fields
.field protected static final REQUEST_CODE_UPGRADE_INSTALL:I = 0x1

.field private static final SOFTWARE_UPDATES_CAT:Ljava/lang/String; = "software_updates_cat"

.field public static final UPDATES_XML:I

.field private static final UPDATE_KEY:Ljava/lang/String; = "OTA_Key"


# instance fields
.field private final activity:Landroid/app/Activity;

.field connect:Lcom/nuance/swype/connect/Connect;

.field private connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private final connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field private final downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

.field private isCanceling:Z

.field private isPaused:Z

.field private isUpgrading:Z

.field private progress:I

.field private screen:Landroid/preference/PreferenceScreen;

.field private final updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

.field private final upgradeCancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

.field private final upgrader:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/nuance/swype/input/R$xml;->updates:I

    sput v0, Lcom/nuance/swype/input/settings/Updates;->UPDATES_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/nuance/swype/input/settings/Updates$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/Updates$1;-><init>(Lcom/nuance/swype/input/settings/Updates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 101
    new-instance v0, Lcom/nuance/swype/input/settings/Updates$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/Updates$2;-><init>(Lcom/nuance/swype/input/settings/Updates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->upgradeCancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    .line 109
    new-instance v0, Lcom/nuance/swype/input/settings/Updates$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/Updates$3;-><init>(Lcom/nuance/swype/input/settings/Updates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->upgrader:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 125
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    .line 127
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connect:Lcom/nuance/swype/connect/Connect;

    .line 129
    invoke-static {p1}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    .line 131
    new-instance v0, Lcom/nuance/swype/input/settings/Updates$4;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/Updates$4;-><init>(Lcom/nuance/swype/input/settings/Updates;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 139
    new-instance v0, Lcom/nuance/swype/input/settings/Updates$5;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/Updates$5;-><init>(Lcom/nuance/swype/input/settings/Updates;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->updateDownloadCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/settings/Updates;->progress:I

    .line 161
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/Updates;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/Updates;->isCanceling:Z

    return p1
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/settings/Updates;I)I
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/nuance/swype/input/settings/Updates;->progress:I

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/Updates;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Updates;->cancelUpgradeDownload()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/Updates;)Lcom/nuance/swype/connect/ConnectedStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/Updates;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/Updates;->isUpgrading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/swype/input/settings/Updates;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/Updates;->isUpgrading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/Updates;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Updates;->installUpgrade()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/Updates;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/Updates;)Lcom/nuance/swype/connect/SDKUpdateManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    return-object v0
.end method

.method private cancelUpgradeDownload()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    if-eqz v0, :cond_0

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/Updates;->isCanceling:Z

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/settings/Updates;->progress:I

    .line 353
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    .line 354
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->cancelDownload()V

    .line 356
    :cond_0
    return-void
.end method

.method private installUpgrade()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 314
    const/4 v3, 0x0

    invoke-direct {p0, v1, v1, v2, v3}, Lcom/nuance/swype/input/settings/Updates;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    if-eqz v3, :cond_3

    .line 316
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKUpdateManager;->isUpdateDownloaded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    const/4 v0, 0x0

    .line 320
    .local v0, "unknownSourcesAllowed":Z
    :try_start_0
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 324
    :goto_0
    if-nez v0, :cond_2

    .line 326
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Updates;->showUnknownSourcesDialog()V

    .line 347
    .end local v0    # "unknownSourcesAllowed":Z
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "unknownSourcesAllowed":Z
    :cond_1
    move v0, v2

    .line 320
    goto :goto_0

    .line 329
    :cond_2
    new-instance v1, Lcom/nuance/swype/input/settings/Updates$7;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/Updates$7;-><init>(Lcom/nuance/swype/input/settings/Updates;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/Updates$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 345
    .end local v0    # "unknownSourcesAllowed":Z
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    goto :goto_1

    .line 338
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 340
    :try_start_1
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/Updates;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadUpdate(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    .restart local v0    # "unknownSourcesAllowed":Z
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showLegalRequirements(IZZLandroid/os/Bundle;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-static {v1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/Updates;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 363
    const/4 v1, 0x1

    .line 365
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method public createConnectDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public createUnknownSourcesDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$string;->third_party_apps_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 207
    sget v1, Lcom/nuance/swype/input/R$string;->third_party_apps_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 208
    sget v1, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 209
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->ok_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/settings/Updates$6;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/Updates$6;-><init>(Lcom/nuance/swype/input/settings/Updates;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method protected final findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Updates;->installUpgrade()V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/Updates;->isPaused:Z

    .line 175
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/Updates;->isUpgrading:Z

    .line 169
    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/Updates;->isPaused:Z

    .line 170
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    .line 171
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 165
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 179
    return-void
.end method

.method protected declared-synchronized rebuildSettings()V
    .locals 6

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/nuance/swype/input/settings/Updates;->isPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 311
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 242
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    .line 243
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Updates;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    .line 249
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->isLVLLicenseValid()Z

    move-result v4

    if-nez v4, :cond_4

    .line 250
    :cond_3
    new-instance v2, Lcom/nuance/swype/preference/FillPreferenceScreen;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Lcom/nuance/swype/preference/FillPreferenceScreen;-><init>(Landroid/content/Context;)V

    .line 251
    .local v2, "p":Landroid/preference/Preference;
    sget v4, Lcom/nuance/swype/input/R$string;->unlicensed_dialog_body:I

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 252
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 253
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    .end local v2    # "p":Landroid/preference/Preference;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 257
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 258
    :cond_5
    const-string v4, "software_updates_cat"

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/settings/Updates;->removePreference(Ljava/lang/String;)Z

    .line 306
    :goto_1
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 307
    new-instance v3, Lcom/nuance/swype/preference/FillPreferenceScreen;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/nuance/swype/preference/FillPreferenceScreen;-><init>(Landroid/content/Context;)V

    .line 308
    .local v3, "pref":Landroid/preference/Preference;
    sget v4, Lcom/nuance/swype/input/R$string;->no_available_updates:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 309
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 260
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_6
    const-string v4, "software_updates_cat"

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/settings/Updates;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 261
    .local v0, "cat":Landroid/preference/PreferenceCategory;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloading()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 262
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v4}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectPreference()Landroid/preference/Preference;

    move-result-object v3

    .line 263
    .restart local v3    # "pref":Landroid/preference/Preference;
    sget v4, Lcom/nuance/swype/input/R$string;->update_downloading_title:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 264
    sget v4, Lcom/nuance/swype/input/R$string;->connect_enable_wifi:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 265
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 266
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_7
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloading()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 268
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnectedWifi()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 269
    iget-boolean v4, p0, Lcom/nuance/swype/input/settings/Updates;->isCanceling:Z

    if-eqz v4, :cond_8

    .line 270
    new-instance v3, Landroid/preference/Preference;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 271
    .restart local v3    # "pref":Landroid/preference/Preference;
    sget v4, Lcom/nuance/swype/input/R$string;->canceling:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 283
    :goto_2
    sget v4, Lcom/nuance/swype/input/R$string;->update_downloading_title:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 284
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 273
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_8
    new-instance v2, Lcom/nuance/swype/preference/ProgressBarPreference;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/nuance/swype/preference/ProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 274
    .local v2, "p":Lcom/nuance/swype/preference/ProgressBarPreference;
    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/nuance/swype/preference/ProgressBarPreference;->setMax(I)V

    .line 275
    iget v4, p0, Lcom/nuance/swype/input/settings/Updates;->progress:I

    invoke-virtual {v2, v4}, Lcom/nuance/swype/preference/ProgressBarPreference;->setProgress(I)V

    .line 276
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->upgradeCancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/preference/ProgressBarPreference;->setCancelListener(Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;)V

    .line 277
    const-string v4, "OTA_Key"

    invoke-virtual {v2, v4}, Lcom/nuance/swype/preference/ProgressBarPreference;->setKey(Ljava/lang/String;)V

    .line 278
    move-object v3, v2

    .line 279
    .restart local v3    # "pref":Landroid/preference/Preference;
    goto :goto_2

    .line 281
    .end local v2    # "p":Lcom/nuance/swype/preference/ProgressBarPreference;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_9
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v4}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectPreference()Landroid/preference/Preference;

    move-result-object v3

    .restart local v3    # "pref":Landroid/preference/Preference;
    goto :goto_2

    .line 286
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_a
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 287
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/nuance/swype/preference/IconPreferenceScreen;->createPreferenceWithIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/preference/Preference;

    move-result-object v3

    .line 288
    .restart local v3    # "pref":Landroid/preference/Preference;
    const-string v4, "OTA_Key"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->isUpdateDownloaded()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 290
    sget v4, Lcom/nuance/swype/input/R$string;->update_install_title:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 291
    sget v4, Lcom/nuance/swype/input/R$string;->update_install_desc:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 301
    :goto_3
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->upgrader:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 302
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 293
    :cond_b
    sget v4, Lcom/nuance/swype/input/R$string;->update_download_title:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 294
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 295
    sget v4, Lcom/nuance/swype/input/R$string;->error_out_of_disc_space:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 296
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->resetOutOfSpace()Z

    goto :goto_3

    .line 298
    :cond_c
    sget v4, Lcom/nuance/swype/input/R$string;->notification_language_update:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method protected final removePreference(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/Updates;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 230
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/Updates;->removePreference(Landroid/preference/Preference;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract showConnectDialog()V
.end method

.method protected abstract showUnknownSourcesDialog()V
.end method
