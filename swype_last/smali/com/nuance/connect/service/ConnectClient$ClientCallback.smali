.class public Lcom/nuance/connect/service/ConnectClient$ClientCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/ConnectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ClientCallback"
.end annotation


# instance fields
.field private final connectRef:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/service/ConnectClient$ClientCallback;->connectRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$ClientCallback;->connectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/ConnectClient;

    if-eqz v0, :cond_20

    # getter for: Lcom/nuance/connect/service/ConnectClient;->destroyed:Z
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$1200(Lcom/nuance/connect/service/ConnectClient;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    iget-object v0, v0, Lcom/nuance/connect/service/ConnectClient;->msgHandler:Lcom/nuance/connect/service/ConnectClient$MessageHandler;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/service/ConnectClient$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_20
    const/4 v0, 0x1

    return v0
.end method
