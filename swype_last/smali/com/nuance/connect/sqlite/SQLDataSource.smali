.class public abstract Lcom/nuance/connect/sqlite/SQLDataSource;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/sqlite/SQLDataSource$AsyncHandlerThread;
    }
.end annotation


# static fields
.field private static final CLOSE_DELAY:J = 0x3a98L

.field private static final MESSAGE_CLOSE:I = 0x3e8

.field private static final MESSAGE_DEBUG_LOG:I = 0x3e9

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final context:Landroid/content/Context;

.field private volatile database:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile handlerThread:Lcom/nuance/connect/util/HandlerThread;

.field private volatile lastOpenedTime:J

.field private final openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final openReferences:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/sqlite/SQLDataSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->lastOpenedTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->context:Landroid/content/Context;

    return-void
.end method

.method private disableCloseTimer()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->lastOpenedTime:J

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_b
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/HandlerThread;->removeMessages(I)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1c

    :cond_16
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private restartCloseTimer()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->lastOpenedTime:J

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_b
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_27

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/HandlerThread;->removeMessages(I)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/util/HandlerThread;->processDelayed(IJ)V
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_2d

    :cond_27
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_2d
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "Still an open database"

    invoke-interface {v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1a
    iput-object p1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_22

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_22
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public beginTransaction()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_a
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->disableCloseTimer()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_1c

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_1b
    return-void

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public decrementOpenRefCount(I)V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_28

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->restartCloseTimer()V

    if-gez v0, :cond_28

    sget-object v1, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error in reference state: count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_28
    return-void
.end method

.method public endTransaction()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_a
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_1c

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_23

    sget-object v0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "database is null for endTransaction!"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_1b
    :goto_1b
    return-void

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_23
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->restartCloseTimer()V

    goto :goto_1b
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->openSafe()Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Could not open the database"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Could not open the database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_1c

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_72

    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_7
    sget-object v0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Database close requested. Thread="

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, ", handler="

    iget-object v4, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const-string/jumbo v5, ", openReferences="

    iget-object v6, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_68

    :try_start_35
    iget-wide v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->lastOpenedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_63

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_63

    sget-object v0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Database idle, closing now. "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5e
    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/nuance/connect/util/HandlerThread;->quit()Z
    :try_end_63
    .catchall {:try_start_35 .. :try_end_63} :catchall_6a

    :cond_63
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_68
    const/4 v0, 0x1

    goto :goto_6

    :catchall_6a
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    nop

    :pswitch_data_72
    .packed-switch 0x3e8
        :pswitch_7
    .end packed-switch
.end method

.method public incrementOpenRefCount()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openReferences:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-direct {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->disableCloseTimer()V

    return v0
.end method

.method public isOpen()Z
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_18

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_10
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_10

    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public abstract open()Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public openSafe()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_6
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/HandlerThread;->removeMessages(I)V

    :goto_11
    invoke-direct {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->restartCloseTimer()V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_38

    :try_start_14
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->isOpen()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/connect/sqlite/SQLDataSource;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_21
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->isOpen()Z
    :try_end_24
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_24} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_4d
    .catchall {:try_start_14 .. :try_end_24} :catchall_38

    move-result v0

    :goto_25
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_2b
    :try_start_2b
    new-instance v1, Lcom/nuance/connect/sqlite/SQLDataSource$AsyncHandlerThread;

    invoke-direct {v1, p0}, Lcom/nuance/connect/sqlite/SQLDataSource$AsyncHandlerThread;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->handlerThread:Lcom/nuance/connect/util/HandlerThread;

    invoke-virtual {v1}, Lcom/nuance/connect/util/HandlerThread;->start()V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_38

    goto :goto_11

    :catchall_38
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_3f
    move-exception v1

    :try_start_40
    sget-object v2, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error opening db: "

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_25

    :catch_4d
    move-exception v1

    sget-object v2, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v3, "Error opening db: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_38

    goto :goto_25
.end method

.method public setTransactionSuccessful()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_17

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_1e

    sget-object v0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "database is null for endTransaction!"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_16
    return-void

    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->openCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_16
.end method
