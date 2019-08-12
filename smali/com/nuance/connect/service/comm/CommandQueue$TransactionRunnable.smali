.class Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransactionRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/comm/CommandQueue;

.field private transaction:Lcom/nuance/connect/service/comm/Transaction;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/service/comm/CommandQueue;Lcom/nuance/connect/service/comm/Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/service/comm/Transaction;

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/service/comm/Transaction;

    invoke-interface {v0}, Lcom/nuance/connect/service/comm/Transaction;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTransaction()Lcom/nuance/connect/service/comm/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/service/comm/Transaction;

    return-object v0
.end method

.method public isSame(Lcom/nuance/connect/service/comm/Transaction;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/service/comm/Transaction;

    invoke-interface {v0, p1}, Lcom/nuance/connect/service/comm/Transaction;->isSame(Lcom/nuance/connect/service/comm/Transaction;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;->this$0:Lcom/nuance/connect/service/comm/CommandQueue;

    invoke-static {v0, p0}, Lcom/nuance/connect/service/comm/CommandQueue;->access$1300(Lcom/nuance/connect/service/comm/CommandQueue;Lcom/nuance/connect/service/comm/CommandQueue$TransactionRunnable;)V

    return-void
.end method
