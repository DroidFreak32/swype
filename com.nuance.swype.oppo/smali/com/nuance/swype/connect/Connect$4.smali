.class Lcom/nuance/swype/connect/Connect$4;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/Connect;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionStatus(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/connect/ConnectedStatus;->onConnectionStatus(ILjava/lang/String;)V

    .line 748
    packed-switch p1, :pswitch_data_0

    .line 758
    :goto_0
    return-void

    .line 750
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/Connect;->access$2102(Lcom/nuance/swype/connect/Connect;Z)Z

    goto :goto_0

    .line 754
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/Connect;->access$2102(Lcom/nuance/swype/connect/Connect;Z)Z

    goto :goto_0

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onForegroundConnection(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 719
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/ConnectedStatus;->onForegroundConnection(I)V

    .line 720
    packed-switch p1, :pswitch_data_0

    .line 742
    :goto_0
    return-void

    .line 723
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "Updating connection limit for type WIFI to "

    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    iget v3, v3, Lcom/nuance/swype/connect/Connect;->maxConnectionsWifi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 724
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    iget v2, v2, Lcom/nuance/swype/connect/Connect;->maxConnectionsWifi:I

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConcurrentConnectionLimit(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Issue changing the WIFI connection limit with error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 727
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0

    .line 733
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "Updating connection limit for type MOBILE to "

    iget-object v3, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    iget v3, v3, Lcom/nuance/swype/connect/Connect;->maxConnectionsCellular:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 734
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    iget v2, v2, Lcom/nuance/swype/connect/Connect;->maxConnectionsCellular:I

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConcurrentConnectionLimit(I)V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 735
    :catch_1
    move-exception v0

    .line 736
    .restart local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Issue changing the MOBILE connection limit with error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 737
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto/16 :goto_0

    .line 720
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 714
    invoke-super {p0}, Lcom/nuance/swype/connect/ConnectedStatus;->onInitialized()V

    .line 715
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->doUpgrade()V

    .line 716
    return-void
.end method
