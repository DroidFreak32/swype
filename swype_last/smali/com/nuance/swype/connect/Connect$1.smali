.class Lcom/nuance/swype/connect/Connect$1;
.super Ljava/lang/Object;
.source "Connect.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$1;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    .line 175
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 156
    :pswitch_8
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$1;->this$0:Lcom/nuance/swype/connect/Connect;

    # invokes: Lcom/nuance/swype/connect/Connect;->start()V
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$000(Lcom/nuance/swype/connect/Connect;)V

    move v0, v1

    .line 157
    goto :goto_7

    .line 160
    :pswitch_f
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$1;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$100(Lcom/nuance/swype/connect/Connect;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$1;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$100(Lcom/nuance/swype/connect/Connect;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 162
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 164
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$1;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->postStartEvents:Ljava/util/Queue;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$100(Lcom/nuance/swype/connect/Connect;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 165
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$1;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->queue:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$200(Lcom/nuance/swype/connect/Connect;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_41
    move v0, v1

    .line 168
    goto :goto_7

    .line 171
    :pswitch_43
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$1;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->statsSettingChanged()V

    move v0, v1

    .line 172
    goto :goto_7

    .line 154
    :pswitch_data_52
    .packed-switch 0x64
        :pswitch_8
        :pswitch_f
        :pswitch_43
    .end packed-switch
.end method
