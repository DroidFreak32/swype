.class public abstract Lcom/nuance/swype/input/settings/AccountPrefs;
.super Ljava/lang/Object;
.source "AccountPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/AccountPrefs$8;
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


# instance fields
.field public final MILLIS_IN_DAY:J

.field public final MILLIS_IN_HOUR:J

.field public final MILLIS_IN_MINUTE:J

.field private final activity:Landroid/app/Activity;

.field private callback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

.field private connect:Lcom/nuance/swype/connect/Connect;

.field private final connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

.field private final connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

.field dlmEnabled:Landroid/preference/Preference;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private screen:Landroid/preference/PreferenceScreen;

.field private final syncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

.field private syncEnabledChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/nuance/swype/input/R$xml;->connect_account_preferences:I

    sput v0, Lcom/nuance/swype/input/settings/AccountPrefs;->ACCOUNT_PREFS_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AccountPrefs$1;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->callback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    .line 98
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$2;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AccountPrefs$2;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->syncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    .line 124
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-string v1, "AccountPrefs"

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 126
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/AccountPrefs$3;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->syncEnabledChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 448
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->MILLIS_IN_MINUTE:J

    .line 449
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->MILLIS_IN_HOUR:J

    .line 450
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->MILLIS_IN_DAY:J

    .line 155
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    .line 157
    invoke-static {p1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    .line 158
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$4;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs$4;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connection:Lcom/nuance/swype/preference/ConnectionAwarePreferences;

    .line 164
    new-instance v0, Lcom/nuance/swype/input/settings/AccountPrefs$5;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs$5;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/AccountPrefs;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/swype/connect/Connect;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/AccountPrefs;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->getThisDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v5, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/Connect$Accounts;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v2

    .line 422
    .local v2, "devices":[Lcom/nuance/swypeconnect/ac/ACDevice;
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 423
    move-object v0, v2

    .local v0, "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 424
    .local v1, "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 425
    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 429
    .end local v0    # "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v1    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return-object v5

    .line 423
    .restart local v0    # "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    .restart local v1    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v1    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const-string v5, ""

    goto :goto_1
.end method

.method private getThisDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "thisDeviceId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .end local v0    # "thisDeviceId":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "thisDeviceId":Ljava/lang/String;
    :cond_0
    const-string v0, "_UNKNOWN_"

    goto :goto_0
.end method

.method private handleSyncPreferenceChange(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "switched":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "isChecked"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 141
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    :goto_0
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->toggleSyncEnabled(Z)V

    .line 147
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v0

    .line 149
    .local v0, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v4, v5, v2}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 150
    goto :goto_1

    .end local v0    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method protected createConnectDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 413
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
    .line 364
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->pref_my_devices:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->connect_delete_account_desc:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->no_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->yes_button:I

    new-instance v2, Lcom/nuance/swype/input/settings/AccountPrefs$6;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/AccountPrefs$6;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected createUnlinkDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "deviceName":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nuance/swype/input/R$string;->pref_my_devices:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->remove_device_desc:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->no_button:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->yes_button:I

    new-instance v3, Lcom/nuance/swype/input/settings/AccountPrefs$7;

    invoke-direct {v3, p0, p1}, Lcom/nuance/swype/input/settings/AccountPrefs$7;-><init>(Lcom/nuance/swype/input/settings/AccountPrefs;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->ic_connection_error:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected final findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 349
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
    .line 453
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 454
    .local v0, "c":Ljava/util/Calendar;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 455
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 457
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 458
    .local v1, "cNow":Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 459
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 461
    return-wide v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->callback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 184
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->syncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Sync;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    .line 185
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 194
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->showConnectDialog()V

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 199
    :cond_1
    const-string v3, "pref_backup_enabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/settings/AccountPrefs;->handleSyncPreferenceChange(Landroid/preference/Preference;)V

    .line 218
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 201
    :cond_2
    const-string v3, "pref_account_delete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->showDeleteAccountDialog()V

    .line 203
    iget-object v3, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v1

    .line 205
    .local v1, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v1, :cond_0

    .line 206
    const-string v3, "pref_account_delete"

    const-string v4, "account deleted"

    const-string v5, "account existing"

    invoke-interface {v1, v3, v4, v5}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    .end local v1    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    :cond_3
    const-string v3, "pref_account_sync_now"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 211
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect$Sync;->doSync()V

    goto :goto_1

    .line 212
    :cond_4
    const-string v3, "pref_account"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->showUnlinkDialog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    .line 178
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->callback:Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Accounts;->registerCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 179
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->syncCallback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect$Sync;->registerCallback(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    .line 180
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 174
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 189
    return-void
.end method

.method protected final rebuildSettings()V
    .locals 35

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->log:Lcom/nuance/connect/util/Logger$Log;

    move-object/from16 v30, v0

    const-string v31, "rebuildSettings"

    invoke-interface/range {v30 .. v31}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v30, v0

    if-eqz v30, :cond_0

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 236
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v7

    .line 237
    .local v7, "backupEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 239
    const-string v30, "pref_backup_enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->syncEnabledChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 244
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v5

    .line 245
    .local v5, "acct":Lcom/nuance/swypeconnect/ac/ACAccount;
    if-eqz v5, :cond_3

    .line 246
    const-string v30, "pref_account"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Lcom/nuance/swype/preference/ClassActionPreference;

    .line 247
    .local v19, "manage":Lcom/nuance/swype/preference/ClassActionPreference;
    if-eqz v19, :cond_2

    .line 248
    invoke-virtual {v5}, Lcom/nuance/swypeconnect/ac/ACAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nuance/swype/preference/ClassActionPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    :cond_2
    const-string v30, "pref_account_sync_now"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/preference/ClassActionPreference;

    .line 251
    .local v11, "dlmSync":Lcom/nuance/swype/preference/ClassActionPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/nuance/swype/connect/Connect$Sync;->isAvailable()Z

    move-result v30

    if-nez v30, :cond_3

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    .end local v11    # "dlmSync":Lcom/nuance/swype/preference/ClassActionPreference;
    .end local v19    # "manage":Lcom/nuance/swype/preference/ClassActionPreference;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    const-string v31, "setChecked"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    sget-object v34, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v34, v32, v33

    invoke-virtual/range {v30 .. v32}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v30

    .line 258
    const/16 v20, 0x0

    .local v20, "method":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->dlmEnabled:Landroid/preference/Preference;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-virtual/range {v30 .. v32}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v20    # "method":Ljava/lang/reflect/Method;
    :goto_0
    if-nez v7, :cond_5

    .line 265
    const-string v30, "account_my_devices"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceGroup;

    .line 266
    .local v22, "myDevices":Landroid/preference/PreferenceGroup;
    const-string v30, "account_options"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceGroup;

    .line 267
    .local v23, "options":Landroid/preference/PreferenceGroup;
    const-string v30, "your_account"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 270
    .local v4, "account":Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 345
    .end local v4    # "account":Landroid/preference/PreferenceGroup;
    .end local v22    # "myDevices":Landroid/preference/PreferenceGroup;
    .end local v23    # "options":Landroid/preference/PreferenceGroup;
    :cond_4
    return-void

    .line 276
    :cond_5
    if-eqz v5, :cond_4

    .line 277
    const-string v30, "account_my_devices"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceCategory;

    .line 278
    .local v22, "myDevices":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 279
    .local v25, "r":Landroid/content/res/Resources;
    sget v30, Lcom/nuance/swype/input/R$string;->pref_connect_last_sync:I

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 281
    .local v15, "lastSync":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->getThisDeviceId()Ljava/lang/String;

    move-result-object v28

    .line 282
    .local v28, "thisDeviceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/nuance/swype/connect/Connect$Accounts;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v10

    .line 283
    .local v10, "devices":[Lcom/nuance/swypeconnect/ac/ACDevice;
    if-eqz v10, :cond_4

    .line 284
    move-object v6, v10

    .local v6, "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    array-length v0, v10

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    aget-object v9, v6, v13

    .line 286
    .local v9, "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    sget v30, Lcom/nuance/swype/input/R$drawable;->device_mobile:I

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 287
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v30, Lcom/nuance/swype/input/settings/AccountPrefs$8;->$SwitchMap$com$nuance$swypeconnect$ac$ACDevice$ACDeviceType:[I

    invoke-virtual {v9}, Lcom/nuance/swypeconnect/ac/ACDevice;->getDeviceType()Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->ordinal()I

    move-result v31

    aget v30, v30, v31

    packed-switch v30, :pswitch_data_0

    .line 302
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/settings/AccountPrefs;->activity:Landroid/app/Activity;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v14}, Lcom/nuance/swype/preference/IconPreferenceScreen;->createPreferenceWithIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/preference/Preference;

    move-result-object v24

    .line 305
    .local v24, "pref":Landroid/preference/Preference;
    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .local v26, "sb":Ljava/lang/StringBuilder;
    const-string v30, " "

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v9}, Lcom/nuance/swypeconnect/ac/ACDevice;->getLastCheckin()Ljava/util/Date;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AccountPrefs;->getLastCheckinDiff(Ljava/util/Date;)J

    move-result-wide v16

    .line 308
    .local v16, "lastCheckin":J
    const-wide/32 v30, 0x5265c00

    div-long v30, v16, v30

    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 309
    .local v8, "days":I
    const-wide/32 v30, 0x36ee80

    div-long v30, v16, v30

    move-wide/from16 v0, v30

    long-to-int v12, v0

    .line 310
    .local v12, "hours":I
    const-wide/32 v30, 0xea60

    div-long v30, v16, v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v21, v0

    .line 312
    .local v21, "minutes":I
    if-lez v8, :cond_7

    .line 313
    sget v30, Lcom/nuance/swype/input/R$plurals;->days_ago_label:I

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v25

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :goto_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/nuance/swypeconnect/ac/ACDevice;->getName()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .local v29, "title":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 325
    sget v30, Lcom/nuance/swype/input/R$string;->pref_connect_account_current_device:I

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 326
    .local v27, "thisDevice":Ljava/lang/String;
    const-string v30, " ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 336
    .end local v27    # "thisDevice":Ljava/lang/String;
    :goto_4
    invoke-virtual {v9}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    if-eqz v22, :cond_6

    .line 340
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 284
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 289
    .end local v8    # "days":I
    .end local v12    # "hours":I
    .end local v16    # "lastCheckin":J
    .end local v21    # "minutes":I
    .end local v24    # "pref":Landroid/preference/Preference;
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    .end local v29    # "title":Ljava/lang/StringBuilder;
    :pswitch_0
    sget v30, Lcom/nuance/swype/input/R$drawable;->device_mobile:I

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 290
    goto/16 :goto_2

    .line 293
    :pswitch_1
    sget v30, Lcom/nuance/swype/input/R$drawable;->device_tablet:I

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 294
    goto/16 :goto_2

    .line 297
    :pswitch_2
    sget v30, Lcom/nuance/swype/input/R$drawable;->device_tablet:I

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto/16 :goto_2

    .line 314
    .restart local v8    # "days":I
    .restart local v12    # "hours":I
    .restart local v16    # "lastCheckin":J
    .restart local v21    # "minutes":I
    .restart local v24    # "pref":Landroid/preference/Preference;
    .restart local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    if-lez v12, :cond_8

    .line 315
    sget v30, Lcom/nuance/swype/input/R$plurals;->hours_ago_label:I

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v25

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 316
    :cond_8
    if-ltz v21, :cond_9

    .line 317
    sget v30, Lcom/nuance/swype/input/R$plurals;->minutes_ago_label:I

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v21

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 319
    :cond_9
    sget v30, Lcom/nuance/swype/input/R$plurals;->minutes_ago_label:I

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 333
    .restart local v29    # "title":Ljava/lang/StringBuilder;
    :cond_a
    add-int/lit8 v30, v21, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    goto/16 :goto_4

    .line 259
    .end local v6    # "arr$":[Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v8    # "days":I
    .end local v9    # "device":Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v10    # "devices":[Lcom/nuance/swypeconnect/ac/ACDevice;
    .end local v12    # "hours":I
    .end local v13    # "i$":I
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "lastSync":Ljava/lang/String;
    .end local v16    # "lastCheckin":J
    .end local v18    # "len$":I
    .end local v21    # "minutes":I
    .end local v22    # "myDevices":Landroid/preference/PreferenceCategory;
    .end local v24    # "pref":Landroid/preference/Preference;
    .end local v25    # "r":Landroid/content/res/Resources;
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "thisDeviceId":Ljava/lang/String;
    .end local v29    # "title":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v30

    goto/16 :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshDevicesRequest()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Accounts;->refreshDevicesList()V

    .line 434
    return-void
.end method

.method protected abstract showConnectDialog()V
.end method

.method protected abstract showDeleteAccountDialog()V
.end method

.method protected abstract showUnlinkDialog(Ljava/lang/String;)V
.end method

.method protected toggleSyncEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 437
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    .line 438
    .local v0, "sync":Lcom/nuance/swype/connect/Connect$Sync;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->isEnabled()Z

    move-result v1

    if-eq p1, v1, :cond_0

    .line 439
    if-eqz p1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$Sync;->enable()V

    .line 444
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    .line 446
    :cond_0
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/settings/AccountPrefs;->connect:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect$Sync;->disable()V

    goto :goto_0
.end method
