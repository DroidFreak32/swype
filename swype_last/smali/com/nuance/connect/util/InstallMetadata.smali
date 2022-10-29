.class public Lcom/nuance/connect/util/InstallMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/InstallMetadata$WeakReferenceHandlerCallback;,
        Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;
    }
.end annotation


# static fields
.field private static final ARRAY_STRING_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATA_EXPIRED:I = 0x64

.field private static final DATA_EXPIRED_TIMEOUT:I = 0x7530

.field public static final INSTALL_AVAILABLE:I = 0x0

.field public static final INSTALL_CANCELED:I = 0x8

.field public static final INSTALL_DOWNLOAD:I = 0x3

.field public static final INSTALL_DOWNLOAD_COMPLETE:I = 0x4

.field public static final INSTALL_DOWNLOAD_VERIFIED:I = 0x5

.field public static final INSTALL_FAILED:I = 0x9

.field public static final INSTALL_INSTALLED:I = 0x7

.field public static final INSTALL_PENDING:I = 0x1

.field public static final INSTALL_PENDING_LICENSING:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_REMOVED:I = 0xa

.field public static final INSTALL_REQUEST:I = 0x2

.field public static final INSTALL_UNKNOWN:I = 0xb


# instance fields
.field private final callback:Landroid/os/Handler$Callback;

.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;",
            ">;"
        }
    .end annotation
.end field

.field private volatile dataStoreKey:Ljava/lang/String;

.field private volatile flagTransaction:Z

.field private volatile ignoreTimer:Z

.field private volatile installMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lastUsed:Ljava/util/concurrent/atomic/AtomicLong;

.field private final log:Lcom/nuance/connect/util/Logger$Log;

.field private volatile metadataChanged:Z

.field private final queue:Landroid/os/Handler;

.field private final rwLock:[I

.field private final transactionLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "[\\[\\] ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/util/InstallMetadata;->ARRAY_STRING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->transactionLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->lastUsed:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/util/InstallMetadata$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/util/InstallMetadata$1;-><init>(Lcom/nuance/connect/util/InstallMetadata;)V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->callback:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/nuance/connect/util/InstallMetadata$WeakReferenceHandlerCallback;

    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->callback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3}, Lcom/nuance/connect/util/InstallMetadata$WeakReferenceHandlerCallback;-><init>(Landroid/os/Handler$Callback;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->queue:Landroid/os/Handler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->context:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/nuance/connect/util/InstallMetadata;->dataStoreKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/util/InstallMetadata;)[I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/connect/util/InstallMetadata;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->lastUsed:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/connect/util/InstallMetadata;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->flush()V

    return-void
.end method

.method private checkLoaded()V
    .registers 3

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->resetExpirationTimer()V

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->loadMetadata()V

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private flush()V
    .registers 5

    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->lastUsed:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_e
    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v0
.end method

.method private getPackageList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, ""

    if-nez p2, :cond_d

    const-string/jumbo p2, ","

    :cond_d
    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->listFromSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    goto :goto_16

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadMetadata()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->lastUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    if-eqz v0, :cond_1e

    invoke-direct {p0, v0}, Lcom/nuance/connect/util/InstallMetadata;->loadPersistentData(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    goto :goto_1c

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw v0
.end method

.method private loadPersistentData(Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->dataStoreKey:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/util/Data;->unserializeObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1b

    check-cast v0, Ljava/util/HashMap;

    :goto_1a
    return-object v0

    :cond_1b
    move-object v0, v1

    goto :goto_1a
.end method

.method private pauseExpirationTimer()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->queue:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->ignoreTimer:Z

    return-void
.end method

.method private propWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_2d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    if-eqz p4, :cond_23

    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    :cond_23
    return-void

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "writing property to non-existent package: "

    invoke-interface {v0, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method private resetExpirationTimer()V
    .registers 5

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->lastUsed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->ignoreTimer:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->queue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->queue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->queue:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_21
    return-void
.end method

.method private testPackageInstallsInRange(II)Z
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    if-le p1, p2, :cond_3e

    :goto_6
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_1d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v4, "STEP"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_2f} :catch_38

    move-result v0

    :goto_30
    if-lt v0, p2, :cond_3c

    if-gt v0, p1, :cond_3c

    const/4 v1, 0x1

    move v0, v1

    :goto_36
    move v1, v0

    goto :goto_11

    :catch_38
    move-exception v0

    move v0, v2

    goto :goto_30

    :cond_3b
    return v1

    :cond_3c
    move v0, v1

    goto :goto_36

    :cond_3e
    move v5, p2

    move p2, p1

    move p1, v5

    goto :goto_6
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "package already known: ("

    const-string/jumbo v3, ")"

    invoke-interface {v1, v2, p1, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1d
    return v0

    :cond_1e
    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v3

    :try_start_21
    const-string/jumbo v0, "STARTED"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "STEP"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_47

    iput-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    move v0, v1

    goto :goto_1d

    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public allPackages()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public beginTransaction()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->flagTransaction:Z

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->transactionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->pauseExpirationTimer()V

    return-void
.end method

.method public clear()V
    .registers 3

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public commitTransaction()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->flagTransaction:Z

    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->transactionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iput-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->ignoreTimer:Z

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->resetExpirationTimer()V

    return-void
.end method

.method public deletePackage(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_19

    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    const/4 v0, 0x1

    :goto_18
    return v0

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getAllMetadata()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v2

    :try_start_b
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :catchall_35
    move-exception v0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    return-object v1
.end method

.method public getBoolProp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getInstalledPackageList()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->getPackageList(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntArrayProp(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_d
    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    new-array v0, v0, [I

    move v1, v2

    :goto_1c
    array-length v4, v3

    if-ge v1, v4, :cond_10

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_27} :catch_2a

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :catch_2a
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-array v0, v2, [I

    goto :goto_10
.end method

.method public getIntProp(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/high16 v0, -0x80000000

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public getIntegerArrayProp(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Integer;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_d
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    new-array v0, v0, [Ljava/lang/Integer;

    move v1, v2

    :goto_1c
    array-length v4, v3

    if-ge v1, v4, :cond_10

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_2b} :catch_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :catch_2e
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-array v0, v2, [Ljava/lang/Integer;

    goto :goto_10
.end method

.method public getLongProp(Ljava/lang/String;Ljava/lang/String;)J
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/util/InstallMetadata;->getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_9} :catch_b

    move-result-wide v0

    :goto_a
    return-wide v0

    :catch_b
    move-exception v2

    goto :goto_a
.end method

.method public getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    :try_start_4
    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1d
    monitor-exit v1

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public getProps(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :cond_1e
    return-object v0
.end method

.method public getStep(Ljava/lang/String;)I
    .registers 3

    const-string/jumbo v0, "STEP"

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/util/InstallMetadata;->getIntProp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasMoreInstalls()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->testPackageInstallsInRange(II)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "hasMoreInstalls() : "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public hasMoreRemoves()Z
    .registers 5

    const/16 v0, 0xa

    invoke-direct {p0, v0, v0}, Lcom/nuance/connect/util/InstallMetadata;->testPackageInstallsInRange(II)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "hasMoreRemoves() : "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPackages()Z
    .registers 2

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isAvailable(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v2

    if-le v2, v0, :cond_c

    const/4 v3, 0x5

    if-gt v2, v3, :cond_c

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public isInstalling()Z
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/nuance/connect/util/InstallMetadata;->testPackageInstallsInRange(II)Z

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "isInstalling() : "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method public isInstalling(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getStep(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    const/4 v2, 0x7

    if-ge v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public listFromIntArrayPropContains(Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v3

    :try_start_b
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_3c

    :try_start_21
    invoke-virtual {p0, v0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getIntegerArrayProp(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v5

    array-length v6, v5

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v6, :cond_15

    aget-object v7, v5, v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne p2, v7, :cond_37

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_34} :catch_3f
    .catchall {:try_start_21 .. :try_end_34} :catchall_3c

    goto :goto_15

    :catch_35
    move-exception v0

    goto :goto_15

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3a
    :try_start_3a
    monitor-exit v3

    return-object v2

    :catchall_3c
    move-exception v0

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3c

    throw v0

    :catch_3f
    move-exception v0

    goto :goto_15
.end method

.method public listFromPropEquals(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v3

    :try_start_b
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_3f

    :try_start_21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p2, :cond_15

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_3a} :catch_3b
    .catchall {:try_start_21 .. :try_end_3a} :catchall_3f

    goto :goto_15

    :catch_3b
    move-exception v0

    goto :goto_15

    :cond_3d
    :try_start_3d
    monitor-exit v3

    return-object v2

    :catchall_3f
    move-exception v0

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public listFromPropEquals(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v3

    :try_start_b
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_41

    :try_start_21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_3c} :catch_3d
    .catchall {:try_start_21 .. :try_end_3c} :catchall_41

    goto :goto_15

    :catch_3d
    move-exception v0

    goto :goto_15

    :cond_3f
    :try_start_3f
    monitor-exit v3

    return-object v2

    :catchall_41
    move-exception v0

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_41

    throw v0
.end method

.method public listFromSteps(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v3

    :try_start_b
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string/jumbo v5, "STEP"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :catchall_46
    move-exception v0

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v0

    :cond_49
    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_46

    return-object v2
.end method

.method public propsWrite(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    if-eqz p3, :cond_1c

    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public removeProp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/nuance/connect/util/InstallMetadata;->checkLoaded()V

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    invoke-virtual {p0}, Lcom/nuance/connect/util/InstallMetadata;->saveMetadata()V

    return-void

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "removing property to non-existent package: "

    invoke-interface {v0, v2, p1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public saveMetadata()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/util/InstallMetadata;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;

    if-eqz v0, :cond_28

    iget-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->flagTransaction:Z

    if-nez v1, :cond_28

    iget-boolean v1, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/nuance/connect/util/InstallMetadata;->rwLock:[I

    monitor-enter v1

    :try_start_15
    invoke-interface {v0}, Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;->getDataStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/connect/util/InstallMetadata;->dataStoreKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/util/InstallMetadata;->installMetadata:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/nuance/connect/util/Data;->serializeObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/util/InstallMetadata;->metadataChanged:Z

    monitor-exit v1

    :cond_28
    return-void

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/connect/util/InstallMetadata;->propWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProp(Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 6

    sget-object v0, Lcom/nuance/connect/util/InstallMetadata;->ARRAY_STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProps(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->propsWrite(Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public setStep(Ljava/lang/String;I)V
    .registers 4

    const-string/jumbo v0, "STEP"

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->setProp(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/connect/util/InstallMetadata;->propWrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUnsavedProp(Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 6

    sget-object v0, Lcom/nuance/connect/util/InstallMetadata;->ARRAY_STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUnsavedProps(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nuance/connect/util/InstallMetadata;->propsWrite(Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method public setUnsavedStep(Ljava/lang/String;I)V
    .registers 4

    const-string/jumbo v0, "STEP"

    invoke-virtual {p0, p1, v0, p2}, Lcom/nuance/connect/util/InstallMetadata;->setUnsavedProp(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/InstallMetadata;->getProps(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "STEP"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "FILE_LOCATION"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "TRANSACTION_ID"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/nuance/connect/util/InstallMetadata;->setProps(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
