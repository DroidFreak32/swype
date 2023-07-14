.class interface abstract Lcom/nuance/nmdp/speechkit/IRecognizerListener;
.super Ljava/lang/Object;
.source "IRecognizerListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RecognizerType:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRecognizerType;",
            "Lcom/nuance/nmdp/speechkit/SpeechError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRecordingBegin(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRecognizerType;)V"
        }
    .end annotation
.end method

.method public abstract onRecordingDone(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRecognizerType;)V"
        }
    .end annotation
.end method

.method public abstract onResults(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRecognizerType;TResultType;)V"
        }
    .end annotation
.end method
