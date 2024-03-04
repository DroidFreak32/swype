.class Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$10;
.super Ljava/lang/Object;
.source "TransactionRunner.java"

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createManagerListener()Lcom/nuance/nmsp/client/sdk/components/resource/common/ManagerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$10;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callLogDataGenerated([B)V
    .locals 0
    .param p1, "callLogData"    # [B

    .prologue
    .line 667
    return-void
.end method

.method public connected(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "resource"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$10;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->access$200(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$10;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connected with session ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$10;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->access$302(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;)Ljava/lang/String;

    .line 646
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public connectionFailed(Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;S)V
    .locals 3
    .param p1, "resource"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;
    .param p2, "reason"    # S

    .prologue
    .line 651
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$10;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection failed reasoncode ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public disconnected(Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;S)V
    .locals 3
    .param p1, "resource"    # Lcom/nuance/nmsp/client/sdk/components/resource/common/Resource;
    .param p2, "reason"    # S

    .prologue
    .line 656
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$10;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disconnected reasoncode ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public shutdownCompleted()V
    .locals 0

    .prologue
    .line 663
    return-void
.end method
