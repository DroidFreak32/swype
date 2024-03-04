.class Lcom/nuance/connect/sqlite/SQLDataSource$AsyncHandlerThread;
.super Lcom/nuance/connect/util/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/SQLDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncHandlerThread"
.end annotation


# instance fields
.field private final resultHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/util/HandlerThread;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_0
    invoke-static {v0, p1}, Lcom/nuance/connect/util/WeakReferenceHandler;->create(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource$AsyncHandlerThread;->resultHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource$AsyncHandlerThread;->resultHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    return-object v0
.end method
