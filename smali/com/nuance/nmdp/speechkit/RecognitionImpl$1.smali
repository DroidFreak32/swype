.class Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;
.super Ljava/lang/Object;
.source "RecognitionImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/RecognitionImpl;->getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
        "<",
        "Lcom/nuance/nmdp/speechkit/Recognition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expectMore()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$400(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParsed()Lcom/nuance/nmdp/speechkit/Recognition;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    return-object v0
.end method

.method public bridge synthetic getParsed()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->getParsed()Lcom/nuance/nmdp/speechkit/Recognition;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z
    .locals 10
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 72
    const/4 v5, 0x1

    .line 76
    .local v5, "transcription_found":Z
    const-string v6, "transcription"

    invoke-interface {p1, v6}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 78
    const-string v6, "transcription"

    invoke-interface {p1, v6}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getByteString(Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    .local v0, "data":[B
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultFactory;->createDetailedResults([B)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$002(Lcom/nuance/nmdp/speechkit/RecognitionImpl;Ljava/util/List;)Ljava/util/List;

    .line 81
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$000(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 82
    .local v3, "results":[Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$000(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [I

    .line 83
    .local v4, "scores":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$000(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 85
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$000(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 86
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$000(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;

    invoke-interface {v6}, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;->getConfidenceScore()D

    move-result-wide v6

    double-to-int v6, v6

    aput v6, v4, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6, v3}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$102(Lcom/nuance/nmdp/speechkit/RecognitionImpl;[Ljava/lang/String;)[Ljava/lang/String;

    .line 89
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6, v4}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$202(Lcom/nuance/nmdp/speechkit/RecognitionImpl;[I)[I

    .line 104
    .end local v0    # "data":[B
    .end local v1    # "i":I
    .end local v3    # "results":[Ljava/lang/String;
    .end local v4    # "scores":[I
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 105
    .local v2, "prompt":Ljava/lang/String;
    const-string v6, "prompt"

    invoke-interface {p1, v6}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    const-string v6, "prompt"

    invoke-interface {p1, v6}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6, v2}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$302(Lcom/nuance/nmdp/speechkit/RecognitionImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    :cond_2
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-interface {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->isFinalResponse()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$402(Lcom/nuance/nmdp/speechkit/RecognitionImpl;Z)Z

    .line 113
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$400(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v5, :cond_4

    .line 116
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$102(Lcom/nuance/nmdp/speechkit/RecognitionImpl;[Ljava/lang/String;)[Ljava/lang/String;

    .line 117
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    new-array v7, v8, [I

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$202(Lcom/nuance/nmdp/speechkit/RecognitionImpl;[I)[I

    .line 118
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6, v9}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$302(Lcom/nuance/nmdp/speechkit/RecognitionImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$000(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 121
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$000(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 123
    :cond_3
    const-string v6, "Unable to extract transcriptions from result"

    invoke-static {p0, v6}, Lcom/nuance/nmdp/speechkit/util/Logger;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    :cond_4
    const/4 v6, 0x1

    return v6

    .line 93
    .end local v2    # "prompt":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 94
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    new-array v7, v8, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$102(Lcom/nuance/nmdp/speechkit/RecognitionImpl;[Ljava/lang/String;)[Ljava/lang/String;

    .line 95
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    new-array v7, v8, [I

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$202(Lcom/nuance/nmdp/speechkit/RecognitionImpl;[I)[I

    .line 96
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6, v9}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$302(Lcom/nuance/nmdp/speechkit/RecognitionImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$000(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 99
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->access$000(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;->parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z

    move-result v0

    return v0
.end method
