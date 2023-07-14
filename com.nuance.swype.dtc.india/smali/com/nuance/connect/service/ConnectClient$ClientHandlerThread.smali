.class Lcom/nuance/connect/service/ConnectClient$ClientHandlerThread;
.super Lcom/nuance/connect/util/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/ConnectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientHandlerThread"
.end annotation


# instance fields
.field private final clientWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/ConnectClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .locals 1

    invoke-direct {p0}, Lcom/nuance/connect/util/HandlerThread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient$ClientHandlerThread;->clientWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$ClientHandlerThread;->clientWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nuance/connect/service/ConnectClient;->handleMessage(Landroid/os/Message;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 1

    invoke-super {p0}, Lcom/nuance/connect/util/HandlerThread;->run()V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$ClientHandlerThread;->clientWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$1300(Lcom/nuance/connect/service/ConnectClient;)V

    :cond_0
    return-void
.end method
