.class Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$4;
.super Ljava/lang/Object;
.source "TransactionBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->PDXQueryRetryReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryRetry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$prompt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$4;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$4;->val$prompt:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$4;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$4;->val$prompt:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$4;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;->queryRetry(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method
