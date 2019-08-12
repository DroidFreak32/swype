.class Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$1;
.super Ljava/lang/Object;
.source "TransactionBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;->PDXCommandCreated(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$1;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$1;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$1;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$1;->val$sessionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;->commandCreated(Ljava/lang/String;)V

    .line 334
    return-void
.end method
