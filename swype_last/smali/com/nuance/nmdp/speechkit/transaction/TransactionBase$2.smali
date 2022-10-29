.class Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;
.super Ljava/lang/Object;
.source "TransactionBase.java"

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->createCommandListener()Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V
    .registers 2

    .prologue
    .line 377
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PDXCommandEvent(S)V
    .registers 5
    .param p1, "event"    # S

    .prologue
    .line 380
    packed-switch p1, :pswitch_data_22

    .line 395
    :goto_3
    :pswitch_3
    return-void

    .line 384
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDX Command Event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;S)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 380
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public PDXQueryErrorReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;)V
    .registers 5
    .param p1, "error"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PDX Query Error Returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;->getError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$2;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$2;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method

.method public PDXQueryResultReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
    .registers 4
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    const-string/jumbo v1, "PDX Query Result Returned"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$3;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$3;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method public PDXQueryRetryReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryRetry;)V
    .registers 7
    .param p1, "retry"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryRetry;

    .prologue
    .line 423
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PDX Query Retry Returned: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryRetry;->getCause()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryRetry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    invoke-interface {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryRetry;->getPrompt()Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "prompt":Ljava/lang/String;
    invoke-interface {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryRetry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "name":Ljava/lang/String;
    new-instance v2, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$4;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method
