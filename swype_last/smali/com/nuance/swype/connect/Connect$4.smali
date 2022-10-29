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
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/connect/Connect;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionStatus(ILjava/lang/String;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 856
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/connect/ConnectedStatus;->onConnectionStatus(ILjava/lang/String;)V

    .line 858
    packed-switch p1, :pswitch_data_16

    .line 868
    :goto_6
    return-void

    .line 860
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/connect/Connect;->isLicensed:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/Connect;->access$2202(Lcom/nuance/swype/connect/Connect;Z)Z

    goto :goto_6

    .line 864
    :pswitch_e
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    const/4 v1, 0x1

    # setter for: Lcom/nuance/swype/connect/Connect;->isLicensed:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/Connect;->access$2202(Lcom/nuance/swype/connect/Connect;Z)Z

    goto :goto_6

    .line 858
    nop

    :pswitch_data_16
    .packed-switch 0xe
        :pswitch_7
        :pswitch_e
    .end packed-switch
.end method

.method public onForegroundConnection(I)V
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 829
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/ConnectedStatus;->onForegroundConnection(I)V

    .line 830
    packed-switch p1, :pswitch_data_a2

    .line 852
    :goto_6
    return-void

    .line 833
    :pswitch_7
    :try_start_7
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Updating connection limit for type WIFI to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    iget v4, v4, Lcom/nuance/swype/connect/Connect;->maxConnectionsWifi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 834
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    iget v2, v2, Lcom/nuance/swype/connect/Connect;->maxConnectionsWifi:I

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConcurrentConnectionLimit(I)V
    :try_end_33
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_7 .. :try_end_33} :catch_34

    goto :goto_6

    .line 835
    :catch_34
    move-exception v0

    .line 836
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACException;
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Issue changing the WIFI connection limit with error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 837
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_6

    .line 843
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    :pswitch_54
    :try_start_54
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Updating connection limit for type MOBILE to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    iget v4, v4, Lcom/nuance/swype/connect/Connect;->maxConnectionsCellular:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 844
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    # getter for: Lcom/nuance/swype/connect/Connect;->acManager:Lcom/nuance/swypeconnect/ac/ACManager;
    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    iget v2, v2, Lcom/nuance/swype/connect/Connect;->maxConnectionsCellular:I

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConcurrentConnectionLimit(I)V
    :try_end_80
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_54 .. :try_end_80} :catch_81

    goto :goto_6

    .line 845
    :catch_81
    move-exception v0

    .line 846
    .restart local v0    # "e":Lcom/nuance/swypeconnect/ac/ACException;
    # getter for: Lcom/nuance/swype/connect/Connect;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Issue changing the MOBILE connection limit with error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 847
    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto/16 :goto_6

    .line 830
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_54
        :pswitch_7
    .end packed-switch
.end method

.method public onInitialized()V
    .registers 2

    .prologue
    .line 824
    invoke-super {p0}, Lcom/nuance/swype/connect/ConnectedStatus;->onInitialized()V

    .line 825
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$4;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->doUpgrade()V

    .line 826
    return-void
.end method
