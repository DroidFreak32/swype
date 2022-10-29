.class Lcom/nuance/dlm/ACAlphaInput$InputHandler;
.super Landroid/os/Handler;
.source "ACAlphaInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/dlm/ACAlphaInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
    .registers 3
    .param p1, "input"    # Lcom/nuance/dlm/ACAlphaInput;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->input:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/nuance/dlm/ACAlphaInput$InputHandler;->input:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dlm/ACAlphaInput;

    .line 41
    .local v0, "i":Lcom/nuance/dlm/ACAlphaInput;
    if-eqz v0, :cond_f

    .line 42
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_14

    .line 49
    :cond_f
    :goto_f
    return-void

    .line 44
    :pswitch_10
    # invokes: Lcom/nuance/dlm/ACAlphaInput;->sendEvents()V
    invoke-static {v0}, Lcom/nuance/dlm/ACAlphaInput;->access$000(Lcom/nuance/dlm/ACAlphaInput;)V

    goto :goto_f

    .line 42
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method
