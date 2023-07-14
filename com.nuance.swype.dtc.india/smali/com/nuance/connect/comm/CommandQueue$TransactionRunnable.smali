.class Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransactionRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;
    }
.end annotation


# instance fields
.field private final commandQueue:Lcom/nuance/connect/comm/CommandQueue;

.field private volatile state:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

.field private final transaction:Lcom/nuance/connect/comm/Transaction;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/comm/Transaction;Lcom/nuance/connect/comm/CommandQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PENDING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    iput-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->state:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/comm/Transaction;

    iput-object p2, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->commandQueue:Lcom/nuance/connect/comm/CommandQueue;

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/comm/Transaction;

    invoke-interface {v0}, Lcom/nuance/connect/comm/Transaction;->getPriority()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->state:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    return-object v0
.end method

.method public getTransaction()Lcom/nuance/connect/comm/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/comm/Transaction;

    return-object v0
.end method

.method public isSame(Lcom/nuance/connect/comm/Transaction;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/comm/Transaction;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/Transaction;->isSame(Lcom/nuance/connect/comm/Transaction;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    sget-object v0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;->PROCESSING:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->setState(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->commandQueue:Lcom/nuance/connect/comm/CommandQueue;

    invoke-static {v0, p0}, Lcom/nuance/connect/comm/CommandQueue;->access$900(Lcom/nuance/connect/comm/CommandQueue;Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V

    return-void
.end method

.method public setState(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->state:Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable$CurrentState;

    return-void
.end method
