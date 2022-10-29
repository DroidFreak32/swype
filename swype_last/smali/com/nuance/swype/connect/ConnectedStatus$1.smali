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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/connect/ConnectedStatus;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connected(II)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "connectionType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 27
    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;
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

    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z
    invoke-static {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->access$100(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v3

    if-nez v3, :cond_38

    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z
    invoke-static {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->access$200(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v3

    if-eqz v3, :cond_84

    :cond_38
    move v0, v2

    .line 29
    .local v0, "wasConnected":Z
    :goto_39
    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->log:Lcom/nuance/swype/util/LogManager$Log;
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

    if-eq p2, v3, :cond_53

    if-ne p2, v2, :cond_83

    .line 32
    :cond_53
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_64

    .line 34
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v3}, Lcom/nuance/swype/connect/ConnectedStatus;->access$300(Lcom/nuance/swype/connect/ConnectedStatus;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACManager;->retryConnection()V

    .line 36
    :cond_64
    packed-switch p1, :pswitch_data_9c

    .line 48
    :goto_67
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # setter for: Lcom/nuance/swype/connect/ConnectedStatus;->stalled:Z
    invoke-static {v3, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$402(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 49
    if-nez v0, :cond_83

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z
    invoke-static {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$100(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v1

    if-nez v1, :cond_7e

    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z
    invoke-static {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$200(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 50
    :cond_7e
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/ConnectedStatus;->onConnectionChanged(Z)V

    .line 53
    :cond_83
    return-void

    .end local v0    # "wasConnected":Z
    :cond_84
    move v0, v1

    .line 28
    goto :goto_39

    .line 38
    .restart local v0    # "wasConnected":Z
    :pswitch_86
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # setter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z
    invoke-static {v3, v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$102(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 39
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/connect/ConnectedStatus;->onForegroundConnection(I)V

    goto :goto_67

    .line 43
    :pswitch_91
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # setter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z
    invoke-static {v3, v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$202(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 44
    iget-object v3, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->onForegroundConnection(I)V

    goto :goto_67

    .line 36
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_91
        :pswitch_86
    .end packed-switch
.end method

.method public connectionStatus(ILjava/lang/String;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 81
    const/16 v0, 0xd

    if-ne p1, v0, :cond_15

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # setter for: Lcom/nuance/swype/connect/ConnectedStatus;->initialized:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$502(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->onInitialized()V

    .line 90
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/connect/ConnectedStatus;->onConnectionStatus(ILjava/lang/String;)V

    .line 91
    return-void

    .line 84
    :cond_15
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # setter for: Lcom/nuance/swype/connect/ConnectedStatus;->stalled:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$402(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    goto :goto_f

    .line 86
    :cond_1e
    if-ne p1, v1, :cond_f

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/connect/ConnectedStatus;->stalled:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$402(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    goto :goto_f
.end method

.method public disconnected(I)V
    .registers 5
    .param p1, "connectionType"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z
    invoke-static {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$100(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z
    invoke-static {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$200(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_11
    const/4 v0, 0x1

    .line 60
    .local v0, "wasConnected":Z
    :goto_12
    packed-switch p1, :pswitch_data_46

    .line 72
    :goto_15
    :pswitch_15
    if-eqz v0, :cond_2c

    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z
    invoke-static {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$100(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # getter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z
    invoke-static {v2}, Lcom/nuance/swype/connect/ConnectedStatus;->access$200(Lcom/nuance/swype/connect/ConnectedStatus;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 73
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->onConnectionChanged(Z)V

    .line 75
    :cond_2c
    return-void

    .end local v0    # "wasConnected":Z
    :cond_2d
    move v0, v1

    .line 57
    goto :goto_12

    .line 62
    .restart local v0    # "wasConnected":Z
    :pswitch_2f
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # setter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z
    invoke-static {v2, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$202(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 63
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # setter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z
    invoke-static {v2, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$102(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    goto :goto_15

    .line 67
    :pswitch_3a
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # setter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWireless:Z
    invoke-static {v2, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$202(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    .line 68
    iget-object v2, p0, Lcom/nuance/swype/connect/ConnectedStatus$1;->this$0:Lcom/nuance/swype/connect/ConnectedStatus;

    # setter for: Lcom/nuance/swype/connect/ConnectedStatus;->connectedWifi:Z
    invoke-static {v2, v1}, Lcom/nuance/swype/connect/ConnectedStatus;->access$102(Lcom/nuance/swype/connect/ConnectedStatus;Z)Z

    goto :goto_15

    .line 60
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_15
        :pswitch_3a
    .end packed-switch
.end method
