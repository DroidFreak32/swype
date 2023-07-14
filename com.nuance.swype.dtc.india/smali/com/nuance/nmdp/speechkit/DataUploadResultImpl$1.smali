.class Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;
.super Ljava/lang/Object;
.source "DataUploadResultImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
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
        "Lcom/nuance/nmdp/speechkit/DataUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expectMore()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getParsed()Lcom/nuance/nmdp/speechkit/DataUploadResult;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;

    return-object v0
.end method

.method public bridge synthetic getParsed()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;->getParsed()Lcom/nuance/nmdp/speechkit/DataUploadResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z
    .locals 8
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    :try_start_0
    const-string/jumbo v6, "voc_pregeneration_status"

    invoke-interface {p1, v6}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 91
    if-ne v6, v5, :cond_1

    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->access$002(Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;Z)Z

    .line 94
    :goto_0
    const-string/jumbo v6, "result_list"

    invoke-interface {p1, v6}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getSequence(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v0

    .line 96
    .local v0, "dataResults":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->size()I

    move-result v2

    .line 99
    .local v2, "size":I
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;

    new-array v7, v2, [Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->access$102(Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;)[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 102
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->access$100(Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;)[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    move-result-object v6

    new-instance v7, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    invoke-direct {v7}, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;-><init>()V

    aput-object v7, v6, v1

    .line 103
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->access$100(Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;)[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-interface {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getDictionary(I)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->parse(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    .end local v0    # "dataResults":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    :goto_2
    return v4

    .line 92
    :cond_1
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->access$002(Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v3

    .line 111
    .local v3, "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "Error parsing result"

    invoke-static {p0, v5, v3}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 100
    .end local v3    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "dataResults":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    .line 106
    goto :goto_2
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;->parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z

    move-result v0

    return v0
.end method
