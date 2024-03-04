.class public interface abstract Lcom/nuance/nmdp/speechkit/transaction/recognize/IRecognizeTransactionListener;
.super Ljava/lang/Object;
.source "IRecognizeTransactionListener.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;


# virtual methods
.method public abstract recordingStarted(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
.end method

.method public abstract recordingStopped(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
.end method

.method public abstract results(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
.end method
