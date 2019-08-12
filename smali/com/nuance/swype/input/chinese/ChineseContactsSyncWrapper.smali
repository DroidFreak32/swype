.class public Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;
.super Ljava/lang/Object;
.source "ChineseContactsSyncWrapper.java"


# static fields
.field private static final SYNC_DELAY:J = 0x7530L

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mObserver:Landroid/database/ContentObserver;

.field private mObserverSMS:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "ChineseContactsSyncWrapper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mObserver:Landroid/database/ContentObserver;

    .line 24
    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mObserverSMS:Landroid/database/ContentObserver;

    .line 29
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "...new ChineseContactsSyncWrapper..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->startDelaySync()V

    return-void
.end method

.method private declared-synchronized cancelDelaySync()V
    .locals 3

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 142
    .local v0, "handler":Landroid/os/Handler;
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "cancelDelaySync "

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private create()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 99
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "create..."

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 101
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 104
    .local v1, "cres":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper$1;

    invoke-direct {v3, p0, v5}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper$1;-><init>(Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    .local v0, "allMessages":Landroid/net/Uri;
    new-instance v2, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper$2;

    invoke-direct {v2, p0, v5}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper$2;-><init>(Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mObserverSMS:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    sget-object v2, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "create...done"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method private destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 129
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mObserver:Landroid/database/ContentObserver;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mObserverSMS:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mObserverSMS:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mObserverSMS:Landroid/database/ContentObserver;

    .line 139
    :cond_1
    return-void
.end method

.method private static isChineseLanguage(I)Z
    .locals 1
    .param p0, "language"    # I

    .prologue
    .line 61
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pause()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->cancelDelaySync()V

    .line 84
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "pause..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static resume()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->startDelaySync()V

    .line 94
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "resume..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static declared-synchronized start(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # I

    .prologue
    .line 34
    const-class v4, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    monitor-enter v4

    :try_start_0
    invoke-static {p1}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->isChineseLanguage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 38
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 39
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getAutoImportContacts()Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    if-eqz v3, :cond_0

    .line 41
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    .end local v2    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 45
    .restart local v2    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 46
    .local v1, "info":Lcom/nuance/swype/input/BuildInfo;
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 47
    .local v0, "appPref":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isStartupTipAlreadyShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    :cond_3
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    if-nez v3, :cond_4

    .line 52
    new-instance v3, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;-><init>(Landroid/content/Context;)V

    .line 54
    sput-object v3, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    invoke-direct {v3}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->create()V

    .line 56
    :cond_4
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    invoke-direct {v3}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->startDelaySync()V

    .line 57
    sget-object v3, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "start...done"

    invoke-virtual {v3, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized startDelaySync()V
    .locals 6

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 149
    .local v0, "handler":Landroid/os/Handler;
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "startDelaySync after SYNC_DELAY: "

    const-wide/16 v4, 0x7530

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    const/16 v1, 0x72

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 148
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "stop..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->cancelDelaySync()V

    .line 70
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    invoke-direct {v0}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->destroy()V

    .line 73
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->mManager:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    .line 75
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "stop...done"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 76
    return-void
.end method
