.class Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DLMConnectorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupEventsFileQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$StatusCallback;
    }
.end annotation


# instance fields
.field private final callback:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$StatusCallback;

.field private volatile complete:Z

.field private final coreId:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final eventsBuffer:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Ljava/io/File;

.field private final fos:Ljava/io/FileOutputStream;

.field private handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private looper:Landroid/os/Looper;

.field private final output:Ljava/io/BufferedOutputStream;

.field processRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$StatusCallback;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->eventsBuffer:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "dlm_backup_task"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->handlerThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$1;-><init>(Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->processRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "constructor "

    const-string/jumbo v2, " coreId: "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->file:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->fos:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->output:Ljava/io/BufferedOutputStream;

    iput-object p2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->callback:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$StatusCallback;

    iput p3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->coreId:I

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->initHandler()V

    return-void
.end method

.method static synthetic access$2400(Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;)V
    .registers 1

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->processEvents()V

    return-void
.end method

.method private initHandler()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "initHandler()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->looper:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->looper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->handler:Landroid/os/Handler;

    return-void
.end method

.method private onFinished()V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "onFinished()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    :try_start_8
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->output:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->output:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_32} :catch_47

    :goto_32
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->callback:Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$StatusCallback;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue$StatusCallback;->onComplete(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->destroyHandler()V

    return-void

    :catch_47
    move-exception v0

    goto :goto_32
.end method

.method private processEvents()V
    .registers 6

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "processEvents()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->eventsBuffer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_15
    const-string/jumbo v1, "\n"

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_1e} :catch_4c

    move-result-object v0

    move-object v1, v0

    :goto_20
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_30
    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->output:Ljava/io/BufferedOutputStream;

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->output:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_41} :catch_42
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_41} :catch_4f

    goto :goto_24

    :catch_42
    move-exception v0

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "UnsupportedEncodingException "

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_24

    :catch_4c
    move-exception v1

    move-object v1, v0

    goto :goto_20

    :catch_4f
    move-exception v0

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v4, "IOException "

    invoke-interface {v3, v4, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_24

    :cond_59
    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->complete:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->eventsBuffer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_68

    invoke-direct {p0}, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->onFinished()V

    :cond_68
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "addEvent()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->eventsBuffer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->eventsBuffer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_23

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->processRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method

.method public backupComplete()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "backupComplete()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->complete:Z

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->processRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public destroyHandler()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "destroyHandler()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$BackupEventsFileQueue;->handler:Landroid/os/Handler;

    return-void
.end method
