.class Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$2;
.super Ljava/lang/Object;
.source "TransactionBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->PDXQueryErrorReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

.field final synthetic val$error:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$2;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$2;->val$error:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$2;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$2;->val$error:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;

    invoke-interface {v1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;->getError()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$2;->val$error:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;

    invoke-interface {v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;->queryError(ILjava/lang/String;)V

    .line 405
    return-void
.end method
