.class public interface abstract Lcom/nuance/nmdp/speechkit/util/parsers/IParser;
.super Ljava/lang/Object;
.source "IParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SourceType:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract expectMore()Z
.end method

.method public abstract getParsed()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSourceType;)Z"
        }
    .end annotation
.end method
