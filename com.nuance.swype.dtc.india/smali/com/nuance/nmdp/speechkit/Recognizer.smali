.class public interface abstract Lcom/nuance/nmdp/speechkit/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/IRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/Recognizer$Listener;,
        Lcom/nuance/nmdp/speechkit/Recognizer$RecognizerType;,
        Lcom/nuance/nmdp/speechkit/Recognizer$PromptType;,
        Lcom/nuance/nmdp/speechkit/Recognizer$EndOfSpeechDetection;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getAudioLevel()F
.end method

.method public abstract setListener(Lcom/nuance/nmdp/speechkit/Recognizer$Listener;)V
.end method

.method public abstract setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V
.end method

.method public abstract start()V
.end method

.method public abstract stopRecording()V
.end method
