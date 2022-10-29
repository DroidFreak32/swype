.class public interface abstract Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;
.super Ljava/lang/Object;
.source "TextRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/TextRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/nuance/nmdp/speechkit/TextRecognizer;Lcom/nuance/nmdp/speechkit/SpeechError;)V
.end method

.method public abstract onResults(Lcom/nuance/nmdp/speechkit/TextRecognizer;Lcom/nuance/nmdp/speechkit/GenericRecognition;)V
.end method
