.class public Lcom/fsck/k9/mail/store/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;,
        Lcom/fsck/k9/mail/store/StorageManager$SamsungGalaxySStorageProvider;,
        Lcom/fsck/k9/mail/store/StorageManager$HtcIncredibleStorageProvider;,
        Lcom/fsck/k9/mail/store/StorageManager$ExternalStorageProvider;,
        Lcom/fsck/k9/mail/store/StorageManager$InternalStorageProvider;,
        Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;,
        Lcom/fsck/k9/mail/store/StorageManager$StorageListener;,
        Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    }
.end annotation


# static fields
.field private static transient instance:Lcom/fsck/k9/mail/store/StorageManager;


# instance fields
.field protected final mApplication:Landroid/app/Application;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/StorageManager$StorageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;",
            "Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/app/Application;)V
    .locals 5
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviders:Ljava/util/Map;

    .line 527
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v2, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviderLocks:Ljava/util/Map;

    .line 534
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/fsck/k9/mail/store/StorageManager;->mListeners:Ljava/util/List;

    .line 573
    if-nez p1, :cond_0

    .line 575
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "No application instance given"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 578
    :cond_0
    iput-object p1, p0, Lcom/fsck/k9/mail/store/StorageManager;->mApplication:Landroid/app/Application;

    .line 593
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    const/4 v3, 0x0

    new-instance v4, Lcom/fsck/k9/mail/store/StorageManager$InternalStorageProvider;

    invoke-direct {v4}, Lcom/fsck/k9/mail/store/StorageManager$InternalStorageProvider;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/fsck/k9/mail/store/StorageManager$ExternalStorageProvider;

    invoke-direct {v4}, Lcom/fsck/k9/mail/store/StorageManager$ExternalStorageProvider;-><init>()V

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 595
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    .line 598
    .local v1, "provider":Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/StorageManager;->mApplication:Landroid/app/Application;

    invoke-interface {v1, v2}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->isSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    invoke-interface {v1, p1}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->init(Landroid/content/Context;)V

    .line 603
    iget-object v2, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviders:Ljava/util/Map;

    invoke-interface {v1}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object v2, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviderLocks:Ljava/util/Map;

    new-instance v3, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;

    invoke-direct {v3}, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 608
    .end local v1    # "provider":Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Application;)Lcom/fsck/k9/mail/store/StorageManager;
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 540
    const-class v1, Lcom/fsck/k9/mail/store/StorageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/mail/store/StorageManager;->instance:Lcom/fsck/k9/mail/store/StorageManager;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Lcom/fsck/k9/mail/store/StorageManager;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/StorageManager;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/fsck/k9/mail/store/StorageManager;->instance:Lcom/fsck/k9/mail/store/StorageManager;

    .line 544
    :cond_0
    sget-object v0, Lcom/fsck/k9/mail/store/StorageManager;->instance:Lcom/fsck/k9/mail/store/StorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isMountPoint(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 555
    invoke-static {}, Ljava/io/File;->listRoots()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 557
    invoke-virtual {v3, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    const/4 v3, 0x1

    .line 562
    :goto_1
    return v3

    .line 555
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/fsck/k9/mail/store/StorageManager$StorageListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/mail/store/StorageManager$StorageListener;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/fsck/k9/mail/store/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    return-void
.end method

.method public getAttachmentDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "providerId"    # Ljava/lang/String;

    .prologue
    .line 652
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/StorageManager;->getProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/fsck/k9/mail/store/StorageManager;->mApplication:Landroid/app/Application;

    invoke-interface {v0, v1, p1}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->getAttachmentDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableProviders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 682
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 684
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    iget-object v5, p0, Lcom/fsck/k9/mail/store/StorageManager;->mApplication:Landroid/app/Application;

    invoke-interface {v3, v5}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 686
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;>;"
    :cond_0
    return-object v2
.end method

.method public getDatabase(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "providerId"    # Ljava/lang/String;

    .prologue
    .line 638
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/StorageManager;->getProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/fsck/k9/mail/store/StorageManager;->mApplication:Landroid/app/Application;

    invoke-interface {v0, v1, p1}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    .locals 1
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    return-object v0
.end method

.method public isReady(Ljava/lang/String;)Z
    .locals 4
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/StorageManager;->getProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    move-result-object v0

    .line 665
    .local v0, "provider":Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    if-nez v0, :cond_0

    .line 667
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Storage-Provider \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v1, 0x0

    .line 670
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/StorageManager;->mApplication:Landroid/app/Application;

    invoke-interface {v0, v1}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->isReady(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method public lockProvider(Ljava/lang/String;)V
    .locals 6
    .param p1, "providerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/StorageManager;->getProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    move-result-object v1

    .line 806
    .local v1, "provider":Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    if-nez v1, :cond_0

    .line 808
    new-instance v3, Lcom/fsck/k9/mail/store/UnavailableStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "StorageProvider not found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/store/UnavailableStorageException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 811
    :cond_0
    iget-object v3, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviderLocks:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;

    .line 812
    .local v2, "sync":Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;
    iget-object v3, v2, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    .line 813
    .local v0, "locked":Z
    if-eqz v0, :cond_1

    if-eqz v0, :cond_3

    iget-boolean v3, v2, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->unmounting:Z

    if-eqz v3, :cond_3

    .line 815
    :cond_1
    if-eqz v0, :cond_2

    .line 817
    iget-object v3, v2, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 819
    :cond_2
    new-instance v3, Lcom/fsck/k9/mail/store/UnavailableStorageException;

    const-string v4, "StorageProvider is unmounting"

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/store/UnavailableStorageException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 821
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/fsck/k9/mail/store/StorageManager;->mApplication:Landroid/app/Application;

    invoke-interface {v1, v3}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->isReady(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 823
    iget-object v3, v2, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 824
    new-instance v3, Lcom/fsck/k9/mail/store/UnavailableStorageException;

    const-string v4, "StorageProvider not ready"

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/store/UnavailableStorageException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 826
    :cond_4
    return-void
.end method

.method public onAfterUnmount(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 719
    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "storage path \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/StorageManager;->resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    move-result-object v1

    .line 721
    if-nez v1, :cond_0

    .line 729
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviderLocks:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/StorageManager;->resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;

    .line 726
    .local v0, "sync":Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;
    iget-object v1, v0, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 727
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->unmounting:Z

    .line 728
    iget-object v1, v0, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public onBeforeUnmount(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 694
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "storage path \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" unmounting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/StorageManager;->resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    move-result-object v3

    .line 696
    .local v3, "provider":Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    if-nez v3, :cond_0

    .line 715
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v5, p0, Lcom/fsck/k9/mail/store/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/store/StorageManager$StorageListener;

    .line 704
    .local v2, "listener":Lcom/fsck/k9/mail/store/StorageManager$StorageListener;
    :try_start_0
    invoke-interface {v3}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/fsck/k9/mail/store/StorageManager$StorageListener;->onUnmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 706
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "k9"

    const-string v6, "Error while notifying StorageListener"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 711
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "listener":Lcom/fsck/k9/mail/store/StorageManager$StorageListener;
    :cond_1
    iget-object v5, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviderLocks:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/StorageManager;->resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;

    .line 712
    .local v4, "sync":Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;
    iget-object v5, v4, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 713
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->unmounting:Z

    .line 714
    iget-object v5, v4, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public onMount(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "readOnly"    # Z

    .prologue
    .line 737
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "storage path \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" mounted readOnly="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    if-eqz p2, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/StorageManager;->resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    move-result-object v3

    .line 744
    .local v3, "provider":Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    if-eqz v3, :cond_0

    .line 748
    iget-object v4, p0, Lcom/fsck/k9/mail/store/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/store/StorageManager$StorageListener;

    .line 752
    .local v2, "listener":Lcom/fsck/k9/mail/store/StorageManager$StorageListener;
    :try_start_0
    invoke-interface {v3}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/fsck/k9/mail/store/StorageManager$StorageListener;->onMount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 754
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "k9"

    const-string v5, "Error while notifying StorageListener"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 761
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "listener":Lcom/fsck/k9/mail/store/StorageManager$StorageListener;
    :cond_2
    iget-object v4, p0, Lcom/fsck/k9/mail/store/StorageManager;->mApplication:Landroid/app/Application;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/fsck/k9/service/MailService;->actionReset(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/fsck/k9/mail/store/StorageManager$StorageListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/mail/store/StorageManager$StorageListener;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/fsck/k9/mail/store/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 789
    return-void
.end method

.method protected resolveProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v2, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    .line 773
    .local v1, "provider":Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/StorageManager;->mApplication:Landroid/app/Application;

    invoke-interface {v1, v2}, Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;->getRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    .end local v1    # "provider":Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unlockProvider(Ljava/lang/String;)V
    .locals 2
    .param p1, "providerId"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/StorageManager;->getProvider(Ljava/lang/String;)Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;

    move-result-object v0

    .line 831
    .local v0, "provider":Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
    iget-object v1, p0, Lcom/fsck/k9/mail/store/StorageManager;->mProviderLocks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;

    .line 832
    iget-object v1, v1, Lcom/fsck/k9/mail/store/StorageManager$SynchronizationAid;->readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 833
    return-void
.end method
