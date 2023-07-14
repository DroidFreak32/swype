.class public interface abstract Lcom/nuance/nmdp/speechkit/NluRecognizer$Listener;
.super Ljava/lang/Object;
.source "NluRecognizer.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/IRecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/NluRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/nmdp/speechkit/IRecognizerListener",
        "<",
        "Lcom/nuance/nmdp/speechkit/NluRecognizer;",
        "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/nuance/nmdp/speechkit/NluRecognizer;Lcom/nuance/nmdp/speechkit/SpeechError;)V
.end method

.method public abstract onRecordingBegin(Lcom/nuance/nmdp/speechkit/NluRecognizer;)V
.end method

.method public abstract onRecordingDone(Lcom/nuance/nmdp/speechkit/NluRecognizer;)V
.end method

.method public abstract onResults(Lcom/nuance/nmdp/speechkit/NluRecognizer;Lcom/nuance/nmdp/speechkit/GenericRecognition;)V
.end method
