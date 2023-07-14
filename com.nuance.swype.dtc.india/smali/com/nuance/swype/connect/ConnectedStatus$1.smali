.class Lcom/nuance/swype/connect/ConnectedStatus$1;
.super Ljava/lang/Object;
.source "ConnectedStatus.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/ConnectedStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/ConnectedStatus;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/ConnectedStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/connect/ConnectedStatus;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connected(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "connectionType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 27
    invoke-static {}, Lcom/nuance/swype/connect/ConnectedStatus;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ACConnectionCallback.connected(), we\'re connected connectionType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 28
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->access$100(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->access$200(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    move v0, v2

    .line 29
    .local v0, "wasConnected":Z
    :goto_0
    invoke-static {}, Lcom/nuance/swype/connect/ConnectedStatus;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "wasConnected "

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 31
    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    if-ne p2, v2, :cond_4

    .line 32
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 34
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->access$300(Lcom/nuance/swype/connect/ConnectedStatus;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACManager;->retryConnection()V

    .line 36
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 48
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v3, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$402(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 49
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$100(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$200(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectedStatus;->onConnectionChanged(Z)V

    .line 53
    :cond_4
    return-void

    .end local v0    # "wasConnected":Z
    :cond_5
    move v0, v1

    .line 28
    goto :goto_0

    .line 38
    .restart local v0    # "wasConnected":Z
    :pswitch_0
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v3, v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$102(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 39
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/connect/ConnectedStatus;->onForegroundConnection(I)V

    goto :goto_1

    .line 43
    :pswitch_1
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v3, v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$202(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 44
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->onForegroundConnection(I)V

    goto :goto_1

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public connectionStatus(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 81
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$502(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->onInitialized()V

    .line 90
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/connect/ConnectedStatus;->onConnectionStatus(ILjava/lang/String;)V

    .line 91
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$402(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    goto :goto_0

    .line 86
    :cond_2
    if-ne p1, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$402(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    goto :goto_0
.end method

.method public disconnected(I)V
    .locals 3
    .param p1, "connectionType"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$100(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$200(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 60
    .local v0, "wasConnected":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 72
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$100(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$200(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->onConnectionChanged(Z)V

    .line 75
    :cond_1
    return-void

    .end local v0    # "wasConnected":Z
    :cond_2
    move v0, v1

    .line 57
    goto :goto_0

    .line 62
    .restart local v0    # "wasConnected":Z
    :pswitch_1
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v2, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$202(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 63
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v2, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$102(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    goto :goto_1

    .line 67
    :pswitch_2
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v2, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$202(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 68
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-static {v2, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$102(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
