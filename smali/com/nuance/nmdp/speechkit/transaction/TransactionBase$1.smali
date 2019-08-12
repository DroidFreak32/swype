.class Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;
.super Ljava/lang/Object;
.source "TransactionBase.java"

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;->createNmasResourceListener()Lcom/nuance/nmsp/client/sdk/components/resource/nmas/NMASResourceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PDXCommandCreated(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$1;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method public PDXCreateCommandFailed()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionBase;

    const-string v1, "PDX Create Command Failed"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$2;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1$2;-><init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionBase$1;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method public getParameterCompleted(SLjava/util/Vector;J)V
    .locals 0
    .param p1, "arg0"    # S
    .param p2, "arg1"    # Ljava/util/Vector;
    .param p3, "arg2"    # J

    .prologue
    .line 353
    return-void
.end method

.method public getParameterFailed(SSJ)V
    .locals 0
    .param p1, "arg0"    # S
    .param p2, "arg1"    # S
    .param p3, "arg2"    # J

    .prologue
    .line 357
    return-void
.end method

.method public resourceUnloaded(S)V
    .locals 0
    .param p1, "arg0"    # S

    .prologue
    .line 361
    return-void
.end method

.method public setParameterCompleted(SLjava/util/Vector;J)V
    .locals 0
    .param p1, "arg0"    # S
    .param p2, "arg1"    # Ljava/util/Vector;
    .param p3, "arg2"    # J

    .prologue
    .line 366
    return-void
.end method

.method public setParameterFailed(SSJ)V
    .locals 0
    .param p1, "arg0"    # S
    .param p2, "arg1"    # S
    .param p3, "arg2"    # J

    .prologue
    .line 370
    return-void
.end method
