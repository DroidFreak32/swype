.class public interface abstract Lcom/nuance/nmdp/speechkit/Vocalizer;
.super Ljava/lang/Object;
.source "Vocalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method

.method public abstract setListener(Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;)V
.end method

.method public abstract setVoice(Ljava/lang/String;)V
.end method

.method public abstract speakMarkupString(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract speakString(Ljava/lang/String;Ljava/lang/Object;)V
.end method
