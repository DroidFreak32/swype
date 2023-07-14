.class public interface abstract Lcom/nuance/nmdp/speechkit/VocabularyUploadCommand$Listener;
.super Ljava/lang/Object;
.source "VocabularyUploadCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/VocabularyUploadCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/nuance/nmdp/speechkit/VocabularyUploadCommand;Lcom/nuance/nmdp/speechkit/SpeechError;)V
.end method

.method public abstract onResults(Lcom/nuance/nmdp/speechkit/VocabularyUploadCommand;Lcom/nuance/nmdp/speechkit/VocabularyUploadResult;)V
.end method

.method public abstract onSendDone(Lcom/nuance/nmdp/speechkit/VocabularyUploadCommand;)V
.end method
