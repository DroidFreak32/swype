.class Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1$3;
.super Ljava/lang/Object;
.source "VocalizeTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;->stopped(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1$3;->this$1:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1$3;->this$1:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;

    iget-object v0, v0, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;

    # invokes: Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->currentState()Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionState;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;->access$000(Lcom/nuance/nmdp/speechkit/transaction/vocalize/VocalizeTransaction;)Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionState;->audioStopped()V

    .line 122
    return-void
.end method
