.class public interface abstract Lcom/nuance/nmdp/speechkit/NluRecognizer;
.super Ljava/lang/Object;
.source "NluRecognizer.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/IRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;,
        Lcom/nuance/nmdp/speechkit/NluRecognizer$RecognizerType;,
        Lcom/nuance/nmdp/speechkit/NluRecognizer$PromptType;,
        Lcom/nuance/nmdp/speechkit/NluRecognizer$EndOfSpeechDetection;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getAudioLevel()F
.end method

.method public abstract setListener(Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;)V
.end method

.method public abstract setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V
.end method

.method public abstract start()V
.end method

.method public abstract stopRecording()V
.end method
