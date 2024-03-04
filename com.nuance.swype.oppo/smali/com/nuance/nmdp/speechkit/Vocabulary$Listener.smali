.class public interface abstract Lcom/nuance/nmdp/speechkit/Vocabulary$Listener;
.super Ljava/lang/Object;
.source "Vocabulary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/Vocabulary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/nuance/nmdp/speechkit/Vocabulary;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/Vocabulary",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/SpeechError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onResults(Lcom/nuance/nmdp/speechkit/Vocabulary;Lcom/nuance/nmdp/speechkit/DataUploadResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/Vocabulary",
            "<*>;",
            "Lcom/nuance/nmdp/speechkit/DataUploadResult;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSendBegin()V
.end method

.method public abstract onSendDone(Lcom/nuance/nmdp/speechkit/Vocabulary;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/nmdp/speechkit/Vocabulary",
            "<*>;)V"
        }
    .end annotation
.end method
