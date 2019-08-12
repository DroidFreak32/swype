.class final Lcom/nuance/nmdp/speechkit/transaction/vocalize/ErrorState;
.super Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;
.source "ErrorState.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/vocalize/IVocalizeTransactionState;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;
    .param p5, "reportImmediately"    # Z

    .prologue
    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public final audioError()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public final audioStarted()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public final audioStopped()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
