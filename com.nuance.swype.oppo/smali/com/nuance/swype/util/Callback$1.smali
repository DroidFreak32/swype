.class final Lcom/nuance/swype/util/Callback$1;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/util/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/util/Callback;


# direct methods
.method constructor <init>(Lcom/nuance/swype/util/Callback;)V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lcom/nuance/swype/util/Callback$1;, "Lcom/nuance/swype/util/Callback.1;"
    iput-object p1, p0, Lcom/nuance/swype/util/Callback$1;->this$0:Lcom/nuance/swype/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/nuance/swype/util/Callback$1;, "Lcom/nuance/swype/util/Callback.1;"
    const/4 v0, 0x0

    .line 37
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 44
    :goto_0
    return v0

    .line 39
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/util/Callback$1;->this$0:Lcom/nuance/swype/util/Callback;

    iget-boolean v2, v1, Lcom/nuance/swype/util/Callback;->isPending:Z

    if-eqz v2, :cond_0

    iput-boolean v0, v1, Lcom/nuance/swype/util/Callback;->isPending:Z

    iget-object v0, v1, Lcom/nuance/swype/util/Callback;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/nuance/swype/util/Callback;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 44
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
