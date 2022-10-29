.class public abstract Lcom/nuance/swype/input/settings/Updates;
.super Ljava/lang/Object;
.source "Updates.java"


# static fields
.field private static final REQUEST_CODE_UPGRADE_INSTALL:I = 0x1

.field private static final SOFTWARE_UPDATES_CAT:Ljava/lang/String; = "software_updates_cat"

.field public static final UPDATES_XML:I

.field private static final UPDATE_KEY:Ljava/lang/String; = "OTA_Key"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final connect:Lcom/nuance/swype/connect/Connect;

.field private final connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

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
    .registers 1

    .prologue
    .line 35
    sget v0, Lcom/nuance/swype/input/R$xml;->updates:I

    sput v0, Lcom/nuance/swype/input/settings/Updates;->UPDATES_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/nuance/swype/input/settings/Updates$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/Updates$1;-><init>(Lcom/nuance/swype/input/settings/Updates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 102
    new-instance v0, Lcom/nuance/swype/input/settings/Updates$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/Updates$2;-><init>(Lcom/nuance/swype/input/settings/Updates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->upgradeCancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    .line 111
    new-instance v0, Lcom/nuance/swype/input/settings/Updates$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/Updates$3;-><init>(Lcom/nuance/swype/input/settings/Updates;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->upgrader:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 127
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    .line 129
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connect:Lcom/nuance/swype/connect/Connect;

    .line 131
    invoke-static {p1}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    .line 133
    new-instance v0, Lcom/nuance/swype/input/settings/Updates$4;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/Updates$4;-><init>(Lcom/nuance/swype/input/settings/Updates;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 141
    new-instance v0, Lcom/nuance/swype/input/settings/Updates$5;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/Updates$5;-><init>(Lcom/nuance/swype/input/settings/Updates;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->updateDownloadCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/settings/Updates;->progress:I

    .line 163
    :cond_4b
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/Updates;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/Updates;->isCanceling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/Updates;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    return-void
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/settings/Updates;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/nuance/swype/input/settings/Updates;->progress:I

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/Updates;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Updates;->cancelUpgradeDownload()V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/Updates;)Lcom/nuance/swype/connect/ConnectedStatus;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/Updates;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/Updates;->isUpgrading:Z

    return v0
.end method

.method static synthetic access$502(Lcom/nuance/swype/input/settings/Updates;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/Updates;->isUpgrading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/Updates;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Updates;->installUpgrade()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/Updates;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/Updates;)Lcom/nuance/swype/connect/SDKUpdateManager;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    return-object v0
.end method

.method private cancelUpgradeDownload()V
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    if-eqz v0, :cond_14

    .line 356
    monitor-enter p0

    .line 357
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/Updates;->isCanceling:Z

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/settings/Updates;->progress:I

    .line 359
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_15

    .line 361
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    .line 362
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->cancelDownload()V

    .line 364
    :cond_14
    return-void

    .line 359
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private installUpgrade()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 318
    const/4 v3, 0x0

    invoke-direct {p0, v1, v1, v2, v3}, Lcom/nuance/swype/input/settings/Updates;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 319
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    if-eqz v3, :cond_38

    .line 320
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKUpdateManager;->isUpdateDownloaded()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 322
    const/4 v0, 0x0

    .line 324
    .local v0, "unknownSourcesAllowed":Z
    :try_start_16
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    .line 325
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "install_non_market_apps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_16 .. :try_end_22} :catch_4e

    move-result v3

    if-ne v3, v1, :cond_2c

    move v0, v1

    .line 329
    :goto_26
    if-nez v0, :cond_2e

    .line 331
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Updates;->showUnknownSourcesDialog()V

    .line 352
    .end local v0    # "unknownSourcesAllowed":Z
    :cond_2b
    :goto_2b
    return-void

    .restart local v0    # "unknownSourcesAllowed":Z
    :cond_2c
    move v0, v2

    .line 325
    goto :goto_26

    .line 334
    :cond_2e
    new-instance v1, Lcom/nuance/swype/input/settings/Updates$7;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/Updates$7;-><init>(Lcom/nuance/swype/input/settings/Updates;)V

    new-array v2, v2, [Ljava/lang/Void;

    .line 342
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/Updates$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 350
    .end local v0    # "unknownSourcesAllowed":Z
    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    goto :goto_2b

    .line 343
    :cond_3c
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 345
    :try_start_44
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/Updates;->downloadCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadUpdate(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    :try_end_4b
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_44 .. :try_end_4b} :catch_4c

    goto :goto_38

    :catch_4c
    move-exception v1

    goto :goto_38

    .restart local v0    # "unknownSourcesAllowed":Z
    :catch_4e
    move-exception v1

    goto :goto_26
.end method

.method private declared-synchronized rebuildSettings()V
    .registers 7

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    iget-boolean v4, p0, Lcom/nuance/swype/input/settings/Updates;->isPaused:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-eqz v4, :cond_7

    .line 315
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 246
    :cond_7
    :try_start_7
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_10

    .line 247
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 250
    :cond_10
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/Updates;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    .line 253
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->isLicensed()Z

    move-result v4

    if-nez v4, :cond_38

    .line 254
    new-instance v2, Lcom/nuance/swype/preference/FillPreferenceScreen;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Lcom/nuance/swype/preference/FillPreferenceScreen;-><init>(Landroid/content/Context;)V

    .line 255
    .local v2, "p":Landroid/preference/Preference;
    sget v4, Lcom/nuance/swype/input/R$string;->unlicensed_dialog_body:I

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 256
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 257
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_35

    goto :goto_5

    .line 242
    .end local v2    # "p":Landroid/preference/Preference;
    :catchall_35
    move-exception v4

    monitor-exit p0

    throw v4

    .line 261
    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_64

    .line 262
    :cond_44
    const-string/jumbo v4, "software_updates_cat"

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/settings/Updates;->removePreference(Ljava/lang/String;)Z

    .line 310
    :goto_4a
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_5

    .line 311
    new-instance v3, Lcom/nuance/swype/preference/FillPreferenceScreen;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/nuance/swype/preference/FillPreferenceScreen;-><init>(Landroid/content/Context;)V

    .line 312
    .local v3, "pref":Landroid/preference/Preference;
    sget v4, Lcom/nuance/swype/input/R$string;->no_available_updates:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 313
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 264
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_64
    const-string/jumbo v4, "software_updates_cat"

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/settings/Updates;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 265
    .local v0, "cat":Landroid/preference/PreferenceCategory;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v4

    if-nez v4, :cond_91

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloading()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 266
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v4}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectPreference()Landroid/preference/Preference;

    move-result-object v3

    .line 267
    .restart local v3    # "pref":Landroid/preference/Preference;
    sget v4, Lcom/nuance/swype/input/R$string;->update_downloading_title:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 268
    sget v4, Lcom/nuance/swype/input/R$string;->connect_enable_wifi:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 269
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4a

    .line 270
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_91
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->isDownloading()Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 272
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnectedWifi()Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 273
    iget-boolean v4, p0, Lcom/nuance/swype/input/settings/Updates;->isCanceling:Z

    if-eqz v4, :cond_ba

    .line 274
    new-instance v3, Landroid/preference/Preference;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 275
    .restart local v3    # "pref":Landroid/preference/Preference;
    sget v4, Lcom/nuance/swype/input/R$string;->canceling:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 287
    :goto_b1
    sget v4, Lcom/nuance/swype/input/R$string;->update_downloading_title:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 288
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4a

    .line 277
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_ba
    new-instance v2, Lcom/nuance/swype/preference/ProgressBarPreference;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/nuance/swype/preference/ProgressBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 278
    .local v2, "p":Lcom/nuance/swype/preference/ProgressBarPreference;
    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/nuance/swype/preference/ProgressBarPreference;->setMax(I)V

    .line 279
    iget v4, p0, Lcom/nuance/swype/input/settings/Updates;->progress:I

    invoke-virtual {v2, v4}, Lcom/nuance/swype/preference/ProgressBarPreference;->setProgress(I)V

    .line 280
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->upgradeCancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    .line 1158
    iput-object v4, v2, Lcom/nuance/swype/preference/ProgressBarPreference;->cancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    .line 1160
    iget-object v4, v2, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    if-eqz v4, :cond_de

    .line 1161
    iget-object v4, v2, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    new-instance v5, Lcom/nuance/swype/preference/ProgressBarPreference$2;

    invoke-direct {v5, v2}, Lcom/nuance/swype/preference/ProgressBarPreference$2;-><init>(Lcom/nuance/swype/preference/ProgressBarPreference;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_de
    const-string/jumbo v4, "OTA_Key"

    invoke-virtual {v2, v4}, Lcom/nuance/swype/preference/ProgressBarPreference;->setKey(Ljava/lang/String;)V

    .line 282
    move-object v3, v2

    .line 283
    .restart local v3    # "pref":Landroid/preference/Preference;
    goto :goto_b1

    .line 285
    .end local v2    # "p":Lcom/nuance/swype/preference/ProgressBarPreference;
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_e6
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v4}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectPreference()Landroid/preference/Preference;

    move-result-object v3

    .restart local v3    # "pref":Landroid/preference/Preference;
    goto :goto_b1

    .line 290
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_ed
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 291
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/nuance/swype/preference/IconPreferenceScreen;->createPreferenceWithIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/preference/Preference;

    move-result-object v3

    .line 292
    .restart local v3    # "pref":Landroid/preference/Preference;
    const-string/jumbo v4, "OTA_Key"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->isUpdateDownloaded()Z

    move-result v4

    if-eqz v4, :cond_121

    .line 294
    sget v4, Lcom/nuance/swype/input/R$string;->update_install_title:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 295
    sget v4, Lcom/nuance/swype/input/R$string;->update_install_desc:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 305
    :goto_117
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->upgrader:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 306
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4a

    .line 297
    :cond_121
    sget v4, Lcom/nuance/swype/input/R$string;->update_download_title:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 298
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace()Z

    move-result v4

    if-eqz v4, :cond_139

    .line 299
    sget v4, Lcom/nuance/swype/input/R$string;->error_out_of_disc_space:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 300
    iget-object v4, p0, Lcom/nuance/swype/input/settings/Updates;->updateManager:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->resetOutOfSpace()Z

    goto :goto_117

    .line 302
    :cond_139
    sget v4, Lcom/nuance/swype/input/R$string;->notification_language_update:I

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_13e
    .catchall {:try_start_38 .. :try_end_13e} :catchall_35

    goto :goto_117
.end method

.method private removePreference(Landroid/preference/Preference;)Z
    .registers 3
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private removePreference(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/Updates;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 234
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_e

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/Updates;->removePreference(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private showLegalRequirements(IZZLandroid/os/Bundle;)Z
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 368
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-static {v1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 371
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/Updates;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 372
    const/4 v1, 0x1

    .line 374
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method public createConnectDialog()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public createUnknownSourcesDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 208
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nuance/swype/input/R$string;->third_party_apps_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 210
    sget v1, Lcom/nuance/swype/input/R$string;->third_party_apps_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 211
    sget v1, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 212
    iget-object v1, p0, Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->ok_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nuance/swype/input/settings/Updates$6;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/Updates$6;-><init>(Lcom/nuance/swype/input/settings/Updates;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 184
    packed-switch p1, :pswitch_data_c

    .line 193
    :cond_3
    :goto_3
    return-void

    .line 186
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 187
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Updates;->installUpgrade()V

    goto :goto_3

    .line 184
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/Updates;->isPaused:Z

    .line 177
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/Updates;->isUpgrading:Z

    .line 171
    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/Updates;->isPaused:Z

    .line 172
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/Updates;->rebuildSettings()V

    .line 173
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 167
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 181
    return-void
.end method

.method protected abstract showConnectDialog()V
.end method

.method protected abstract showUnknownSourcesDialog()V
.end method
