.class Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;
.super Ljava/lang/Object;
.source "ErrorStateBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;

.field final synthetic val$l:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;->val$l:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;->val$l:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;

    iget v2, v2, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_code:I

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;

    # getter for: Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_string:Ljava/lang/String;
    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->access$000(Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;

    # getter for: Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_suggestion:Ljava/lang/String;
    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->access$100(Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;->error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;->val$l:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;

    iget-object v1, v1, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;->_transaction:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 60
    return-void
.end method
