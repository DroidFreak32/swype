.class Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$1;
.super Ljava/lang/Object;
.source "TransactionBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->PDXCommandEvent(S)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

.field final synthetic val$event:S


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;S)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$1;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

    iput-short p2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$1;->val$event:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$1;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    iget-short v1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$2$1;->val$event:S

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;->commandEvent(S)V

    .line 391
    return-void
.end method
