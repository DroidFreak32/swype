.class Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$2;
.super Ljava/lang/Object;
.source "TransactionBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;->PDXCreateCommandFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$2;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$2;->this$1:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->_currentState:Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;->createCommandFailed()V

    .line 346
    return-void
.end method
