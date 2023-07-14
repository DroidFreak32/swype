.class public Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;
.super Ljava/lang/Object;
.source "SyncDataProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;,
        Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;
    }
.end annotation


# static fields
.field private static final MAX_WORD_LENGTH:I = 0x20

.field private static final MIN_WORD_LENGTH:I = 0x1

.field private static final PROJECTION_QUERY:[Ljava/lang/String;

.field private static final SYNC_DELAY_IN_SECONDS:J = 0x1eL

.field static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static timeOfLastUpdate:J


# instance fields
.field private appContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private scheduled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nuance/swype/input/udb/sync/SyncDataProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-string/jumbo v0, "SyncDataProviderManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "frequency"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "locale"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "appid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->PROJECTION_QUERY:[Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->timeOfLastUpdate:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->observers:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->scheduled:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->scheduled:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 24
    sget-wide v0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->timeOfLastUpdate:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 24
    sput-wide p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->timeOfLastUpdate:J

    return-wide p0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;
    .param p1, "x1"    # Lcom/nuance/swype/input/udb/sync/SyncDataProvider;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->syncAndroidDictionary(Lcom/nuance/swype/input/udb/sync/SyncDataProvider;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;
    .param p1, "x1"    # Lcom/nuance/swype/input/udb/sync/SyncDataProvider;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->scheduleSync(Lcom/nuance/swype/input/udb/sync/SyncDataProvider;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private addProviderInternal(Landroid/content/Context;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    .prologue
    .line 51
    new-instance v0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;-><init>(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Landroid/os/Handler;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V

    .line 52
    .local v0, "observer":Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderObserver;
    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->observers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 54
    invoke-virtual {p2}, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    const-wide/16 v2, 0x1e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, p2, v2, v3, v1}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->scheduleSync(Lcom/nuance/swype/input/udb/sync/SyncDataProvider;JLjava/util/concurrent/TimeUnit;)V

    .line 56
    return-void
.end method

.method private scheduleSync(Lcom/nuance/swype/input/udb/sync/SyncDataProvider;JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "provider"    # Lcom/nuance/swype/input/udb/sync/SyncDataProvider;
    .param p2, "delay"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->scheduled:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "scheduleSync(): scheduling: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->scheduled:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager$ProviderRunnable;-><init>(Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 92
    :cond_0
    return-void
.end method

.method private syncAndroidDictionary(Lcom/nuance/swype/input/udb/sync/SyncDataProvider;Landroid/net/Uri;)V
    .locals 13
    .param p1, "provider"    # Lcom/nuance/swype/input/udb/sync/SyncDataProvider;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/nuance/swype/input/udb/sync/SyncDataProvider;->getNewWordsBucket()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    move-result-object v6

    .line 96
    .local v6, "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 97
    .local v8, "changedRowId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v0, v8

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->PROJECTION_QUERY:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 101
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 104
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    const-string/jumbo v0, "word"

    .line 106
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 107
    .local v10, "indexWord":I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "newWord":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 110
    .local v12, "wordLen":I
    const/16 v0, 0x20

    if-ge v12, v0, :cond_2

    const/4 v0, 0x1

    if-gt v12, v0, :cond_3

    .line 112
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 115
    :cond_3
    :try_start_1
    invoke-virtual {v6, v11}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->add(Ljava/lang/String;)V

    .line 116
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 121
    .end local v10    # "indexWord":I
    .end local v11    # "newWord":Ljava/lang/String;
    .end local v12    # "wordLen":I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 119
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/IMEApplication;->notifyNewWordsForScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public addProvider(Landroid/content/Context;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/nuance/swype/input/udb/sync/SyncDataProvider;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->addProviderInternal(Landroid/content/Context;Lcom/nuance/swype/input/udb/sync/SyncDataProvider;)V

    .line 48
    return-void
.end method

.method public deinitialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->scheduled:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 69
    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    .line 70
    .local v0, "observer":Landroid/database/ContentObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 74
    .end local v0    # "observer":Landroid/database/ContentObserver;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 75
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->appContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method protected syncCursor(Landroid/database/Cursor;Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 132
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 139
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 140
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 141
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 144
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 146
    .local v0, "c":C
    const/16 v7, 0x2d

    if-eq v0, v7, :cond_1

    const/16 v7, 0x27

    if-eq v0, v7, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 143
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 151
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "word":Ljava/lang/String;
    add-int/lit8 v1, v2, -0x1

    .line 158
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 159
    .local v6, "wordLen":I
    const/16 v7, 0x20

    if-ge v6, v7, :cond_3

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 163
    invoke-virtual {p2, v5}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->add(Ljava/lang/String;)V

    .line 140
    .end local v2    # "j":I
    .end local v5    # "word":Ljava/lang/String;
    .end local v6    # "wordLen":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 170
    iget-object v7, p0, Lcom/nuance/swype/input/udb/sync/SyncDataProviderManager;->appContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/nuance/swype/input/IMEApplication;->notifyNewWordsForScanning(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    goto :goto_0
.end method
