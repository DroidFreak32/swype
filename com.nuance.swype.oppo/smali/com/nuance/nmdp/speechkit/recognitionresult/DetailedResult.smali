.class public interface abstract Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;
.super Ljava/lang/Object;
.source "DetailedResult.java"


# virtual methods
.method public abstract getAlternatives(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfidenceScore()D
.end method

.method public abstract getTokenAtCursorPosition(I)Lcom/nuance/nmdp/speechkit/recognitionresult/Token;
.end method

.method public abstract getTokens()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/recognitionresult/Token;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
