.class public interface abstract Lcom/nuance/nmsp/client/util/dictationresult/Token;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;
    }
.end annotation


# virtual methods
.method public abstract getConfidenceScore()D
.end method

.method public abstract getEndTime()J
.end method

.method public abstract getStartTime()J
.end method

.method public abstract getTokenType()Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;
.end method

.method public abstract hasNoSpaceAfterDirective()Z
.end method

.method public abstract hasNoSpaceBeforeDirective()Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method
