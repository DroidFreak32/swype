.class public interface abstract Lcom/nuance/nmdp/speechkit/Recognition;
.super Ljava/lang/Object;
.source "Recognition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/Recognition$Result;
    }
.end annotation


# virtual methods
.method public abstract getDetailedResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResult(I)Lcom/nuance/nmdp/speechkit/Recognition$Result;
.end method

.method public abstract getResultCount()I
.end method

.method public abstract getSuggestion()Ljava/lang/String;
.end method

.method public abstract isFinalResponse()Z
.end method
