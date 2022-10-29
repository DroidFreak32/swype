.class public final Lcom/nuance/nmdp/speechkit/transaction/custom_words_synchronize/ErrorState;
.super Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;
.source "ErrorState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;
    .param p5, "reportImmediately"    # Z

    .prologue
    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 12
    return-void
.end method
