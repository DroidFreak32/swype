.class Lcom/nuance/nmdp/speechkit/transaction/generic/ErrorState;
.super Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;
.source "ErrorState.java"


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "transaction"    # Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;
    .param p2, "errorCode"    # I
    .param p3, "errorString"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 10
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/transaction/ErrorStateBase;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 11
    return-void
.end method
