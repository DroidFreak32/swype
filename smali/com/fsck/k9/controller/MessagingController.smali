.class public final Lcom/fsck/k9/controller/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/controller/MessagingController$35;,
        Lcom/fsck/k9/controller/MessagingController$MessageActor;,
        Lcom/fsck/k9/controller/MessagingController$MemorizingListener;,
        Lcom/fsck/k9/controller/MessagingController$Memory;,
        Lcom/fsck/k9/controller/MessagingController$MemorizingState;,
        Lcom/fsck/k9/controller/MessagingController$Command;,
        Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;
    }
.end annotation


# static fields
.field private static final EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

.field private static inst:Lcom/fsck/k9/controller/MessagingController;

.field private static loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static sequencing:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private deletedUids:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Landroid/app/Application;

.field private mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/fsck/k9/controller/MessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;

.field private memorizingListener:Lcom/fsck/k9/controller/MessagingController$MemorizingListener;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    new-array v0, v1, [Lcom/fsck/k9/mail/Message;

    sput-object v0, Lcom/fsck/k9/controller/MessagingController;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/fsck/k9/controller/MessagingController;->inst:Lcom/fsck/k9/controller/MessagingController;

    .line 2879
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4870
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController;->sequencing:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 134
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 140
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 142
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 181
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;->SORT_DATE:Lcom/fsck/k9/controller/MessagingController$SORT_TYPE;

    .line 183
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;

    invoke-direct {v0}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingListener:Lcom/fsck/k9/controller/MessagingController$MemorizingListener;

    .line 195
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->deletedUids:Ljava/util/concurrent/ConcurrentHashMap;

    .line 250
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    .line 251
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mThread:Ljava/lang/Thread;

    .line 252
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mThread:Ljava/lang/Thread;

    const-string v1, "MessagingController"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 254
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingListener:Lcom/fsck/k9/controller/MessagingController$MemorizingListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingListener:Lcom/fsck/k9/controller/MessagingController$MemorizingListener;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 258
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/controller/MessagingController;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommandsSynchronous(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    .prologue
    .line 79
    invoke-static {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .locals 3
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->deletedUids:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$1800()[Lcom/fsck/k9/mail/Message;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/fsck/k9/controller/MessagingController;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 11
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Lcom/fsck/k9/mail/Message;
    .param p4, "x4"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    .line 79
    array-length v0, p3

    new-array v5, v0, [Ljava/lang/String;

    move v0, v6

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    aget-object v2, p3, v0

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    array-length v3, p3

    move v2, v6

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, p3, v2

    if-eqz p4, :cond_1

    invoke-virtual {p4, p1, p2, v4}, Lcom/fsck/k9/controller/MessagingListener;->messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v0, p1, p2, v4}, Lcom/fsck/k9/controller/MessagingListener;->messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_1
    const-string v3, "k9"

    const-string v4, "Failed to delete message because storage is not available - trying again later."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/fsck/k9/mail/store/UnavailableAccountException;

    invoke-direct {v3, v0}, Lcom/fsck/k9/mail/store/UnavailableAccountException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v7, v1

    move-object v8, v2

    :goto_4
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    :try_end_2
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    :try_start_3
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "-NONE-"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fsck/k9/mail/Flag;

    const/4 v2, 0x0

    sget-object v3, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v8, p3, v0, v2}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_3
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v7, v1

    :goto_5
    :try_start_4
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I
    :try_end_4
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    goto :goto_3

    :cond_6
    :try_start_5
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    :try_end_5
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v1

    :try_start_6
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    :cond_7
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    invoke-virtual {v8, p3, v1}, Lcom/fsck/k9/mail/Folder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    :try_end_6
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_8
    move-object v7, v1

    goto :goto_5

    :cond_9
    :try_start_7
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delete policy for account "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDeletePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_a
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    array-length v1, p3

    move v0, v6

    :goto_7
    if-ge v0, v1, :cond_b

    aget-object v2, p3, v0

    new-instance v3, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-direct {v3}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V

    const-string v4, "com.fsck.k9.MessagingController.append"

    iput-object v4, v3, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    iput-object v4, v3, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    :cond_c
    :goto_8
    array-length v0, v5

    :goto_9
    if-ge v6, v0, :cond_14

    aget-object v1, v5, v6

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    if-nez v1, :cond_13

    :cond_d
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_e
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDeletePolicy()I

    move-result v0

    if-ne v0, v9, :cond_11

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_f
    :goto_b
    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
    :try_end_7
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_c
    :try_start_8
    invoke-static {p1, v0}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error deleting message from local store."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :cond_10
    :try_start_9
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    invoke-direct {v1}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V

    const-string v2, "com.fsck.k9.MessagingController.moveOrCopyBulk"

    iput-object v2, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    array-length v2, v5

    add-int/lit8 v2, v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    iget-object v2, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    iget-object v2, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget-object v0, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v3, 0x3

    array-length v4, v5

    invoke-static {v5, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1}, Lcom/fsck/k9/controller/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    goto :goto_b

    :cond_11
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDeletePolicy()I

    move-result v0

    if-ne v0, v10, :cond_12

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Flag;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V

    goto/16 :goto_8

    :cond_12
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delete policy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDeletePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prevents delete from server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_8

    :cond_13
    invoke-static {p1, p2, v1}, Lcom/fsck/k9/controller/MessagingController;->createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController;->deletedUids:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lcom/fsck/k9/mail/store/UnavailableStorageException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_a

    :cond_14
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    return-void

    :catchall_2
    move-exception v0

    move-object v7, v1

    move-object v8, v1

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    move-object v7, v1

    goto/16 :goto_4

    :catchall_4
    move-exception v0

    move-object v7, v1

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v7, v1

    move-object v8, v1

    goto/16 :goto_c

    :catch_4
    move-exception v0

    move-object v7, v1

    goto/16 :goto_c

    :catch_5
    move-exception v0

    move-object v7, v1

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object v2, v8

    goto/16 :goto_3
.end method

.method static synthetic access$200$4c555372(Lcom/fsck/k9/mail/Folder;)V
    .locals 0
    .param p0, "x1"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    return-void
.end method

.method static synthetic access$2000$2fec6881(Lcom/fsck/k9/controller/MessagingController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x3"    # Ljava/lang/Runnable;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/controller/MessagingController;->putBackground$b08a98e(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V
    .locals 10
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 79
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isShowOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020032

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    const v4, 0x7f0a0082

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    const-string v3, "INBOX"

    invoke-static {v2, p1, v3}, Lcom/fsck/k9/activity/MessageList;->actionHandleFolderIntent(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    invoke-static {v3, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    const v5, 0x7f0a0083

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    const v7, 0x7f0a0086

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput v9, v1, Landroid/app/Notification;->flags:I

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v2

    rsub-int v2, v2, -0x1388

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method static synthetic access$2400(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V
    .locals 3
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->isShowOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v0

    rsub-int v1, v0, -0x1388

    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400$1b5d6f6(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 20
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 79
    const/4 v6, 0x0

    const/4 v5, 0x0

    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Synchronizing folder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v6, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :try_start_0
    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SYNC: About to process pending commands for account "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_4
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/fsck/k9/controller/MessagingController;->processPendingCommandsSynchronous(Lcom/fsck/k9/Account;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v4

    :goto_2
    :try_start_2
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "SYNC: About to get local folder "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    :try_start_3
    sget-object v4, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v5, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    array-length v7, v9

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_6

    aget-object v11, v9, v4

    invoke-virtual {v11}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_4
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    const-string v7, "k9"

    const-string v8, "Failure processing command, but allow message sync attempt"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v8, v4

    goto :goto_2

    :cond_6
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v4

    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string v7, "k9"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SYNC: About to get remote folder "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/fsck/k9/controller/MessagingController;->verifyOrCreateRemoteSpecialFolder(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/controller/MessagingListener;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    :cond_8
    :goto_4
    return-void

    :cond_9
    :try_start_7
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "SYNC: About to open remote folder "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-object v4, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v6, v4}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const-string v4, "EXPUNGE_ON_POLL"

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getExpungePolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "SYNC: Expunging folder "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_b
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->expunge()V

    :cond_c
    invoke-virtual {v6}, Lcom/fsck/k9/mail/Folder;->getMessageCount()I

    move-result v11

    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getVisibleLimit()I

    move-result v4

    if-gez v4, :cond_d

    sget v4, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I

    :cond_d
    sget-object v7, Lcom/fsck/k9/controller/MessagingController;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_e

    const-string v7, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "SYNC: Remote message count for folder "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getEarliestPollDate()Ljava/util/Date;

    move-result-object v14

    if-lez v11, :cond_18

    if-lez v4, :cond_11

    const/4 v7, 0x0

    sub-int v4, v11, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :goto_5
    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_f

    const-string v7, "k9"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "SYNC: About to get messages "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " through "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " for folder "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    invoke-direct {v15, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :catch_1
    move-exception v4

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    :goto_7
    :try_start_8
    const-string v4, "k9"

    const-string v8, "synchronizeMailbox"

    invoke-static {v4, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v8

    if-eqz v6, :cond_10

    :try_start_9
    invoke-virtual {v6, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setStatus(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setLastChecked(J)V
    :try_end_9
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_10
    :goto_8
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v8}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    :goto_a
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v4

    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_12
    const/4 v7, 0x0

    :try_start_b
    invoke-virtual {v6, v4, v11, v14, v7}, Lcom/fsck/k9/mail/Folder;->getMessages(IILjava/util/Date;Lcom/fsck/k9/controller/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v4, 0x0

    move v7, v4

    :goto_b
    move/from16 v0, v17

    if-ge v7, v0, :cond_16

    aget-object v18, v16, v7

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    goto :goto_c

    :catchall_1
    move-exception v4

    goto :goto_a

    :cond_13
    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/Message;

    if-eqz v4, :cond_14

    invoke-virtual {v4, v14}, Lcom/fsck/k9/mail/Message;->olderThan(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_14
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v13, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_b

    :cond_16
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string v4, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "SYNC: Got "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " messages for folder "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    goto :goto_d

    :cond_18
    if-gez v11, :cond_19

    new-instance v4, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Message count "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for folder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->syncRemoteDeletions()Z

    move-result v4

    if-eqz v4, :cond_1b

    array-length v10, v9

    const/4 v4, 0x0

    move v7, v4

    :goto_e
    if-ge v7, v10, :cond_1b

    aget-object v14, v9, v7

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1a

    invoke-virtual {v14}, Lcom/fsck/k9/mail/Message;->destroy()V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v14}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_f

    :cond_1a
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_e

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5, v12}, Lcom/fsck/k9/controller/MessagingController;->downloadMessages$1076e9d3(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;)I

    move-result v7

    invoke-static {v5, v6}, Lcom/fsck/k9/controller/MessagingController;->setLocalUnreadCountToRemote$281d1fd6(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;)I

    invoke-static {v5, v6}, Lcom/fsck/k9/controller/MessagingController;->setLocalFlaggedCountToRemote(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_10

    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setLastChecked(J)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setStatus(Ljava/lang/String;)V

    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Done synchronizing folder "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " @ "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " with "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " new messages"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v11, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_11

    :cond_1e
    if-eqz v8, :cond_1f

    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Root cause failure in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/controller/MessagingListener;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v7}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_1f
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_20

    const-string v4, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Done synchronizing folder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_20
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_4

    :catch_2
    move-exception v4

    :try_start_c
    const-string v4, "k9"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not set last checked on folder "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :cond_21
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Failed synchronizing folder "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " @ "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_4

    :catch_3
    move-exception v4

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_7

    :catch_4
    move-exception v4

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_7
.end method

.method static synthetic access$500(Lcom/fsck/k9/controller/MessagingController;Ljava/util/List;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p3, "x3"    # Lcom/fsck/k9/Account;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/controller/MessagingController;->writeUnsyncedMessages(Ljava/util/List;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600$38036a23(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/util/Date;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;
    .param p1, "x1"    # Lcom/fsck/k9/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/fsck/k9/mail/Message;
    .param p4, "x5"    # Ljava/util/Date;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fsck/k9/controller/MessagingController;->shouldImportMessage$14a5376a(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700$38987336(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)Z
    .locals 1
    .param p0, "x1"    # Lcom/fsck/k9/Account;
    .param p1, "x2"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/fsck/k9/controller/MessagingController;->shouldNotifyForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/fsck/k9/controller/MessagingController;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$900$1dc03249(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;ILjava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 1
    .param p0, "x1"    # Landroid/content/Context;
    .param p1, "x2"    # Lcom/fsck/k9/Account;
    .param p2, "x3"    # Lcom/fsck/k9/mail/Message;
    .param p3, "x4"    # I
    .param p4, "x5"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    .line 79
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fsck/k9/controller/MessagingController;->notifyAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;ILjava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    return v0
.end method

.method public static addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    .locals 13
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 2883
    sget-object v4, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v12, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2913
    :goto_0
    return-void

    .line 2889
    :cond_0
    if-nez p1, :cond_1

    .line 2912
    sget-object v4, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 2894
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v4, v4

    mul-int/lit8 v4, v4, 0xa

    invoke-direct {v0, v4}, Ljava/io/CharArrayWriter;-><init>(I)V

    .line 2895
    .local v0, "baos":Ljava/io/CharArrayWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2896
    .local v2, "ps":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2897
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 2899
    invoke-static {p1}, Lcom/fsck/k9/controller/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 2904
    .local v3, "subject":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v5

    sget-boolean v4, Lcom/fsck/k9/K9;->ENABLE_ERROR_FOLDER:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-gtz v4, :cond_4

    :cond_2
    :try_start_2
    sget-object v4, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2912
    :cond_3
    :goto_1
    sget-object v4, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 2904
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/fsck/k9/mail/Message;

    new-instance v7, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v7}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    new-instance v8, Lcom/fsck/k9/mail/internet/TextBody;

    invoke-direct {v8, v5}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->setBody(Lcom/fsck/k9/mail/Body;)V

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    invoke-virtual {v7, v3}, Lcom/fsck/k9/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v5}, Lcom/fsck/k9/mail/internet/MimeMessage;->setInternalDate(Ljava/util/Date;)V

    invoke-virtual {v7, v5}, Lcom/fsck/k9/mail/internet/MimeMessage;->addSentDate(Ljava/util/Date;)V

    new-instance v5, Lcom/fsck/k9/mail/Address;

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v10

    const-string v11, "K9mail internal"

    invoke-direct {v5, v10, v11}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFrom(Lcom/fsck/k9/mail/Address;)V

    const/4 v5, 0x0

    aput-object v7, v6, v5

    invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    const-wide/32 v6, 0xdbba0

    sub-long v6, v8, v6

    invoke-virtual {v4, v6, v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->clearMessagesOlderThan(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v4, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2906
    .end local v0    # "baos":Ljava/io/CharArrayWriter;
    .end local v2    # "ps":Ljava/io/PrintWriter;
    .end local v3    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2908
    .local v1, "it":Ljava/lang/Throwable;
    :try_start_5
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not save error message to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2912
    sget-object v4, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 2904
    .end local v1    # "it":Ljava/lang/Throwable;
    .restart local v0    # "baos":Ljava/io/CharArrayWriter;
    .restart local v2    # "ps":Ljava/io/PrintWriter;
    .restart local v3    # "subject":Ljava/lang/String;
    :catch_1
    move-exception v4

    :try_start_6
    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not save error message to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    sget-object v4, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 2912
    .end local v0    # "baos":Ljava/io/CharArrayWriter;
    .end local v2    # "ps":Ljava/io/PrintWriter;
    .end local v3    # "subject":Ljava/lang/String;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v4

    .line 2904
    .restart local v0    # "baos":Ljava/io/CharArrayWriter;
    .restart local v2    # "ps":Ljava/io/PrintWriter;
    .restart local v3    # "subject":Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_8
    sget-object v5, Lcom/fsck/k9/controller/MessagingController;->loopCatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static closeFolder(Lcom/fsck/k9/mail/Folder;)V
    .locals 0
    .param p0, "f"    # Lcom/fsck/k9/mail/Folder;

    .prologue
    .line 1321
    if-eqz p0, :cond_0

    .line 1323
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Folder;->close()V

    .line 1325
    :cond_0
    return-void
.end method

.method private static createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 199
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/fsck/k9/controller/MessagingController;->createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "folder"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private downloadLargeMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;ILcom/fsck/k9/mail/FetchProfile;)V
    .locals 16
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p3, "localFolder"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p5, "progress"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p6, "unreadBeforeStart"    # I
    .param p7, "newMessages"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "todo"    # I
    .param p9, "fp"    # Lcom/fsck/k9/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder;",
            "Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I",
            "Lcom/fsck/k9/mail/FetchProfile;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1900
    .local p4, "largeMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1902
    .local v5, "folder":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getEarliestPollDate()Ljava/util/Date;

    move-result-object v4

    .line 1904
    .local v4, "earliestDate":Ljava/util/Date;
    sget-boolean v13, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 1905
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SYNC: Fetching large messages for folder "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1907
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/fsck/k9/mail/Message;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p9

    invoke-virtual {v0, v13, v1, v14}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    .line 1908
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fsck/k9/mail/Message;

    .line 1911
    .local v10, "message":Lcom/fsck/k9/mail/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v10, v4}, Lcom/fsck/k9/controller/MessagingController;->shouldImportMessage$14a5376a(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1913
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 1917
    :cond_2
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v13

    if-nez v13, :cond_7

    .line 1925
    invoke-virtual/range {p9 .. p9}, Lcom/fsck/k9/mail/FetchProfile;->clear()V

    .line 1926
    sget-object v13, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY_SANE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, p9

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1933
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/fsck/k9/mail/Message;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p9

    invoke-virtual {v0, v13, v1, v14}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    .line 1936
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/fsck/k9/mail/Message;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    .line 1938
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v9

    .line 1942
    .local v9, "localMessage":Lcom/fsck/k9/mail/Message;
    sget-object v13, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v10, v13}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1950
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getSize()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getMaximumAutoDownloadMessageSize()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 1952
    sget-object v13, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1991
    .end local v9    # "localMessage":Lcom/fsck/k9/mail/Message;
    :cond_3
    :goto_1
    sget-boolean v13, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v13, :cond_4

    .line 1992
    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "About to notify listeners that we got a new large message "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_4
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1997
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v9

    .line 1998
    .restart local v9    # "localMessage":Lcom/fsck/k9/mail/Message;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fsck/k9/controller/MessagingListener;

    .line 2000
    .local v8, "l":Lcom/fsck/k9/controller/MessagingListener;
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v8, v0, v5, v13, v1}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 2002
    sget-object v13, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v9, v13}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2004
    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v5, v9}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_2

    .line 1958
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_6
    sget-object v13, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_1

    .line 1971
    .end local v9    # "localMessage":Lcom/fsck/k9/mail/Message;
    :cond_7
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .local v12, "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1973
    .local v3, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    invoke-static {v10, v12, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->collectParts(Lcom/fsck/k9/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1978
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fsck/k9/mail/Part;

    .line 1980
    .local v11, "part":Lcom/fsck/k9/mail/Part;
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11, v13}, Lcom/fsck/k9/mail/Folder;->fetchPart(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    goto :goto_3

    .line 1983
    .end local v11    # "part":Lcom/fsck/k9/mail/Part;
    :cond_8
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/fsck/k9/mail/Message;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    .line 1985
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v13

    .line 1989
    sget-object v14, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    goto/16 :goto_1

    .line 2009
    .end local v3    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    .end local v12    # "viewables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Part;>;"
    .restart local v9    # "localMessage":Lcom/fsck/k9/mail/Message;
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/fsck/k9/controller/MessagingController;->shouldNotifyForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2011
    invoke-virtual/range {p7 .. p7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2012
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v0, p1

    move/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static {v13, v0, v10, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->notifyAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;ILjava/util/concurrent/atomic/AtomicInteger;)Z

    goto/16 :goto_0

    .line 2016
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "localMessage":Lcom/fsck/k9/mail/Message;
    .end local v10    # "message":Lcom/fsck/k9/mail/Message;
    :cond_a
    sget-boolean v13, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v13, :cond_b

    .line 2017
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SYNC: Done fetching large messages for folder "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2019
    :cond_b
    return-void
.end method

.method private downloadMessages$1076e9d3(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;)I
    .locals 52
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p3, "localFolder"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder;",
            "Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1406
    .local p4, "inputMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getEarliestPollDate()Ljava/util/Date;

    move-result-object v45

    .line 1407
    .local v45, "earliestDate":Ljava/util/Date;
    if-eqz v45, :cond_0

    .line 1409
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1411
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Only syncing messages after "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1414
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1416
    .local v7, "folder":Ljava/lang/String;
    const/16 v33, 0x0

    .line 1419
    .local v33, "unreadBeforeStart":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/fsck/k9/Account;->getStats(Landroid/content/Context;)Lcom/fsck/k9/AccountStats;

    move-result-object v5

    .line 1420
    const/16 v50, 0x0

    .local v50, "stats":Lcom/fsck/k9/AccountStats;
    iget v0, v5, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    move/from16 v33, v0
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    .end local v50    # "stats":Lcom/fsck/k9/AccountStats;
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    .local v12, "syncFlagMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1430
    .local v11, "unsyncedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    new-instance v32, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1432
    .local v32, "newMessages":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v48, Ljava/util/ArrayList;

    move-object/from16 v0, v48

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1434
    .local v48, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .local v46, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/Message;

    .local v6, "message":Lcom/fsck/k9/mail/Message;
    move-object/from16 v5, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    .line 1436
    invoke-direct/range {v5 .. v12}, Lcom/fsck/k9/controller/MessagingController;->evaluateMessageForDownload$62fc3191(Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1423
    .end local v6    # "message":Lcom/fsck/k9/mail/Message;
    .end local v11    # "unsyncedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v12    # "syncFlagMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    .end local v32    # "newMessages":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v46    # "i$":Ljava/util/Iterator;
    .end local v48    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :catch_0
    move-exception v44

    .line 1425
    .local v44, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v5, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to getUnreadMessageCount for account: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v44

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1439
    .end local v44    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v11    # "unsyncedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .restart local v12    # "syncFlagMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    .restart local v32    # "newMessages":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v46    # "i$":Ljava/util/Iterator;
    .restart local v48    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :cond_1
    new-instance v20, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1440
    .local v20, "progress":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int v21, v5, v8

    .line 1441
    .local v21, "todo":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :goto_2
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/controller/MessagingListener;

    .line 1443
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v5, v0, v7, v8, v1}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_2

    .line 1446
    :cond_2
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 1447
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "SYNC: Have "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " unsynced messages"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1449
    :cond_3
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->clear()V

    .line 1450
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1451
    .local v22, "largeMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1452
    .local v23, "smallMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1459
    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1460
    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getVisibleLimit()I

    move-result v51

    .line 1461
    .local v51, "visibleLimit":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v47

    .line 1463
    .local v47, "listSize":I
    if-lez v51, :cond_4

    move/from16 v0, v47

    move/from16 v1, v51

    if-le v0, v1, :cond_4

    .line 1465
    sub-int v5, v47, v51

    move/from16 v0, v47

    invoke-interface {v11, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 1468
    :cond_4
    new-instance v43, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct/range {v43 .. v43}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 1469
    .local v43, "fp":Lcom/fsck/k9/mail/FetchProfile;
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->supportsFetchingFlags()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1471
    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1473
    :cond_5
    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1475
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 1476
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "SYNC: About to fetch "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " unsynced messages for folder "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1479
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getEarliestPollDate()Ljava/util/Date;

    move-result-object v17

    new-instance v24, Ljava/util/ArrayList;

    const/4 v5, 0x5

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v5, Lcom/fsck/k9/controller/MessagingController;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    invoke-interface {v11, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/fsck/k9/mail/Message;

    new-instance v13, Lcom/fsck/k9/controller/MessagingController$10;

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v18, p1

    invoke-direct/range {v13 .. v24}, Lcom/fsck/k9/controller/MessagingController$10;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/Date;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1, v13}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fsck/k9/controller/MessagingController;->writeUnsyncedMessages(Ljava/util/List;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    .line 1483
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_8
    :goto_3
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/Message;

    .line 1485
    .restart local v6    # "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual/range {p3 .. p3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPushState()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, Lcom/fsck/k9/mail/Folder;->getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v49

    .line 1486
    .local v49, "newPushState":Ljava/lang/String;
    if-eqz v49, :cond_8

    .line 1488
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setPushState(Ljava/lang/String;)V

    goto :goto_3

    .line 1491
    .end local v6    # "message":Lcom/fsck/k9/mail/Message;
    .end local v49    # "newPushState":Ljava/lang/String;
    :cond_9
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_a

    .line 1493
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "SYNC: Synced unsynced messages for folder "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1499
    .end local v43    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .end local v47    # "listSize":I
    .end local v51    # "visibleLimit":I
    :cond_a
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_b

    .line 1500
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "SYNC: Have "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " large messages and "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " small messages out of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " unsynced messages"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1505
    :cond_b
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 1512
    new-instance v43, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct/range {v43 .. v43}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 1513
    .restart local v43    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1517
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getEarliestPollDate()Ljava/util/Date;

    move-result-object v29

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "SYNC: Fetching small messages for folder "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_c
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/fsck/k9/mail/Message;

    new-instance v24, Lcom/fsck/k9/controller/MessagingController$11;

    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-object/from16 v28, v20

    move-object/from16 v30, p3

    move/from16 v31, v21

    invoke-direct/range {v24 .. v33}, Lcom/fsck/k9/controller/MessagingController$11;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Date;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;ILjava/util/concurrent/atomic/AtomicInteger;I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    move-object/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "SYNC: Done fetching small messages for folder "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1518
    :cond_d
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1523
    invoke-virtual/range {v43 .. v43}, Lcom/fsck/k9/mail/FetchProfile;->clear()V

    .line 1524
    sget-object v5, Lcom/fsck/k9/mail/FetchProfile$Item;->STRUCTURE:Lcom/fsck/k9/mail/FetchProfile$Item;

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    move-object/from16 v34, p0

    move-object/from16 v35, p1

    move-object/from16 v36, p2

    move-object/from16 v37, p3

    move-object/from16 v38, v22

    move-object/from16 v39, v20

    move/from16 v40, v33

    move-object/from16 v41, v32

    move/from16 v42, v21

    .line 1525
    invoke-direct/range {v34 .. v43}, Lcom/fsck/k9/controller/MessagingController;->downloadLargeMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/concurrent/atomic/AtomicInteger;ILcom/fsck/k9/mail/FetchProfile;)V

    .line 1526
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, v12

    .line 1533
    invoke-direct/range {v15 .. v21}, Lcom/fsck/k9/controller/MessagingController;->refreshLocalMessageFlags(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    .line 1535
    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_e

    .line 1536
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "SYNC: Synced remote messages for folder "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " new messages"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1538
    :cond_e
    new-instance v5, Lcom/fsck/k9/controller/MessageRemovalListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1, v7}, Lcom/fsck/k9/controller/MessageRemovalListener;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->purgeToVisibleLimit(Lcom/fsck/k9/controller/MessageRemovalListener;)V

    .line 1550
    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    return v5
.end method

.method private evaluateMessageForDownload$62fc3191(Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "localFolder"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p4, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p5, "account"    # Lcom/fsck/k9/Account;
    .param p6, "unsyncedMessages"    # Ljava/util/List;
    .param p7, "syncFlagMessages"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1560
    sget-object v4, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1562
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    invoke-direct {p0, p5, p2, p1}, Lcom/fsck/k9/controller/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1570
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v2

    .line 1572
    .local v2, "localMessage":Lcom/fsck/k9/mail/Message;
    if-nez v2, :cond_6

    .line 1574
    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1578
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1579
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message with uid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has not yet been downloaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_2
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1585
    :cond_3
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 1586
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message with uid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is partially or fully downloaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/fsck/k9/mail/Message;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    .line 1591
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v2

    .line 1593
    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1594
    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    sget-object v5, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v5}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 1596
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/controller/MessagingListener;

    .line 1598
    .local v1, "l":Lcom/fsck/k9/controller/MessagingListener;
    sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1601
    invoke-virtual {v1, p5, p2, v2}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_1

    .line 1607
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_6
    sget-object v4, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1609
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 1610
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message with uid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is present in the local store"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_7
    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_PARTIAL:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v2, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1614
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 1615
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message with uid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not downloaded, even partially; trying again"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_8
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1622
    :cond_9
    invoke-virtual {p3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPushState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4, p1}, Lcom/fsck/k9/mail/Folder;->getNewPushState(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v3

    .line 1623
    .local v3, "newPushState":Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 1625
    invoke-virtual {p3, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setPushState(Ljava/lang/String;)V

    .line 1627
    :cond_a
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Application;)Lcom/fsck/k9/controller/MessagingController;
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 268
    const-class v1, Lcom/fsck/k9/controller/MessagingController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fsck/k9/controller/MessagingController;->inst:Lcom/fsck/k9/controller/MessagingController;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/fsck/k9/controller/MessagingController;

    invoke-direct {v0, p0}, Lcom/fsck/k9/controller/MessagingController;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/fsck/k9/controller/MessagingController;->inst:Lcom/fsck/k9/controller/MessagingController;

    .line 272
    :cond_0
    sget-object v0, Lcom/fsck/k9/controller/MessagingController;->inst:Lcom/fsck/k9/controller/MessagingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;
    .locals 2
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    .line 419
    :goto_0
    return-object v0

    .line 417
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 418
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/controller/MessagingListener;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static getMemoryKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "taccount"    # Lcom/fsck/k9/Account;
    .param p1, "tfolderName"    # Ljava/lang/String;

    .prologue
    .line 5198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 2110
    move-object v1, p0

    .line 2111
    .local v1, "rootCause":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 2114
    .local v0, "nextCause":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2115
    if-eqz v0, :cond_1

    .line 2117
    move-object v1, v0

    .line 2120
    :cond_1
    if-nez v0, :cond_0

    .line 2121
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v1, 0x0

    .line 231
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->createMessageKey(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "messKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController;->deletedUids:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static notifyAccount(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;ILjava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "message"    # Lcom/fsck/k9/mail/Message;
    .param p3, "previousUnreadMessageCount"    # I
    .param p4, "newMessageCount"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    .line 4655
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_0

    .line 4657
    const/16 v19, 0x0

    .line 4744
    :goto_0
    return v19

    .line 4661
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 4662
    .local v10, "messageNotice":Ljava/lang/StringBuilder;
    const-string v19, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 4665
    .local v9, "keyguardService":Landroid/app/KeyguardManager;
    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 4667
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getFrom()[Lcom/fsck/k9/mail/Address;

    move-result-object v7

    .line 4668
    .local v7, "fromAddrs":[Lcom/fsck/k9/mail/Address;
    array-length v0, v7

    move/from16 v19, v0

    if-lez v19, :cond_a

    const/16 v19, 0x0

    aget-object v19, v7, v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/Address;->toFriendly()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4669
    .local v6, "from":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v17

    .line 4670
    .local v17, "subject":Ljava/lang/String;
    if-nez v17, :cond_1

    .line 4672
    const v19, 0x7f0a0069

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 4675
    :cond_1
    if-eqz v6, :cond_2

    .line 4678
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/fsck/k9/Account;->isAnIdentity([Lcom/fsck/k9/mail/Address;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 4680
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4714
    .end local v6    # "from":Ljava/lang/String;
    .end local v7    # "fromAddrs":[Lcom/fsck/k9/mail/Address;
    .end local v17    # "subject":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/fsck/k9/K9;->keyguardPrivacy()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v19

    if-nez v19, :cond_4

    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-nez v19, :cond_5

    .line 4716
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10    # "messageNotice":Ljava/lang/StringBuilder;
    const v19, 0x7f0a007c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4719
    .restart local v10    # "messageNotice":Ljava/lang/StringBuilder;
    :cond_5
    const-string v19, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 4721
    .local v13, "notifMgr":Landroid/app/NotificationManager;
    new-instance v12, Landroid/app/Notification;

    const v19, 0x7f020046

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-direct {v12, v0, v10, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 4722
    .local v12, "notif":Landroid/app/Notification;
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    add-int v19, v19, p3

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->number:I

    .line 4724
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/activity/FolderList;->actionHandleNotification(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 4725
    .local v8, "i":Landroid/content/Intent;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 4727
    .local v14, "pi":Landroid/app/PendingIntent;
    const v19, 0x7f0a007e

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v12, Landroid/app/Notification;->number:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4728
    .local v4, "accountNotice":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v4, v10, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4732
    const/16 v16, 0x0

    .line 4733
    .local v16, "ringAndVibrate":Z
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->isRingNotified()Z

    move-result v19

    if-nez v19, :cond_6

    .line 4735
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setRingNotified(Z)V

    .line 4736
    const/16 v16, 0x1

    .line 4739
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getNotificationSetting()Lcom/fsck/k9/NotificationSetting;

    move-result-object v11

    .line 4741
    .local v11, "n":Lcom/fsck/k9/NotificationSetting;
    invoke-virtual {v11}, Lcom/fsck/k9/NotificationSetting;->shouldRing()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-virtual {v11}, Lcom/fsck/k9/NotificationSetting;->getRingtone()Ljava/lang/String;

    move-result-object v19

    :goto_3
    invoke-virtual {v11}, Lcom/fsck/k9/NotificationSetting;->shouldVibrate()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-virtual {v11}, Lcom/fsck/k9/NotificationSetting;->getVibration()[J

    move-result-object v20

    :goto_4
    invoke-virtual {v11}, Lcom/fsck/k9/NotificationSetting;->isLed()Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-virtual {v11}, Lcom/fsck/k9/NotificationSetting;->getLedColor()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    :goto_5
    invoke-static {}, Lcom/fsck/k9/K9;->isQuietTime()Z

    move-result v22

    if-nez v22, :cond_9

    if-eqz v16, :cond_8

    if-eqz v19, :cond_7

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, v19

    iput-object v0, v12, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/16 v19, 0x5

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->audioStreamType:I

    :cond_7
    if-eqz v20, :cond_8

    move-object/from16 v0, v20

    iput-object v0, v12, Landroid/app/Notification;->vibrate:[J

    :cond_8
    if-eqz v21, :cond_9

    iget v0, v12, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->ledARGB:I

    const/16 v19, 0x1f4

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->ledOnMS:I

    const/16 v19, 0x7d0

    move/from16 v0, v19

    iput v0, v12, Landroid/app/Notification;->ledOffMS:I

    .line 4743
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4744
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 4668
    .end local v4    # "accountNotice":Ljava/lang/String;
    .end local v8    # "i":Landroid/content/Intent;
    .end local v11    # "n":Lcom/fsck/k9/NotificationSetting;
    .end local v12    # "notif":Landroid/app/Notification;
    .end local v13    # "notifMgr":Landroid/app/NotificationManager;
    .end local v14    # "pi":Landroid/app/PendingIntent;
    .end local v16    # "ringAndVibrate":Z
    .restart local v7    # "fromAddrs":[Lcom/fsck/k9/mail/Address;
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 4685
    .restart local v6    # "from":Ljava/lang/String;
    .restart local v17    # "subject":Ljava/lang/String;
    :cond_b
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->isNotifySelfNewMail()Z

    move-result v19

    if-nez v19, :cond_c

    .line 4687
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 4690
    :cond_c
    sget-object v19, Lcom/fsck/k9/mail/Message$RecipientType;->TO:Lcom/fsck/k9/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Message;->getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;

    move-result-object v15

    .line 4691
    .local v15, "rcpts":[Lcom/fsck/k9/mail/Address;
    array-length v0, v15

    move/from16 v19, v0

    if-lez v19, :cond_d

    const/16 v19, 0x0

    aget-object v19, v15, v19

    invoke-virtual/range {v19 .. v19}, Lcom/fsck/k9/mail/Address;->toFriendly()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4692
    .local v18, "to":Ljava/lang/String;
    :goto_7
    if-eqz v18, :cond_e

    .line 4694
    const v19, 0x7f0a00a6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 4706
    .end local v6    # "from":Ljava/lang/String;
    .end local v7    # "fromAddrs":[Lcom/fsck/k9/mail/Address;
    .end local v15    # "rcpts":[Lcom/fsck/k9/mail/Address;
    .end local v17    # "subject":Ljava/lang/String;
    .end local v18    # "to":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 4708
    .local v5, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v19, "k9"

    const-string v20, "Unable to get message information for notification."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 4691
    .end local v5    # "e":Lcom/fsck/k9/mail/MessagingException;
    .restart local v6    # "from":Ljava/lang/String;
    .restart local v7    # "fromAddrs":[Lcom/fsck/k9/mail/Address;
    .restart local v15    # "rcpts":[Lcom/fsck/k9/mail/Address;
    .restart local v17    # "subject":Ljava/lang/String;
    :cond_d
    const/16 v18, 0x0

    goto :goto_7

    .line 4698
    .restart local v18    # "to":Ljava/lang/String;
    :cond_e
    const v19, 0x7f0a006a

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 4741
    .end local v6    # "from":Ljava/lang/String;
    .end local v7    # "fromAddrs":[Lcom/fsck/k9/mail/Address;
    .end local v15    # "rcpts":[Lcom/fsck/k9/mail/Address;
    .end local v17    # "subject":Ljava/lang/String;
    .end local v18    # "to":Ljava/lang/String;
    .restart local v4    # "accountNotice":Ljava/lang/String;
    .restart local v8    # "i":Landroid/content/Intent;
    .restart local v11    # "n":Lcom/fsck/k9/NotificationSetting;
    .restart local v12    # "notif":Landroid/app/Notification;
    .restart local v13    # "notifMgr":Landroid/app/NotificationManager;
    .restart local v14    # "pi":Landroid/app/PendingIntent;
    .restart local v16    # "ringAndVibrate":Z
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_5

    :cond_12
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_6
.end method

.method private processPendingAppend(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .locals 16
    .param p1, "command"    # Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2299
    const/4 v10, 0x0

    .line 2300
    .local v10, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    const/4 v5, 0x0

    .line 2304
    .local v5, "localFolder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v1, v13, v14

    .line 2305
    .local v1, "folder":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v12, v13, v14

    .line 2307
    .local v12, "uid":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_0

    .line 2441
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2442
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2443
    :goto_0
    return-void

    .line 2312
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v13

    .line 2313
    invoke-virtual {v13, v1}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-result-object v5

    .line 2314
    invoke-virtual {v5, v12}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2316
    .local v6, "localMessage":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    if-nez v6, :cond_1

    .line 2441
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2442
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 2321
    :cond_1
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v13

    .line 2322
    invoke-virtual {v13, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v10

    .line 2323
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 2325
    sget-object v13, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {v10, v13}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-nez v13, :cond_2

    .line 2441
    invoke-static {v10}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2442
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 2330
    :cond_2
    :try_start_3
    sget-object v13, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v10, v13}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2331
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v13

    sget-object v14, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v13, v14, :cond_3

    .line 2441
    invoke-static {v10}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2442
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 2336
    :cond_3
    const/4 v11, 0x0

    .line 2337
    .local v11, "remoteMessage":Lcom/fsck/k9/mail/Message;
    :try_start_4
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v13

    const-string v14, "K9LOCAL:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 2339
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v11

    .line 2342
    :cond_4
    if-nez v11, :cond_8

    .line 2344
    sget-object v13, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v6, v13}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2346
    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Local message with uid "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " has flag "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " already set, checking for remote message with  same message id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-virtual {v10, v6}, Lcom/fsck/k9/mail/Folder;->getUidFromMessageId(Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v8

    .line 2350
    .local v8, "rUid":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 2352
    const-string v13, "k9"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Local message has flag "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " already set, and there is a remote message with  uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", assuming message was already copied and aborting this copy"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    const/4 v7, 0x0

    .line 2356
    .local v7, "oldUid":Ljava/lang/String;
    invoke-virtual {v6, v8}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setUid(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->changeUid(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    .line 2358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2360
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2441
    .end local v1    # "folder":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "localMessage":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .end local v7    # "oldUid":Ljava/lang/String;
    .end local v8    # "rUid":Ljava/lang/String;
    .end local v11    # "remoteMessage":Lcom/fsck/k9/mail/Message;
    .end local v12    # "uid":Ljava/lang/String;
    :catchall_0
    move-exception v13

    invoke-static {v10}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2442
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v13

    .line 2441
    .restart local v1    # "folder":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "localMessage":Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;
    .restart local v7    # "oldUid":Ljava/lang/String;
    .restart local v8    # "rUid":Ljava/lang/String;
    .restart local v11    # "remoteMessage":Lcom/fsck/k9/mail/Message;
    .restart local v12    # "uid":Ljava/lang/String;
    :cond_5
    invoke-static {v10}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2442
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_0

    .line 2366
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "oldUid":Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v13, "k9"

    const-string v14, "No remote message with message-id found, proceeding with append"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    .end local v8    # "rUid":Ljava/lang/String;
    :cond_7
    new-instance v2, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v2}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 2375
    .local v2, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v13, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v2, v13}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2376
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/fsck/k9/mail/Message;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v2, v14}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    .line 2377
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    const/4 v7, 0x0

    .line 2378
    .restart local v7    # "oldUid":Ljava/lang/String;
    sget-object v13, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2379
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/fsck/k9/mail/Message;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v10, v13}, Lcom/fsck/k9/mail/Folder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    .line 2381
    invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->changeUid(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2384
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    goto :goto_2

    .line 2395
    .end local v2    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "oldUid":Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v2}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 2396
    .restart local v2    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v13, Lcom/fsck/k9/mail/FetchProfile$Item;->ENVELOPE:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v2, v13}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2397
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/fsck/k9/mail/Message;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v2, v14}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    .line 2398
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getInternalDate()Ljava/util/Date;

    move-result-object v4

    .line 2399
    .local v4, "localDate":Ljava/util/Date;
    invoke-virtual {v11}, Lcom/fsck/k9/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v9

    .line 2400
    .local v9, "remoteDate":Ljava/util/Date;
    if-eqz v9, :cond_a

    invoke-virtual {v9, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v13

    if-lez v13, :cond_a

    .line 2407
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->destroy()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2441
    .end local v4    # "localDate":Ljava/util/Date;
    .end local v9    # "remoteDate":Ljava/util/Date;
    :cond_9
    :goto_3
    invoke-static {v10}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2442
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_0

    .line 2414
    .restart local v4    # "localDate":Ljava/util/Date;
    .restart local v9    # "remoteDate":Ljava/util/Date;
    :cond_a
    :try_start_6
    invoke-virtual {v2}, Lcom/fsck/k9/mail/FetchProfile;->clear()V

    .line 2415
    new-instance v2, Lcom/fsck/k9/mail/FetchProfile;

    .end local v2    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    invoke-direct {v2}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 2416
    .restart local v2    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v13, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v2, v13}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2417
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/fsck/k9/mail/Message;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v2, v14}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    .line 2418
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    .line 2420
    sget-object v13, Lcom/fsck/k9/mail/Flag;->X_REMOTE_COPY_STARTED:Lcom/fsck/k9/mail/Flag;

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2422
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/fsck/k9/mail/Message;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v10, v13}, Lcom/fsck/k9/mail/Folder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    .line 2423
    invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->changeUid(Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;)V

    .line 2424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2426
    invoke-virtual {v6}, Lcom/fsck/k9/mail/store/LocalStore$LocalMessage;->getUid()Ljava/lang/String;

    goto :goto_4

    .line 2428
    :cond_b
    if-eqz v9, :cond_9

    .line 2430
    sget-object v13, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2431
    const-string v13, "EXPUNGE_IMMEDIATELY"

    invoke-virtual/range {p2 .. p2}, Lcom/fsck/k9/Account;->getExpungePolicy()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2433
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Folder;->expunge()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method private processPendingCommands(Lcom/fsck/k9/Account;)V
    .locals 2
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 2141
    const-string v0, "processPendingCommands"

    new-instance v1, Lcom/fsck/k9/controller/MessagingController$12;

    invoke-direct {v1, p0, p1}, Lcom/fsck/k9/controller/MessagingController$12;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground$b08a98e(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2167
    return-void
.end method

.method private processPendingCommandsSynchronous(Lcom/fsck/k9/Account;)V
    .locals 24
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2171
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v10

    .line 2172
    .local v10, "localStore":Lcom/fsck/k9/mail/store/LocalStore;
    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/LocalStore;->getPendingCommands()Ljava/util/ArrayList;

    move-result-object v6

    .line 2174
    .local v6, "commands":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;>;"
    const/4 v13, 0x0

    .line 2175
    .local v13, "progress":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2176
    .local v14, "todo":I
    if-nez v14, :cond_1

    .line 2281
    :cond_0
    return-void

    .line 2181
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/controller/MessagingListener;

    .line 2183
    .local v9, "l":Lcom/fsck/k9/controller/MessagingListener;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandsProcessing(Lcom/fsck/k9/Account;)V

    .line 2184
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v9, v0, v15, v1, v14}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_0

    .line 2187
    .end local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_2
    const/4 v12, 0x0

    .line 2190
    .local v12, "processingCommand":Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    :try_start_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_25

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    .line 2192
    .local v4, "command":Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    move-object v12, v4

    .line 2193
    sget-boolean v15, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v15, :cond_4

    .line 2194
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Processing pending command \'"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2196
    :cond_4
    iget-object v15, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    const-string v16, "\\."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2197
    array-length v0, v15

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    aget-object v5, v15, v16

    .line 2198
    .local v5, "commandTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fsck/k9/controller/MessagingListener;

    .line 2200
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v5}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2269
    .end local v4    # "command":Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .end local v5    # "commandTitle":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 2271
    .local v11, "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    .line 2272
    const-string v15, "k9"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Could not process command \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2273
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2277
    .end local v11    # "me":Lcom/fsck/k9/mail/MessagingException;
    :catchall_0
    move-exception v15

    move-object/from16 v16, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fsck/k9/controller/MessagingListener;

    .line 2279
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V

    goto :goto_2

    .line 2209
    .end local v7    # "i$":Ljava/util/Iterator;
    .restart local v4    # "command":Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .restart local v5    # "commandTitle":Ljava/lang/String;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_2
    const-string v15, "com.fsck.k9.MessagingController.append"

    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 2211
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/fsck/k9/controller/MessagingController;->processPendingAppend(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V

    .line 2241
    :cond_6
    :goto_3
    invoke-virtual {v10, v4}, Lcom/fsck/k9/mail/store/LocalStore;->removePendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V

    .line 2242
    sget-boolean v15, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v15, :cond_7

    .line 2243
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Done processing pending command \'"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2260
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 2261
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/controller/MessagingListener;

    .line 2263
    .restart local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15, v13, v14}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 2264
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandCompleted$529ef42(Lcom/fsck/k9/Account;)V
    :try_end_3
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2213
    .end local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    :cond_8
    :try_start_4
    const-string v15, "com.fsck.k9.MessagingController.setFlagBulk"

    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 2215
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/fsck/k9/controller/MessagingController;->processPendingSetFlag(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    :try_end_4
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 2245
    :catch_1
    move-exception v11

    .line 2247
    .restart local v11    # "me":Lcom/fsck/k9/mail/MessagingException;
    :try_start_5
    invoke-virtual {v11}, Lcom/fsck/k9/mail/MessagingException;->isPermanentFailure()Z

    move-result v15

    if-eqz v15, :cond_23

    .line 2249
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    .line 2250
    const-string v15, "k9"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Failure of command \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' was permanent, removing command from queue"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    invoke-virtual {v10, v12}, Lcom/fsck/k9/mail/store/LocalStore;->removePendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2260
    add-int/lit8 v13, v13, 0x1

    .line 2261
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/controller/MessagingListener;

    .line 2263
    .restart local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15, v13, v14}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 2264
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandCompleted$529ef42(Lcom/fsck/k9/Account;)V
    :try_end_6
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 2217
    .end local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .end local v11    # "me":Lcom/fsck/k9/mail/MessagingException;
    :cond_9
    :try_start_7
    const-string v15, "com.fsck.k9.MessagingController.setFlag"

    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 2219
    iget-object v15, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v17, v16, v17

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_a

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "processPendingSetFlagOld: folder = "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ", uid = "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_a
    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v18, 0x2

    aget-object v16, v16, v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v19, 0x3

    aget-object v16, v16, v19

    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;
    :try_end_7
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v19

    const/16 v16, 0x0

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v15

    if-nez v15, :cond_b

    :try_start_9
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V
    :try_end_9
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 2260
    :catchall_1
    move-exception v15

    add-int/lit8 v13, v13, 0x1

    .line 2261
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8    # "i$":Ljava/util/Iterator;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_24

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/controller/MessagingListener;

    .line 2263
    .restart local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1, v13, v14}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    .line 2264
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandCompleted$529ef42(Lcom/fsck/k9/Account;)V
    :try_end_a
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 2219
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "l":Lcom/fsck/k9/controller/MessagingListener;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_b
    :try_start_b
    sget-object v15, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v15

    sget-object v20, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v0, v20

    if-eq v15, v0, :cond_c

    :try_start_c
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V
    :try_end_c
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_3

    :cond_c
    const/4 v15, 0x0

    :try_start_d
    const-string v20, "K9LOCAL:"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_d

    invoke-virtual/range {v16 .. v17}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result-object v15

    :cond_d
    if-nez v15, :cond_e

    :try_start_e
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V
    :try_end_e
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_3

    :cond_e
    :try_start_f
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_3

    :catchall_2
    move-exception v15

    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v15

    .line 2221
    :cond_f
    const-string v15, "com.fsck.k9.MessagingController.markAllAsRead"

    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 2223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/fsck/k9/controller/MessagingController;->processPendingMarkAllAsRead(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V

    goto/16 :goto_3

    .line 2225
    :cond_10
    const-string v15, "com.fsck.k9.MessagingController.moveOrCopyBulk"

    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 2227
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/fsck/k9/controller/MessagingController;->processPendingMoveOrCopy(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V

    goto/16 :goto_3

    .line 2229
    :cond_11
    const-string v15, "com.fsck.k9.MessagingController.moveOrCopy"

    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 2231
    iget-object v15, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v17, v15, v16

    iget-object v15, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v18, v15, v16

    iget-object v15, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v19, v15, v16

    iget-object v15, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/16 v16, 0x3

    aget-object v16, v15, v16

    const/4 v15, 0x0

    if-eqz v16, :cond_27

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    move/from16 v16, v15

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v20

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v15

    if-nez v15, :cond_12

    new-instance v15, Lcom/fsck/k9/mail/MessagingException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "processPendingMoveOrCopyOld: remoteFolder "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " does not exist"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v15

    :cond_12
    sget-object v15, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v15

    sget-object v22, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, v22

    if-eq v15, v0, :cond_13

    new-instance v15, Lcom/fsck/k9/mail/MessagingException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "processPendingMoveOrCopyOld: could not open remoteSrcFolder "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " read/write"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v15

    :cond_13
    const/4 v15, 0x0

    const-string v22, "K9LOCAL:"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_14

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v15

    :cond_14
    if-nez v15, :cond_15

    new-instance v15, Lcom/fsck/k9/mail/MessagingException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "processPendingMoveOrCopyOld: remoteMessage "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " does not exist"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v15

    :cond_15
    sget-boolean v22, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v22, :cond_16

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "processPendingMoveOrCopyOld: source folder = "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", uid = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v22, ", destination folder = "

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v22, ", isCopy = "

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_16
    if-nez v16, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/fsck/k9/mail/Message;->delete(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/Folder;->close()V

    goto/16 :goto_3

    :cond_17
    sget-object v18, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v18

    sget-object v19, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_18

    new-instance v15, Lcom/fsck/k9/mail/MessagingException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v18, "processPendingMoveOrCopyOld: could not open remoteDestFolder "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " read/write"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v15

    :cond_18
    if-eqz v16, :cond_19

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v15, v16, v17

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Folder;->copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    :goto_8
    invoke-virtual/range {v20 .. v20}, Lcom/fsck/k9/mail/Folder;->close()V

    invoke-virtual/range {v21 .. v21}, Lcom/fsck/k9/mail/Folder;->close()V

    goto/16 :goto_3

    :cond_19
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/fsck/k9/mail/Message;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v15, v16, v17

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/Folder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    goto :goto_8

    .line 2233
    :cond_1a
    const-string v15, "com.fsck.k9.MessagingController.emptyTrash"

    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 2235
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    :try_end_10
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v16

    :try_start_11
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v15

    if-eqz v15, :cond_1d

    sget-object v15, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/fsck/k9/mail/Flag;

    const/16 v17, 0x0

    sget-object v18, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    aput-object v18, v15, v17

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Flag;Z)V

    const-string v15, "EXPUNGE_IMMEDIATELY"

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getExpungePolicy()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->expunge()V

    :cond_1b
    sget-boolean v15, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v15, :cond_1c

    const-string v15, "k9"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Folder "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " was last synced @ "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    new-instance v18, Ljava/util/Date;

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->getLastChecked()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v17, "sync"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v17, Lcom/fsck/k9/controller/MessagingController$30;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController$30;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground$b08a98e(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v17, "compact:"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v17, Lcom/fsck/k9/controller/MessagingController$31;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/fsck/k9/controller/MessagingController$31;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground$b08a98e(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :cond_1d
    :try_start_12
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_3

    :catchall_3
    move-exception v15

    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v15

    .line 2237
    :cond_1e
    const-string v15, "com.fsck.k9.MessagingController.expunge"

    iget-object v0, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2239
    iget-object v15, v4, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    sget-boolean v16, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v16, :cond_1f

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "processPendingExpunge: folder = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
    :try_end_12
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result-object v16

    :try_start_13
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-result v17

    if-nez v17, :cond_20

    :try_start_14
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V
    :try_end_14
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_3

    :cond_20
    :try_start_15
    sget-object v17, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual/range {v16 .. v17}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v17

    sget-object v18, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_21

    :try_start_16
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V
    :try_end_16
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_3

    :cond_21
    :try_start_17
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/mail/Folder;->expunge()V

    sget-boolean v17, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v17, :cond_22

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "processPendingExpunge: complete for folder = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :cond_22
    :try_start_18
    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_3

    :catchall_4
    move-exception v15

    invoke-static/range {v16 .. v16}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v15
    :try_end_18
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 2255
    .restart local v11    # "me":Lcom/fsck/k9/mail/MessagingException;
    :cond_23
    :try_start_19
    throw v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 2264
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "me":Lcom/fsck/k9/mail/MessagingException;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_24
    :try_start_1a
    throw v15
    :try_end_1a
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 2267
    .end local v4    # "command":Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .end local v5    # "commandTitle":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_25
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fsck/k9/controller/MessagingListener;

    .line 2279
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/fsck/k9/controller/MessagingListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V

    goto :goto_9

    :cond_26
    throw v16

    .end local v7    # "i$":Ljava/util/Iterator;
    .restart local v4    # "command":Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .restart local v5    # "commandTitle":Ljava/lang/String;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_27
    move/from16 v16, v15

    goto/16 :goto_7
.end method

.method private processPendingMarkAllAsRead(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .locals 13
    .param p1, "command"    # Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .param p2, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 2820
    iget-object v10, p1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v2, v10, v11

    .line 2821
    .local v2, "folder":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2822
    .local v8, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    const/4 v6, 0x0

    .line 2825
    .local v6, "localFolder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    :try_start_0
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v10

    .line 2826
    invoke-virtual {v10, v2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object v6, v0

    .line 2827
    sget-object v10, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v6, v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2828
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;

    move-result-object v1

    .line 2829
    .local v1, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 2831
    .local v7, "message":Lcom/fsck/k9/mail/Message;
    sget-object v10, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2833
    sget-object v10, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2834
    iget-object v10, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2868
    .end local v1    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    .end local v7    # "message":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v9

    .line 2870
    .local v9, "uoe":Ljava/lang/UnsupportedOperationException;
    :try_start_1
    const-string v10, "k9"

    const-string v11, "Could not mark all server-side as read because store doesn\'t support operation"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2874
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2875
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2876
    .end local v9    # "uoe":Ljava/lang/UnsupportedOperationException;
    :goto_2
    return-void

    .line 2829
    .restart local v1    # "arr$":[Lcom/fsck/k9/mail/Message;
    .restart local v5    # "len$":I
    .restart local v7    # "message":Lcom/fsck/k9/mail/Message;
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 2840
    .end local v7    # "message":Lcom/fsck/k9/mail/Message;
    :cond_1
    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v6, v10}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    .line 2841
    iget-object v10, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 2874
    .end local v1    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    :catchall_0
    move-exception v10

    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2875
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v10

    .line 2847
    .restart local v1    # "arr$":[Lcom/fsck/k9/mail/Message;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "len$":I
    :cond_2
    :try_start_3
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-eqz v10, :cond_3

    .line 2874
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2875
    invoke-static {v12}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_2

    .line 2852
    :cond_3
    :try_start_4
    invoke-virtual {p2}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v10

    .line 2853
    invoke-virtual {v10, v2}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v8

    .line 2855
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->exists()Z
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-nez v10, :cond_4

    .line 2874
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2875
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_2

    .line 2859
    :cond_4
    :try_start_5
    sget-object v10, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v8, v10}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2860
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v10

    sget-object v11, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq v10, v11, :cond_5

    .line 2874
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2875
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_2

    .line 2865
    :cond_5
    const/4 v10, 0x1

    :try_start_6
    new-array v10, v10, [Lcom/fsck/k9/mail/Flag;

    const/4 v11, 0x0

    sget-object v12, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Flag;Z)V

    .line 2866
    invoke-virtual {v8}, Lcom/fsck/k9/mail/Folder;->close()V
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2874
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2875
    invoke-static {v8}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_2
.end method

.method private static processPendingMoveOrCopy(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .locals 14
    .param p0, "command"    # Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 2472
    const/4 v7, 0x0

    .line 2473
    .local v7, "remoteSrcFolder":Lcom/fsck/k9/mail/Folder;
    const/4 v6, 0x0

    .line 2476
    .local v6, "remoteDestFolder":Lcom/fsck/k9/mail/Folder;
    :try_start_0
    iget-object v11, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v9, v11, v12

    .line 2477
    .local v9, "srcFolder":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_0

    .line 2551
    invoke-static {v13}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2552
    invoke-static {v13}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2553
    :goto_0
    return-void

    .line 2481
    :cond_0
    :try_start_1
    iget-object v11, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v0, v11, v12

    .line 2482
    .local v0, "destFolder":Ljava/lang/String;
    iget-object v11, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v4, v11, v12

    .line 2483
    .local v4, "isCopyS":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v8

    .line 2484
    .local v8, "remoteStore":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v8, v9}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v7

    .line 2486
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2487
    .local v5, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_1
    iget-object v11, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v11, v11

    if-ge v2, v11, :cond_2

    .line 2489
    iget-object v11, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v10, v11, v2

    .line 2490
    .local v10, "uid":Ljava/lang/String;
    const-string v11, "K9LOCAL:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 2492
    invoke-virtual {v7, v10}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2487
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2496
    .end local v10    # "uid":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 2497
    .local v3, "isCopy":Z
    if-eqz v4, :cond_3

    .line 2499
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2502
    :cond_3
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 2504
    new-instance v11, Lcom/fsck/k9/mail/MessagingException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "processingPendingMoveOrCopy: remoteFolder "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " does not exist"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2551
    .end local v0    # "destFolder":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "isCopy":Z
    .end local v4    # "isCopyS":Ljava/lang/String;
    .end local v5    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v8    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .end local v9    # "srcFolder":Ljava/lang/String;
    :catchall_0
    move-exception v11

    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2552
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v11

    .line 2506
    .restart local v0    # "destFolder":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "isCopy":Z
    .restart local v4    # "isCopyS":Ljava/lang/String;
    .restart local v5    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .restart local v8    # "remoteStore":Lcom/fsck/k9/mail/Store;
    .restart local v9    # "srcFolder":Ljava/lang/String;
    :cond_4
    :try_start_2
    sget-object v11, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v7, v11}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2507
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v11

    sget-object v12, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    if-eq v11, v12, :cond_5

    .line 2509
    new-instance v11, Lcom/fsck/k9/mail/MessagingException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "processingPendingMoveOrCopy: could not open remoteSrcFolder "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " read/write"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    throw v11

    .line 2512
    :cond_5
    sget-boolean v11, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v11, :cond_6

    .line 2513
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "processingPendingMoveOrCopy: source folder = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " messages, destination folder = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isCopy = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2516
    :cond_6
    if-nez v3, :cond_a

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2518
    sget-boolean v11, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 2519
    move-object v1, v0

    .line 2522
    .local v1, "destFolderName":Ljava/lang/String;
    const-string v11, "-NONE-"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2524
    const/4 v1, 0x0

    .line 2526
    :cond_7
    sget-object v11, Lcom/fsck/k9/controller/MessagingController;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v7, v11, v1}, Lcom/fsck/k9/mail/Folder;->delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V

    .line 2541
    .end local v1    # "destFolderName":Ljava/lang/String;
    :goto_2
    if-nez v3, :cond_9

    const-string v11, "EXPUNGE_IMMEDIATELY"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getExpungePolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2543
    sget-boolean v11, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v11, :cond_8

    .line 2544
    const-string v11, "k9"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "processingPendingMoveOrCopy expunging folder "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    :cond_8
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->expunge()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2551
    :cond_9
    invoke-static {v7}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    .line 2552
    invoke-static {v6}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto/16 :goto_0

    .line 2530
    :cond_a
    :try_start_3
    invoke-virtual {v8, v0}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v6

    .line 2532
    if-eqz v3, :cond_b

    .line 2534
    sget-object v11, Lcom/fsck/k9/controller/MessagingController;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v7, v11, v6}, Lcom/fsck/k9/mail/Folder;->copyMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    goto :goto_2

    .line 2538
    :cond_b
    sget-object v11, Lcom/fsck/k9/controller/MessagingController;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {v7, v11, v6}, Lcom/fsck/k9/mail/Folder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private static processPendingSetFlag(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;Lcom/fsck/k9/Account;)V
    .locals 10
    .param p0, "command"    # Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2586
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v1, v7, v8

    .line 2588
    .local v1, "folder":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2637
    :cond_0
    :goto_0
    return-void

    .line 2593
    :cond_1
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2595
    .local v4, "newState":Z
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/fsck/k9/mail/Flag;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/Flag;

    move-result-object v0

    .line 2597
    .local v0, "flag":Lcom/fsck/k9/mail/Flag;
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v7

    .line 2598
    invoke-virtual {v7, v1}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v5

    .line 2599
    .local v5, "remoteFolder":Lcom/fsck/k9/mail/Folder;
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->supportsFetchingFlags()Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v7, v0}, Lcom/fsck/k9/mail/Flag;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2613
    :cond_2
    :try_start_0
    sget-object v7, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;

    invoke-virtual {v5, v7}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V

    .line 2614
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getMode()Lcom/fsck/k9/mail/Folder$OpenMode;

    move-result-object v7

    sget-object v8, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v7, v8, :cond_3

    .line 2636
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 2618
    :cond_3
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2619
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    const/4 v2, 0x3

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_5

    .line 2621
    iget-object v7, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    aget-object v6, v7, v2

    .line 2622
    .local v6, "uid":Ljava/lang/String;
    const-string v7, "K9LOCAL:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2624
    invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2619
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2628
    .end local v6    # "uid":Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_6

    .line 2636
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .line 2632
    :cond_6
    :try_start_2
    sget-object v7, Lcom/fsck/k9/controller/MessagingController;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/fsck/k9/mail/Message;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/fsck/k9/mail/Flag;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v5, v7, v8, v4}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2636
    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :catchall_0
    move-exception v7

    invoke-static {v5}, Lcom/fsck/k9/controller/MessagingController;->closeFolder(Lcom/fsck/k9/mail/Folder;)V

    throw v7
.end method

.method private putBackground$b08a98e(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    .line 350
    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    const/16 v1, 0xa

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/fsck/k9/controller/MessagingController$Command;

    invoke-direct {v0}, Lcom/fsck/k9/controller/MessagingController$Command;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Command;->listener:Lcom/fsck/k9/controller/MessagingListener;

    iput-object p2, v0, Lcom/fsck/k9/controller/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    iput-object p1, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fsck/k9/controller/MessagingController$Command;->isForeground:Z

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    .locals 3
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "command"    # Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    .prologue
    .line 2128
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v1

    .line 2129
    invoke-virtual {v1, p1}, Lcom/fsck/k9/mail/store/LocalStore;->addPendingCommand(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2136
    return-void

    .line 2131
    :catch_0
    move-exception v0

    .line 2133
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p0, v0}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    .line 2135
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to enqueue pending command"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private queueSetFlag(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;
    .param p4, "flag"    # Ljava/lang/String;
    .param p5, "uids"    # [Ljava/lang/String;

    .prologue
    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "queueSetFlag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$13;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/controller/MessagingController$13;-><init>(Lcom/fsck/k9/controller/MessagingController;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/Account;)V

    invoke-direct {p0, v7, v0}, Lcom/fsck/k9/controller/MessagingController;->putBackground$b08a98e(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 2576
    return-void
.end method

.method private refreshLocalMessageFlags(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 11
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p3, "localFolder"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p5, "progress"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p6, "todo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Lcom/fsck/k9/mail/Folder;",
            "Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2029
    .local p4, "syncFlagMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2030
    .local v1, "folder":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Folder;->supportsFetchingFlags()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2032
    sget-boolean v9, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 2033
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SYNC: About to sync flags for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " remote messages for folder "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2036
    :cond_0
    new-instance v2, Lcom/fsck/k9/mail/FetchProfile;

    invoke-direct {v2}, Lcom/fsck/k9/mail/FetchProfile;-><init>()V

    .line 2037
    .local v2, "fp":Lcom/fsck/k9/mail/FetchProfile;
    sget-object v9, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    invoke-virtual {v2, v9}, Lcom/fsck/k9/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2039
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 2040
    .local v8, "undeletedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fsck/k9/mail/Message;

    .line 2042
    .local v6, "message":Lcom/fsck/k9/mail/Message;
    sget-object v9, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v6, v9}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2044
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2048
    .end local v6    # "message":Lcom/fsck/k9/mail/Message;
    :cond_2
    sget-object v9, Lcom/fsck/k9/controller/MessagingController;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/fsck/k9/mail/Message;

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v2, v10}, Lcom/fsck/k9/mail/Folder;->fetch([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/controller/MessageRetrievalListener;)V

    .line 2049
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fsck/k9/mail/Message;

    .line 2051
    .local v7, "remoteMessage":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v5

    .line 2052
    .local v5, "localMessage":Lcom/fsck/k9/mail/Message;
    invoke-static {v5, v7}, Lcom/fsck/k9/controller/MessagingController;->syncFlags(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)Z

    move-result v9

    .line 2053
    if-eqz v9, :cond_6

    .line 2055
    sget-object v9, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v5, v9}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0, p1, v1, v5}, Lcom/fsck/k9/controller/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2057
    :cond_4
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/controller/MessagingListener;

    .line 2059
    invoke-virtual {v9, p1, v1, v5}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    goto :goto_1

    .line 2064
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 2071
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2072
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fsck/k9/controller/MessagingListener;

    .line 2074
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    move/from16 v0, p6

    invoke-virtual {v9, p1, v1, v10, v0}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_3

    .line 2078
    .end local v2    # "fp":Lcom/fsck/k9/mail/FetchProfile;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "localMessage":Lcom/fsck/k9/mail/Message;
    .end local v7    # "remoteMessage":Lcom/fsck/k9/mail/Message;
    .end local v8    # "undeletedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :cond_7
    return-void
.end method

.method public static resetVisibleLimits(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 972
    .local p0, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/Account;

    .line 974
    invoke-virtual {v1}, Lcom/fsck/k9/Account;->resetVisibleLimits()V

    goto :goto_0

    .line 976
    :cond_0
    return-void
.end method

.method private static setLocalFlaggedCountToRemote(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;)V
    .locals 8
    .param p0, "localFolder"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1383
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getFlaggedMessageCount()I

    move-result v5

    .line 1384
    .local v5, "remoteFlaggedMessageCount":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1386
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setFlaggedMessageCount(I)V

    .line 1401
    :goto_0
    return-void

    .line 1390
    :cond_0
    const/4 v1, 0x0

    .line 1391
    .local v1, "flaggedCount":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    .line 1392
    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 1394
    .local v4, "message":Lcom/fsck/k9/mail/Message;
    sget-object v6, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v4, v6}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1396
    add-int/lit8 v1, v1, 0x1

    .line 1392
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1399
    .end local v4    # "message":Lcom/fsck/k9/mail/Message;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setFlaggedMessageCount(I)V

    goto :goto_0
.end method

.method private static setLocalUnreadCountToRemote$281d1fd6(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;)I
    .locals 8
    .param p0, "localFolder"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p1, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1360
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I

    move-result v4

    .line 1361
    .local v4, "remoteUnreadMessageCount":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 1363
    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    .line 1378
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getUnreadMessageCount()I

    move-result v6

    return v6

    .line 1367
    :cond_0
    const/4 v5, 0x0

    .line 1368
    .local v5, "unreadCount":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;Z)[Lcom/fsck/k9/mail/Message;

    move-result-object v0

    .line 1369
    .local v0, "arr$":[Lcom/fsck/k9/mail/Message;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1371
    .local v3, "message":Lcom/fsck/k9/mail/Message;
    sget-object v6, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v3, v6}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v3, v6}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1373
    add-int/lit8 v5, v5, 0x1

    .line 1369
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1376
    .end local v3    # "message":Lcom/fsck/k9/mail/Message;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setUnreadMessageCount(I)V

    goto :goto_0
.end method

.method private shouldImportMessage$14a5376a(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/util/Date;)Z
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/fsck/k9/mail/Message;
    .param p4, "earliestDate"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 1787
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/controller/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1789
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1791
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was suppressed but just downloaded. The race condition means we wasted some bandwidth. Oh well."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1807
    :cond_0
    :goto_0
    return v0

    .line 1798
    :cond_1
    invoke-virtual {p3, p4}, Lcom/fsck/k9/mail/Message;->olderThan(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1800
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1802
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is older than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hence not saving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 1807
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static shouldNotifyForMessage(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;)Z
    .locals 4
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    const/4 v2, 0x0

    .line 4620
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->isNotifyNewMail()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v3}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4641
    :cond_0
    :goto_0
    return v2

    .line 4626
    :cond_1
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    .line 4627
    .local v0, "folder":Lcom/fsck/k9/mail/Folder;
    if-eqz v0, :cond_2

    .line 4631
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4632
    .local v1, "folderName":Ljava/lang/String;
    const-string v3, "INBOX"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4641
    .end local v1    # "folderName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static syncFlags(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)Z
    .locals 8
    .param p0, "localMessage"    # Lcom/fsck/k9/mail/Message;
    .param p1, "remoteMessage"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2082
    const/4 v4, 0x0

    .line 2083
    .local v4, "messageChanged":Z
    if-eqz p0, :cond_0

    sget-object v6, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p0, v6}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2106
    :cond_0
    :goto_0
    return v5

    .line 2087
    :cond_1
    sget-object v6, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p1, v6}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2089
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->syncRemoteDeletions()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2091
    sget-object v5, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {p0, v5, v7}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2092
    const/4 v4, 0x1

    :cond_2
    move v5, v4

    .line 2106
    goto :goto_0

    .line 2097
    :cond_3
    const/4 v6, 0x3

    new-array v0, v6, [Lcom/fsck/k9/mail/Flag;

    sget-object v6, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    aput-object v6, v0, v5

    sget-object v5, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    aput-object v5, v0, v7

    const/4 v5, 0x2

    sget-object v6, Lcom/fsck/k9/mail/Flag;->ANSWERED:Lcom/fsck/k9/mail/Flag;

    aput-object v6, v0, v5

    .local v0, "arr$":[Lcom/fsck/k9/mail/Flag;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 2099
    .local v1, "flag":Lcom/fsck/k9/mail/Flag;
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v6

    if-eq v5, v6, :cond_4

    .line 2101
    invoke-virtual {p1, v1}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    .line 2102
    const/4 v4, 0x1

    .line 2097
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private verifyOrCreateRemoteSpecialFolder(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/controller/MessagingListener;)Z
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "remoteFolder"    # Lcom/fsck/k9/mail/Folder;
    .param p4, "listener"    # Lcom/fsck/k9/controller/MessagingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1337
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1341
    :cond_0
    invoke-virtual {p3}, Lcom/fsck/k9/mail/Folder;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1343
    sget-object v1, Lcom/fsck/k9/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/fsck/k9/mail/Folder$FolderType;

    invoke-virtual {p3, v1}, Lcom/fsck/k9/mail/Folder;->create(Lcom/fsck/k9/mail/Folder$FolderType;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1345
    invoke-direct {p0, p4}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/controller/MessagingListener;

    .line 1347
    invoke-virtual {v1, p1, p2, v2, v2}, Lcom/fsck/k9/controller/MessagingListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    goto :goto_0

    .line 1349
    :cond_1
    sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1350
    const-string v1, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Done synchronizing folder "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v2

    .line 1356
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private writeUnsyncedMessages(Ljava/util/List;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .locals 7
    .param p2, "localFolder"    # Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .param p3, "account"    # Lcom/fsck/k9/Account;
    .param p4, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;",
            "Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1754
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1756
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Batch writing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " messages"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/fsck/k9/mail/Message;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fsck/k9/mail/Message;

    invoke-virtual {p2, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V

    .line 1763
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/Message;

    .line 1765
    .local v3, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;

    move-result-object v4

    .line 1766
    invoke-static {v4, v3}, Lcom/fsck/k9/controller/MessagingController;->syncFlags(Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Message;)Z

    .line 1767
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1768
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "About to notify listeners that we got a new unsynced message "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :cond_2
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1776
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "message":Lcom/fsck/k9/mail/Message;
    :catch_0
    move-exception v0

    .line 1778
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "k9"

    const-string v5, "Error while storing downloaded message."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1779
    invoke-static {p3, v0}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    .line 1781
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingListener:Lcom/fsck/k9/controller/MessagingController$MemorizingListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->memorizingListener:Lcom/fsck/k9/controller/MessagingController$MemorizingListener;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MessagingController$MemorizingListener;->refreshOther(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 389
    :cond_0
    return-void
.end method

.method public final deleteMessages$57ed3660([Lcom/fsck/k9/mail/Message;)V
    .locals 8
    .param p1, "messages"    # [Lcom/fsck/k9/mail/Message;

    .prologue
    .line 3952
    new-instance v3, Lcom/fsck/k9/controller/MessagingController$MessageActor;

    invoke-direct {v3, p0}, Lcom/fsck/k9/controller/MessagingController$MessageActor;-><init>(Lcom/fsck/k9/controller/MessagingController;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    array-length v5, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/mail/Folder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_1
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/fsck/k9/Account;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Folder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v2, v1, v0}, Lcom/fsck/k9/controller/MessagingController$MessageActor;->act(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V

    goto :goto_2

    .line 3975
    :cond_3
    return-void

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public final getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/controller/MessagingListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method public final run()V
    .locals 7

    .prologue
    .line 282
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 285
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 288
    .local v1, "commandDescription":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/controller/MessagingController$Command;

    .line 290
    .local v0, "command":Lcom/fsck/k9/controller/MessagingController$Command;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    .line 294
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 295
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Running Background command \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', seq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_1
    :try_start_1
    iget-object v4, v0, Lcom/fsck/k9/controller/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Lcom/fsck/k9/mail/store/UnavailableAccountException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :goto_1
    :try_start_2
    sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 326
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Background Command \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/fsck/k9/controller/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' completed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/fsck/k9/controller/MessagingController;->getListeners(Lcom/fsck/k9/controller/MessagingListener;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 335
    .end local v0    # "command":Lcom/fsck/k9/controller/MessagingController$Command;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error running command \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 305
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "command":Lcom/fsck/k9/controller/MessagingController$Command;
    :catch_1
    move-exception v4

    :try_start_3
    new-instance v4, Lcom/fsck/k9/controller/MessagingController$1;

    invoke-direct {v4, p0, v0}, Lcom/fsck/k9/controller/MessagingController$1;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/controller/MessagingController$Command;)V

    invoke-virtual {v4}, Lcom/fsck/k9/controller/MessagingController$1;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public final searchLocalMessages$63d5ea0f(Lcom/fsck/k9/SearchSpecification;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 10
    .param p1, "searchSpecification"    # Lcom/fsck/k9/SearchSpecification;
    .param p2, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    const/16 v6, 0x2c

    const/4 v2, 0x0

    .line 722
    invoke-interface {p1}, Lcom/fsck/k9/SearchSpecification;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/fsck/k9/SearchSpecification;->isIntegrate()Z

    move-result v5

    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "k9"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "searchLocalMessages (accountUuids="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", folderNames = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v6}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", messages.size() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", query = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", integrate = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", requiredFlags = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v6}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", forbiddenFlags = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v6}, Lcom/fsck/k9/helper/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v9, p0, Lcom/fsck/k9/controller/MessagingController;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/fsck/k9/controller/MessagingController$6;

    move-object v1, p0

    move-object v3, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/fsck/k9/controller/MessagingController$6;-><init>(Lcom/fsck/k9/controller/MessagingController;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z[Lcom/fsck/k9/mail/Flag;[Lcom/fsck/k9/mail/Flag;Lcom/fsck/k9/controller/MessagingListener;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 724
    return-void
.end method

.method public final searchLocalMessagesSynchronous([Ljava/lang/String;[Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Ljava/lang/String;Z[Lcom/fsck/k9/mail/Flag;[Lcom/fsck/k9/mail/Flag;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 36
    .param p1, "accountUuids"    # [Ljava/lang/String;
    .param p2, "folderNames"    # [Ljava/lang/String;
    .param p3, "messages"    # [Lcom/fsck/k9/mail/Message;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "integrate"    # Z
    .param p6, "requiredFlags"    # [Lcom/fsck/k9/mail/Flag;
    .param p7, "forbiddenFlags"    # [Lcom/fsck/k9/mail/Flag;
    .param p8, "listener"    # Lcom/fsck/k9/controller/MessagingListener;

    .prologue
    .line 764
    new-instance v33, Lcom/fsck/k9/AccountStats;

    invoke-direct/range {v33 .. v33}, Lcom/fsck/k9/AccountStats;-><init>()V

    .line 765
    .local v33, "stats":Lcom/fsck/k9/AccountStats;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 766
    .local v12, "accountUuidsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 768
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 770
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v31

    .line 771
    .local v31, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual/range {v31 .. v31}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v13

    .line 772
    .local v13, "accounts":[Lcom/fsck/k9/Account;
    const/4 v7, 0x0

    .line 773
    .local v7, "foldersToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;>;"
    const/16 v16, 0x0

    .line 774
    .local v16, "displayableOnly":Z
    move-object v14, v13

    .local v14, "arr$":[Lcom/fsck/k9/Account;
    array-length v0, v13

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    move/from16 v22, v21

    .end local v14    # "arr$":[Lcom/fsck/k9/Account;
    .end local v21    # "i$":I
    .end local v24    # "len$":I
    .local v22, "i$":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_17

    aget-object v11, v14, v22

    .line 777
    .local v11, "account":Lcom/fsck/k9/Account;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fsck/k9/controller/MessagingController;->mApplication:Landroid/app/Application;

    invoke-virtual {v11, v3}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 779
    if-eqz p1, :cond_1

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 784
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 789
    :cond_2
    if-nez p5, :cond_3

    if-nez p2, :cond_3

    .line 794
    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getSearchableFolders()Lcom/fsck/k9/Account$Searchable;

    move-result-object v32

    .line 795
    .local v32, "searchableFolders":Lcom/fsck/k9/Account$Searchable;
    sget-object v3, Lcom/fsck/k9/controller/MessagingController$35;->$SwitchMap$com$fsck$k9$Account$Searchable:[I

    invoke-virtual/range {v32 .. v32}, Lcom/fsck/k9/Account$Searchable;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 805
    .end local v32    # "searchableFolders":Lcom/fsck/k9/Account$Searchable;
    :cond_3
    :goto_1
    const/16 v30, 0x0

    .line 806
    .local v30, "messagesToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    if-eqz p3, :cond_7

    .line 808
    new-instance v30, Ljava/util/LinkedList;

    .end local v30    # "messagesToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    invoke-direct/range {v30 .. v30}, Ljava/util/LinkedList;-><init>()V

    .line 809
    .restart local v30    # "messagesToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    move-object/from16 v15, p3

    .local v15, "arr$":[Lcom/fsck/k9/mail/Message;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v21, 0x0

    .end local v22    # "i$":I
    .restart local v21    # "i$":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    aget-object v29, v15, v21

    .line 811
    .local v29, "message":Lcom/fsck/k9/mail/Message;
    invoke-virtual/range {v29 .. v29}, Lcom/fsck/k9/mail/Message;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/mail/Folder;->getAccount()Lcom/fsck/k9/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 813
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 800
    .end local v15    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v21    # "i$":I
    .end local v25    # "len$":I
    .end local v29    # "message":Lcom/fsck/k9/mail/Message;
    .end local v30    # "messagesToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .restart local v22    # "i$":I
    :cond_5
    :pswitch_0
    const/16 v16, 0x1

    goto :goto_1

    .line 816
    .end local v22    # "i$":I
    .restart local v15    # "arr$":[Lcom/fsck/k9/mail/Message;
    .restart local v21    # "i$":I
    .restart local v25    # "len$":I
    .restart local v30    # "messagesToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    :cond_6
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 818
    .end local v15    # "arr$":[Lcom/fsck/k9/mail/Message;
    .end local v21    # "i$":I
    .end local v25    # "len$":I
    :cond_7
    new-instance v35, Ljava/util/LinkedList;

    invoke-direct/range {v35 .. v35}, Ljava/util/LinkedList;-><init>()V

    .line 831
    .local v35, "tmpFoldersToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;>;"
    :try_start_0
    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v3

    .line 832
    const/16 v34, 0x0

    .local v34, "store":Lcom/fsck/k9/mail/store/LocalStore;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/fsck/k9/mail/store/LocalStore;->getPersonalNamespaces(Z)Ljava/util/List;

    move-result-object v20

    .line 833
    .local v20, "folders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    const/16 v19, 0x0

    .line 834
    .local v19, "folderNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_8

    .line 836
    new-instance v19, Ljava/util/HashSet;

    .end local v19    # "folderNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 837
    .restart local v19    # "folderNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 839
    :cond_8
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/fsck/k9/mail/Folder;

    .line 841
    .local v18, "folder":Lcom/fsck/k9/mail/Folder;
    move-object/from16 v0, v18

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;

    move-object/from16 v26, v0

    .line 842
    .local v26, "localFolder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    const/16 v23, 0x1

    .line 843
    .local v23, "include":Z
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/Folder;->refresh(Lcom/fsck/k9/Preferences;)V

    .line 844
    invoke-virtual/range {v26 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getName()Ljava/lang/String;

    move-result-object v27

    .line 845
    .local v27, "localFolderName":Ljava/lang/String;
    if-eqz p5, :cond_c

    .line 847
    invoke-virtual/range {v26 .. v26}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->isIntegrate()Z

    move-result v23

    .line 875
    :cond_a
    :goto_4
    if-eqz v23, :cond_9

    .line 877
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 886
    .end local v18    # "folder":Lcom/fsck/k9/mail/Folder;
    .end local v19    # "folderNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "folders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v23    # "include":Z
    .end local v26    # "localFolder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .end local v27    # "localFolderName":Ljava/lang/String;
    .end local v34    # "store":Lcom/fsck/k9/mail/store/LocalStore;
    :catch_0
    move-exception v28

    .line 888
    .local v28, "me":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Unable to restrict search folders in Account "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", searching all"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    move-object/from16 v0, v28

    invoke-static {v11, v0}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V

    .line 894
    .end local v28    # "me":Lcom/fsck/k9/mail/MessagingException;
    :goto_5
    new-instance v4, Lcom/fsck/k9/controller/MessagingController$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p8

    invoke-direct {v4, v0, v1, v2, v11}, Lcom/fsck/k9/controller/MessagingController$7;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/AccountStats;Lcom/fsck/k9/controller/MessagingListener;Lcom/fsck/k9/Account;)V

    .line 921
    .local v4, "retrievalListener":Lcom/fsck/k9/controller/MessageRetrievalListener;
    const/4 v3, 0x3

    :try_start_1
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "html_content"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "subject"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "sender_list"

    aput-object v6, v5, v3

    .line 922
    .local v5, "queryFields":[Ljava/lang/String;
    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mail/store/LocalStore;

    move-result-object v3

    .line 923
    if-nez v30, :cond_15

    const/4 v8, 0x0

    :goto_6
    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/fsck/k9/mail/store/LocalStore;->searchForMessages(Lcom/fsck/k9/controller/MessageRetrievalListener;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;[Lcom/fsck/k9/mail/Flag;)[Lcom/fsck/k9/mail/Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 939
    if-eqz p8, :cond_b

    .line 775
    .end local v4    # "retrievalListener":Lcom/fsck/k9/controller/MessageRetrievalListener;
    .end local v5    # "queryFields":[Ljava/lang/String;
    .end local v30    # "messagesToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v35    # "tmpFoldersToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;>;"
    :cond_b
    :goto_7
    :pswitch_1
    add-int/lit8 v21, v22, 0x1

    .local v21, "i$":I
    move/from16 v22, v21

    .end local v21    # "i$":I
    .restart local v22    # "i$":I
    goto/16 :goto_0

    .line 851
    .end local v22    # "i$":I
    .restart local v18    # "folder":Lcom/fsck/k9/mail/Folder;
    .restart local v19    # "folderNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "folders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .local v21, "i$":Ljava/util/Iterator;
    .restart local v23    # "include":Z
    .restart local v26    # "localFolder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .restart local v27    # "localFolderName":Ljava/lang/String;
    .restart local v30    # "messagesToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .restart local v34    # "store":Lcom/fsck/k9/mail/store/LocalStore;
    .restart local v35    # "tmpFoldersToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;>;"
    :cond_c
    if-eqz v19, :cond_d

    .line 853
    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 856
    const/16 v23, 0x0

    goto :goto_4

    .line 860
    :cond_d
    const-string v3, "INBOX"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getErrorFolderName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 867
    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 869
    :cond_f
    if-eqz v16, :cond_a

    invoke-virtual {v11}, Lcom/fsck/k9/Account;->getFolderDisplayMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/fsck/k9/mail/Folder;->getDisplayClass()Lcom/fsck/k9/mail/Folder$FolderClass;

    move-result-object v6

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    if-eq v3, v8, :cond_12

    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v3, v8, :cond_10

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v6, v8, :cond_12

    :cond_10
    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v3, v8, :cond_11

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->FIRST_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-eq v6, v8, :cond_11

    sget-object v8, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v6, v8, :cond_12

    :cond_11
    sget-object v8, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    if-ne v3, v8, :cond_13

    sget-object v3, Lcom/fsck/k9/mail/Folder$FolderClass;->SECOND_CLASS:Lcom/fsck/k9/mail/Folder$FolderClass;

    if-ne v6, v3, :cond_13

    :cond_12
    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_a

    .line 871
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 869
    :cond_13
    const/4 v3, 0x0

    goto :goto_8

    .line 880
    .end local v18    # "folder":Lcom/fsck/k9/mail/Folder;
    .end local v23    # "include":Z
    .end local v26    # "localFolder":Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
    .end local v27    # "localFolderName":Ljava/lang/String;
    :cond_14
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I
    :try_end_2
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-lez v3, :cond_b

    .line 884
    move-object/from16 v7, v35

    .line 890
    goto/16 :goto_5

    .line 923
    .end local v19    # "folderNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "folders":Ljava/util/List;, "Ljava/util/List<+Lcom/fsck/k9/mail/Folder;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v34    # "store":Lcom/fsck/k9/mail/store/LocalStore;
    .restart local v4    # "retrievalListener":Lcom/fsck/k9/controller/MessageRetrievalListener;
    .restart local v5    # "queryFields":[Ljava/lang/String;
    :cond_15
    :try_start_3
    sget-object v6, Lcom/fsck/k9/controller/MessagingController;->EMPTY_MESSAGE_ARRAY:[Lcom/fsck/k9/mail/Message;

    move-object/from16 v0, v30

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/fsck/k9/mail/Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v6

    goto/16 :goto_6

    .line 929
    .end local v5    # "queryFields":[Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 931
    .local v17, "e":Ljava/lang/Exception;
    if-eqz p8, :cond_16

    .line 933
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 935
    :cond_16
    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/fsck/k9/controller/MessagingController;->addErrorMessage$71b39a09(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 939
    if-eqz p8, :cond_b

    goto/16 :goto_7

    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3

    .line 945
    .end local v4    # "retrievalListener":Lcom/fsck/k9/controller/MessageRetrievalListener;
    .end local v11    # "account":Lcom/fsck/k9/Account;
    .end local v30    # "messagesToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Message;>;"
    .end local v35    # "tmpFoldersToSearch":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;>;"
    .restart local v22    # "i$":I
    :cond_17
    if-eqz p8, :cond_18

    .line 947
    invoke-virtual/range {p8 .. p8}, Lcom/fsck/k9/controller/MessagingListener;->searchStats$4ed473c3()V

    .line 949
    :cond_18
    return-void

    .line 795
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
