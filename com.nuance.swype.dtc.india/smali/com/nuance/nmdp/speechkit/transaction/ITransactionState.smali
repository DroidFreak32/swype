.class public interface abstract Lcom/nuance/nmdp/speechkit/transaction/ITransactionState;
.super Ljava/lang/Object;
.source "ITransactionState.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract commandCreated(Ljava/lang/String;)V
.end method

.method public abstract commandEvent(S)V
.end method

.method public abstract createCommandFailed()V
.end method

.method public abstract enter()V
.end method

.method public abstract leave()V
.end method

.method public abstract queryError(ILjava/lang/String;)V
.end method

.method public abstract queryResult(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
.end method

.method public abstract queryRetry(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract start()V
.end method
