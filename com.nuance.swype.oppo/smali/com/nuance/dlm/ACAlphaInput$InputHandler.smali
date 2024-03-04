.class Lcom/nuance/dlm/ACAlphaInput$InputHandler;
.super Landroid/os/Handler;
.source "ACAlphaInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/dlm/ACAlphaInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputHandler"
.end annotation


# instance fields
.field private final input:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/dlm/ACAlphaInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/dlm/ACAlphaInput;)V
    .locals 1
    .param p1, "input"    # Lcom/nuance/dlm/ACAlphaInput;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->input:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->input:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dlm/ACAlphaInput;

    .line 40
    .local v0, "i":Lcom/nuance/dlm/ACAlphaInput;
    if-eqz v0, :cond_0

    .line 41
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_0
    invoke-static {v0}, Lcom/nuance/dlm/ACAlphaInput;->access$000(Lcom/nuance/dlm/ACAlphaInput;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
