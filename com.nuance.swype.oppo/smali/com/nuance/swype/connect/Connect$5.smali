.class Lcom/nuance/swype/connect/Connect$5;
.super Ljava/lang/Object;
.source "Connect.java"

# interfaces
.implements Lcom/nuance/swype/connect/ConnectLegal$DocumentAcceptedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$5;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public documentAccepted(I)V
    .locals 2
    .param p1, "documentType"    # I

    .prologue
    .line 885
    packed-switch p1, :pswitch_data_0

    .line 903
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 887
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$5;->this$0:Lcom/nuance/swype/connect/Connect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect;->setDataUsageOptInStatus(Z)V

    goto :goto_0

    .line 891
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$5;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isEulaAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$5;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$2200(Lcom/nuance/swype/connect/Connect;)V

    goto :goto_0

    .line 897
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$5;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$5;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$2200(Lcom/nuance/swype/connect/Connect;)V

    goto :goto_0

    .line 885
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
