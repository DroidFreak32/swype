.class Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$3;
.super Ljava/lang/Object;
.source "TransactionBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->PDXQueryResultReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

.field final synthetic val$result:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$3;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$3;->val$result:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$3;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$3;->val$result:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;->queryResult(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V

    .line 417
    return-void
.end method
