.class public abstract Lcom/nuance/swype/input/settings/AccountPrefs;
.super Ljava/lang/Object;
.source "AccountPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;
    }
.end annotation


# static fields
.field public static final ACCOUNT_PREFS_XML:I

.field private static final KEY_ACCOUNT:Ljava/lang/String; = "pref_account"

.field private static final KEY_DELETE_ACCOUNT:Ljava/lang/String; = "pref_account_delete"

.field private static final KEY_ENABLED:Ljava/lang/String; = "pref_backup_enabled"

.field private static final KEY_MY_DEVICES_CAT:Ljava/lang/String; = "account_my_devices"

.field private static final KEY_OPTIONS:Ljava/lang/String; = "account_options"

.field private static final KEY_SYNC_ACCOUNT:Ljava/lang/String; = "pref_account_sync_now"

.field private static final KEY_YOUR_ACCOUNT:Ljava/lang/String; = "your_account"

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_HOUR:J = 0x36ee80L

.field private static final MILLIS_IN_MINUTE:J = 0xea60L

.field private static final REQUEST_CODE_BACKUP_SYNC:I = 0x1

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private backupAndSyncLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

.field private callback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

.field private connect:Lcom/nuance/swype/connect/Connect;

.field private final connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private final connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field private currentBuildingSettingAsync:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;",
            ">;"
        }
    .end annotation
.end field

.field dlmEnabled:Landroid/preference/Preference;

.field private mLastClickTime:J

.field private screen:Landroid/preference/PreferenceScreen;

.field private settingsChanged:Z

.field private final syncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

.field private syncEnabledChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "AccountPrefs"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 50
    sget v0, Lcom/nuance/swype/input/R$xml;->connect_account_preferences:I

    sput v0, Lcom/nuance/swype/input/settings/AccountPrefs;->ACCOUNT_PREFS_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->mLastClickTime:J

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->currentBuildingSettingAsync:Landroid/os/AsyncTask;

    .line 81
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AccountPrefs$1;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->callback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    .line 117
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AccountPrefs$2;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->syncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    .line 144
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AccountPrefs$3;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->syncEnabledChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 159
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AccountPrefs$4;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->backupAndSyncLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    .line 189
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    .line 191
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    .line 192
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$5;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs$5;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 198
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$6;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs$6;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 204
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/AccountPrefs;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/AccountPrefs;IZZLandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/settings/AccountPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/AccountPrefs;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->getThisDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/AccountPrefs;ZLcom/nuance/swypeconnect/ac/ACAccount;ZLjava/lang/String;[Lcom/nuance/swypeconnect/ac/ACDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/nuance/swypeconnect/ac/ACAccount;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # [Lcom/nuance/swypeconnect/ac/ACDevice;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings(ZLcom/nuance/swypeconnect/ac/ACAccount;ZLjava/lang/String;[Lcom/nuance/swypeconnect/ac/ACDevice;)V

    return-void
.end method

.method static synthetic access$702(Lcom/nuance/swype/input/settings/AccountPrefs;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->currentBuildingSettingAsync:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect$Accounts;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v1

    .line 514
    .local v1, "devices":[Lcom/nuance/swypeconnect/ac/ACDevice;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 515
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 516
    .local v0, "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 521
    .end local v0    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    :goto_1
    return-object v2

    .line 515
    .restart local v0    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method private getThisDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "thisDeviceId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .end local v0    # "thisDeviceId":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "thisDeviceId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "_UNKNOWN_"

    goto :goto_0
.end method

.method private final rebuildSettings(ZLcom/nuance/swypeconnect/ac/ACAccount;ZLjava/lang/String;[Lcom/nuance/swypeconnect/ac/ACDevice;)V
    .locals 31
    .param p1, "backupEnabled"    # Z
    .param p2, "acct"    # Lcom/nuance/swypeconnect/ac/ACAccount;
    .param p3, "isAvailable"    # Z
    .param p4, "thisDeviceId"    # Ljava/lang/String;
    .param p5, "devices"    # [Lcom/nuance/swypeconnect/ac/ACDevice;

    .prologue
    .line 306
    sget-object v24, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "rebuildSettings"

    aput-object v27, v25, v26

    invoke-interface/range {v24 .. v25}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 311
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 313
    const-string/jumbo v24, "pref_backup_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->syncEnabledChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 318
    :cond_1
    if-eqz p2, :cond_3

    .line 319
    const-string/jumbo v24, "pref_account"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/preference/ClassActionPreference;

    .line 320
    .local v15, "manage":Lcom/nuance/swype/preference/ClassActionPreference;
    if-eqz v15, :cond_2

    .line 321
    invoke-virtual/range {p2 .. p2}, Lcom/nuance/swypeconnect/ac/ACAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/nuance/swype/preference/ClassActionPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 323
    :cond_2
    const-string/jumbo v24, "pref_account_sync_now"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/preference/ClassActionPreference;

    .line 324
    .local v7, "dlmSync":Lcom/nuance/swype/preference/ClassActionPreference;
    if-nez p3, :cond_3

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    .end local v7    # "dlmSync":Lcom/nuance/swype/preference/ClassActionPreference;
    .end local v15    # "manage":Lcom/nuance/swype/preference/ClassActionPreference;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setChecked"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget-object v28, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v24

    .line 342
    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v24

    .line 343
    invoke-virtual/range {v24 .. v24}, Lcom/nuance/swype/input/UserPreferences;->isConnectDLMBackupAllowed()Z

    move-result v24

    if-nez v24, :cond_6

    .line 345
    const-string/jumbo v24, "account_my_devices"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    .line 346
    .local v17, "myDevices":Landroid/preference/PreferenceGroup;
    const-string/jumbo v24, "account_options"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 347
    .local v18, "options":Landroid/preference/PreferenceGroup;
    const-string/jumbo v24, "your_account"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 350
    .local v4, "account":Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    .end local v4    # "account":Landroid/preference/PreferenceGroup;
    .end local v17    # "myDevices":Landroid/preference/PreferenceGroup;
    .end local v18    # "options":Landroid/preference/PreferenceGroup;
    :cond_5
    return-void

    .line 335
    :catch_0
    move-exception v8

    .line 336
    .local v8, "e":Ljava/lang/RuntimeException;
    sget-object v24, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "rebuildSettings error:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v9

    .line 338
    .local v9, "ex":Ljava/lang/Exception;
    sget-object v24, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "rebuildSettings error:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 356
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_6
    if-eqz p2, :cond_5

    .line 357
    const-string/jumbo v24, "account_my_devices"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    .line 358
    .local v17, "myDevices":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 359
    .local v20, "r":Landroid/content/res/Resources;
    sget v24, Lcom/nuance/swype/input/R$string;->pref_connect_last_sync:I

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 361
    .local v14, "lastSync":Ljava/lang/String;
    sget-object v25, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v24, 0x0

    const-string/jumbo v27, "rebuildSettings...thisDeviceId: "

    aput-object v27, v26, v24

    const/16 v24, 0x1

    aput-object p4, v26, v24

    const/16 v24, 0x2

    const-string/jumbo v27, "...devices account: "

    aput-object v27, v26, v24

    const/16 v27, 0x3

    if-eqz p5, :cond_8

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v24, v0

    .line 362
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    :goto_1
    aput-object v24, v26, v27

    .line 361
    invoke-interface/range {v25 .. v26}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 363
    if-eqz p5, :cond_5

    .line 364
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v25, v0

    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    aget-object v6, p5, v24

    .line 366
    .local v6, "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    sget v26, Lcom/nuance/swype/input/R$drawable;->icon_settings_device_phone:I

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 367
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v26, Lcom/nuance/swype/input/settings/AccountPrefs$10;->$SwitchMap$com$nuance$swypeconnect$ac$ACDevice$ACDeviceType:[I

    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACDevice;->getDeviceType()Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_0

    .line 384
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v11}, Lcom/nuance/swype/preference/IconPreferenceScreen;->createPreferenceWithIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/preference/Preference;

    move-result-object v19

    .line 387
    .local v19, "pref":Landroid/preference/Preference;
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .local v21, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v26, " "

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACDevice;->getLastCheckin()Ljava/util/Date;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->getLastCheckinDiff(Ljava/util/Date;)J

    move-result-wide v12

    .line 390
    .local v12, "lastCheckin":J
    const-wide/32 v26, 0x5265c00

    div-long v26, v12, v26

    move-wide/from16 v0, v26

    long-to-int v5, v0

    .line 391
    .local v5, "days":I
    const-wide/32 v26, 0x36ee80

    div-long v26, v12, v26

    move-wide/from16 v0, v26

    long-to-int v10, v0

    .line 392
    .local v10, "hours":I
    const-wide/32 v26, 0xea60

    div-long v26, v12, v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v16, v0

    .line 394
    .local v16, "minutes":I
    if-lez v5, :cond_9

    .line 395
    sget v26, Lcom/nuance/swype/input/R$plurals;->days_ago_label:I

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :goto_4
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACDevice;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .local v23, "title":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 407
    sget v26, Lcom/nuance/swype/input/R$string;->pref_connect_account_current_device:I

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 408
    .local v22, "thisDevice":Ljava/lang/String;
    const-string/jumbo v26, " ("

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string/jumbo v26, ")"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 417
    .end local v22    # "thisDevice":Ljava/lang/String;
    :goto_5
    sget-object v26, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-string/jumbo v29, "rebuildSettings...device: "

    aput-object v29, v27, v28

    const/16 v28, 0x1

    .line 418
    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x2

    const-string/jumbo v29, "...pref: "

    aput-object v29, v27, v28

    const/16 v28, 0x3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x4

    const-string/jumbo v29, "...thisDevice: "

    aput-object v29, v27, v28

    const/16 v28, 0x5

    .line 419
    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    aput-object v29, v27, v28

    .line 417
    invoke-interface/range {v26 .. v27}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 421
    invoke-virtual {v6}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    if-eqz v17, :cond_7

    .line 425
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 364
    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 362
    .end local v5    # "days":I
    .end local v6    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v10    # "hours":I
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "lastCheckin":J
    .end local v16    # "minutes":I
    .end local v19    # "pref":Landroid/preference/Preference;
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .end local v23    # "title":Ljava/lang/StringBuilder;
    :cond_8
    const-string/jumbo v24, "0"

    goto/16 :goto_1

    .line 369
    .restart local v6    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    sget v26, Lcom/nuance/swype/input/R$drawable;->icon_settings_device_phone:I

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 370
    goto/16 :goto_3

    .line 373
    :pswitch_1
    sget v26, Lcom/nuance/swype/input/R$drawable;->icon_settings_device_tablet:I

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 374
    goto/16 :goto_3

    .line 377
    :pswitch_2
    sget v26, Lcom/nuance/swype/input/R$drawable;->icon_settings_device_tablet:I

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto/16 :goto_3

    .line 396
    .restart local v5    # "days":I
    .restart local v10    # "hours":I
    .restart local v12    # "lastCheckin":J
    .restart local v16    # "minutes":I
    .restart local v19    # "pref":Landroid/preference/Preference;
    .restart local v21    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    if-lez v10, :cond_a

    .line 397
    sget v26, Lcom/nuance/swype/input/R$plurals;->hours_ago_label:I

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 398
    :cond_a
    if-ltz v16, :cond_b

    .line 399
    sget v26, Lcom/nuance/swype/input/R$plurals;->minutes_ago_label:I

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v16

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 401
    :cond_b
    sget v26, Lcom/nuance/swype/input/R$plurals;->minutes_ago_label:I

    const/16 v27, 0x0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 415
    .restart local v23    # "title":Ljava/lang/StringBuilder;
    :cond_c
    add-int/lit8 v26, v16, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    goto/16 :goto_5

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private recordMyWordsSettings()V
    .locals 8

    .prologue
    .line 558
    iget-object v6, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 559
    .local v1, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    .line 565
    .local v5, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v0

    .line 566
    .local v0, "account":Lcom/nuance/swypeconnect/ac/ACAccount;
    if-nez v0, :cond_0

    .line 567
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->UNREGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .line 577
    .local v4, "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :goto_0
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->isEnabled()Z

    move-result v3

    .line 580
    .local v3, "livingLanguageEnabled":Z
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getAskBeforeAdd()Z

    move-result v2

    .line 582
    .local v2, "askBeforeAdd":Z
    invoke-static {v4, v3, v2}, Lcom/nuance/swype/usagedata/UsageData;->recordMyWordsSettings(Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;ZZ)V

    .line 584
    return-void

    .line 568
    .end local v2    # "askBeforeAdd":Z
    .end local v3    # "livingLanguageEnabled":Z
    .end local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccount;->isLinked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 569
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->REGISTERED:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .restart local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    goto :goto_0

    .line 570
    .end local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 571
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->ON:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .restart local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    goto :goto_0

    .line 573
    .end local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    :cond_2
    sget-object v4, Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;->OFF:Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;

    .restart local v4    # "status":Lcom/nuance/swype/usagedata/UsageData$BackupAndSyncStatus;
    goto :goto_0
.end method

.method private showLegalRequirements(IZZLandroid/os/Bundle;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "tosRequired"    # Z
    .param p3, "optInRequired"    # Z
    .param p4, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    .line 180
    invoke-static {v1, p2, p3, p4}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, v0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs;->doStartActivityForResult(Landroid/content/Intent;I)V

    .line 183
    const/4 v1, 0x1

    .line 185
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method protected createConnectDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;->getConnectDialog()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createDeleteAccountDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 449
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->pref_my_devices:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->connect_delete_account_desc:I

    .line 451
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->no_button:I

    const/4 v2, 0x0

    .line 452
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->yes_button:I

    new-instance v2, Lcom/nuance/swype/input/settings/AccountPrefs$8;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/AccountPrefs$8;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    .line 453
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    .line 467
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createUnlinkDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "deviceName":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nuance/swype/input/R$string;->pref_my_devices:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    .line 477
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->remove_device_desc:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->no_button:I

    const/4 v3, 0x0

    .line 478
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->yes_button:I

    new-instance v3, Lcom/nuance/swype/input/settings/AccountPrefs$9;

    invoke-direct {v3, p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs$9;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->icon_settings_error:I

    .line 500
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 501
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected abstract doStartActivityForResult(Landroid/content/Intent;I)V
.end method

.method protected final findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastCheckinDiff(Ljava/util/Date;)J
    .locals 6
    .param p1, "lastCheckin"    # Ljava/util/Date;

    .prologue
    .line 546
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 547
    .local v0, "c":Ljava/util/Calendar;
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 548
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 550
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 552
    .local v1, "cNow":Ljava/util/Calendar;
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 553
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 554
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 588
    packed-switch p1, :pswitch_data_0

    .line 595
    sget-object v0, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "No response to request code: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 590
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->backupAndSyncLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    invoke-interface {v0}, Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;->accepted()V

    goto :goto_0

    .line 588
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->callback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 217
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->syncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Sync;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    .line 218
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->mLastClickTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2bc

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 256
    :goto_0
    return v1

    .line 234
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->mLastClickTime:J

    .line 236
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->showConnectDialog()V

    move v1, v2

    .line 239
    goto :goto_0

    .line 241
    :cond_1
    const-string/jumbo v3, "pref_backup_enabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    sget-object v3, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "has been processed by syncEnabledChangeListener... key:"

    aput-object v5, v4, v1

    aput-object v0, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v1, v2

    .line 243
    goto :goto_0

    .line 244
    :cond_2
    const-string/jumbo v3, "pref_account_delete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->showDeleteAccountDialog()V

    move v1, v2

    .line 246
    goto :goto_0

    .line 247
    :cond_3
    const-string/jumbo v3, "pref_account_sync_now"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect$Sync;->doSync()V

    .line 249
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect$Accounts;->refreshDevicesList()V

    goto :goto_0

    .line 250
    :cond_4
    const-string/jumbo v3, "pref_account"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 251
    goto :goto_0

    .line 253
    :cond_5
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->showUnlinkDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    .line 211
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->callback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->registerCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 212
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->syncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Sync;->registerCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    .line 213
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 208
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 222
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->settingsChanged:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->recordMyWordsSettings()V

    .line 225
    :cond_0
    return-void
.end method

.method protected final rebuildSettings()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->currentBuildingSettingAsync:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->currentBuildingSettingAsync:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 280
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->currentBuildingSettingAsync:Landroid/os/AsyncTask;

    .line 282
    :cond_0
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AccountPrefs$7;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    .line 300
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/nuance/swype/input/settings/AccountPrefs$BuildSettingHolder;>;"
    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->currentBuildingSettingAsync:Landroid/os/AsyncTask;

    .line 301
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 302
    return-void
.end method

.method public refreshDevicesRequest()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Accounts;->refreshDevicesList()V

    .line 526
    return-void
.end method

.method protected abstract showConnectDialog()V
.end method

.method protected abstract showDeleteAccountDialog()V
.end method

.method protected abstract showUnlinkDialog(Ljava/lang/String;)V
.end method

.method protected toggleSyncEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 529
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->backupAndSyncLegalPresenter:Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/Connect;->getSync(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    .line 530
    .local v0, "sync":Lcom/nuance/swype/connect/Connect$Sync;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 531
    if-eqz p1, :cond_1

    .line 532
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->enable()V

    .line 536
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    .line 537
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->settingsChanged:Z

    .line 539
    :cond_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->disable()V

    goto :goto_0
.end method
