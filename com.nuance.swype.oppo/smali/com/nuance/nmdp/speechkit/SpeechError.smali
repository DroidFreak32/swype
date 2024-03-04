.class public interface abstract Lcom/nuance/nmdp/speechkit/SpeechError;
.super Ljava/lang/Object;
.source "SpeechError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/SpeechError$Codes;
    }
.end annotation


# virtual methods
.method public abstract getErrorCode()I
.end method

.method public abstract getErrorDetail()Ljava/lang/String;
.end method

.method public abstract getSuggestion()Ljava/lang/String;
.end method
