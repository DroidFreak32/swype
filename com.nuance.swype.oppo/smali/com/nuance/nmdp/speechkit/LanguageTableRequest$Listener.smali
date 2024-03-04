.class public interface abstract Lcom/nuance/nmdp/speechkit/LanguageTableRequest$Listener;
.super Ljava/lang/Object;
.source "LanguageTableRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/LanguageTableRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
.end method

.method public abstract onResult(Lcom/nuance/nmdp/speechkit/LanguageTable;)V
.end method
