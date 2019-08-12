.class public interface abstract Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/SpeechError;)V
.end method

.method public abstract onResults(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;ILcom/nuance/nmdp/speechkit/CustomWordsSynchronizeResult;)V
.end method
