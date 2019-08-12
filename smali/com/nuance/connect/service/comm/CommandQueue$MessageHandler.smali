.class Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mgrRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/service/comm/CommandQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->mgrRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-boolean v0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->mgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/comm/CommandQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/nuance/connect/service/comm/CommandQueue;->handleMessage(Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public sendMessageDelayedSeconds(Landroid/os/Message;I)V
    .locals 2

    mul-int/lit16 v0, p2, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->mgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/service/comm/CommandQueue$MessageHandler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
