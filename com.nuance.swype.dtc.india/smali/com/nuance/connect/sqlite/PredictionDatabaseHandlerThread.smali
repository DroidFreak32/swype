.class Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;
.super Lcom/nuance/connect/util/HandlerThread;


# static fields
.field private static final MAX_EVENTS:I = 0x64

.field public static final MSG_CLEAR_PREDICTIONS:I = 0x1

.field public static final MSG_PROCESS_PREDICTIONS:I = 0x0

.field private static final QUEUE_PROCESS_DELAY:I = 0x64


# instance fields
.field private final dataSource:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

.field private final delayedProcessor:Ljava/lang/Runnable;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/util/HandlerThread;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread$1;-><init>(Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->delayedProcessor:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->dataSource:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    return-void
.end method


# virtual methods
.method addPrediction(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->process(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->delayedProcessor:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->processDelayed(Ljava/lang/Runnable;JZ)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->dataSource:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    check-cast v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->insertPredictionObject(Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;)Z

    goto :goto_1

    :cond_2
    instance-of v2, v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->dataSource:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    check-cast v0, Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;

    invoke-virtual {v2, v0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->insertPredictionResultObject(Lcom/nuance/connect/sqlite/ChinesePredictionDataResultRow;)Z

    goto :goto_1

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->dataSource:Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/sqlite/ChinesePredictionDataSource;->deletePredictions(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
