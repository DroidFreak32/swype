.class public interface abstract Lcom/nuance/nmdp/speechkit/TextRecognizer;
.super Ljava/lang/Object;
.source "TextRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract setListener(Lcom/nuance/nmdp/speechkit/TextRecognizer$Listener;)V
.end method

.method public abstract setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V
.end method

.method public abstract start()V
.end method
