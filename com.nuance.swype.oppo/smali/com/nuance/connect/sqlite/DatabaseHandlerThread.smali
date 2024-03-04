.class Lcom/nuance/connect/sqlite/DatabaseHandlerThread;
.super Lcom/nuance/connect/util/HandlerThread;


# static fields
.field private static final MAX_EVENTS:I = 0x64

.field public static final MSG_CLEAR_EVENTS:I = 0x1

.field public static final MSG_PROCESS_EVENTS:I = 0x0

.field private static final QUEUE_PROCESS_DELAY:I = 0x64


# instance fields
.field private final dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

.field private final delayedProcessor:Ljava/lang/Runnable;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/nuance/connect/sqlite/DlmEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/DlmEventsDataSource;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/util/HandlerThread;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread$1;-><init>(Lcom/nuance/connect/sqlite/DatabaseHandlerThread;)V

    iput-object v0, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->delayedProcessor:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    return-void
.end method


# virtual methods
.method addEvent(Lcom/nuance/connect/sqlite/DlmEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->process(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->delayedProcessor:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->processDelayed(Ljava/lang/Runnable;JZ)V

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/sqlite/DlmEvent;

    iget-boolean v1, v0, Lcom/nuance/connect/sqlite/DlmEvent;->highPriority:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEvent;->event:Ljava/lang/String;

    iget v3, v0, Lcom/nuance/connect/sqlite/DlmEvent;->category:I

    iget-wide v4, v0, Lcom/nuance/connect/sqlite/DlmEvent;->timestamp:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->_insertHighPriorityEvent(Ljava/lang/String;IJ)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    iget-object v2, v0, Lcom/nuance/connect/sqlite/DlmEvent;->event:Ljava/lang/String;

    iget v3, v0, Lcom/nuance/connect/sqlite/DlmEvent;->category:I

    iget-wide v4, v0, Lcom/nuance/connect/sqlite/DlmEvent;->timestamp:J

    iget-object v6, v0, Lcom/nuance/connect/sqlite/DlmEvent;->appname:Ljava/lang/String;

    iget-object v7, v0, Lcom/nuance/connect/sqlite/DlmEvent;->location:Ljava/lang/String;

    iget-object v8, v0, Lcom/nuance/connect/sqlite/DlmEvent;->locale:Ljava/lang/String;

    iget v9, v0, Lcom/nuance/connect/sqlite/DlmEvent;->inputType:I

    invoke-virtual/range {v1 .. v9}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->_insertEvent(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->dataSource:Lcom/nuance/connect/sqlite/DlmEventsDataSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/sqlite/DlmEventsDataSource;->_clearEvents(IJ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
