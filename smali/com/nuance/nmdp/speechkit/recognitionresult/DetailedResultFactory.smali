.class public final Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultFactory;
.super Ljava/lang/Object;
.source "DetailedResultFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDetailedResults([B)Ljava/util/List;
    .locals 6
    .param p0, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 13
    if-eqz p0, :cond_0

    array-length v4, p0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 15
    :cond_0
    const-string v3, "Cannot parse results: The buffer length is too small to be containing any results."

    .line 16
    .local v3, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 18
    .end local v3    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->createDictationResult([B)Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    move-result-object v1

    .line 20
    .local v1, "dictRes":Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v0, "detailedResults":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 24
    new-instance v4, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultImpl;

    invoke-interface {v1, v2}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultImpl;-><init>(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_2
    return-object v0
.end method
