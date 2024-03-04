.class Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;
.super Ljava/lang/Object;
.source "LanguageTableImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
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
        "Lcom/nuance/nmdp/speechkit/LanguageTable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expectMore()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getParsed()Lcom/nuance/nmdp/speechkit/LanguageTable;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    return-object v0
.end method

.method public bridge synthetic getParsed()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->getParsed()Lcom/nuance/nmdp/speechkit/LanguageTable;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z
    .locals 8
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    const/4 v5, 0x0

    .line 84
    :try_start_0
    const-string v6, "status"

    invoke-interface {p1, v6}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "status":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    const-string v7, "success"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->access$002(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;Z)Z

    .line 86
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->access$000(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    const-string v7, "dictation_language_to_use"

    invoke-interface {p1, v7}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->access$102(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    :goto_0
    const-string v6, "available_languages"

    invoke-interface {p1, v6}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getSequence(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v1

    .line 91
    .local v1, "languages":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    const-string v7, "available_langs_checksum"

    invoke-interface {p1, v7}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->access$202(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;I)I

    .line 93
    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->size()I

    move-result v2

    .line 96
    .local v2, "size":I
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    new-array v7, v2, [Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->access$302(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;)[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 99
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->access$300(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;)[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    move-result-object v6

    new-instance v7, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    invoke-direct {v7}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;-><init>()V

    aput-object v7, v6, v0

    .line 100
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    invoke-static {v6}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->access$300(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;)[Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-interface {v1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->getDictionary(I)Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$LanguageImpl;->parse(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 110
    .end local v0    # "i":I
    .end local v1    # "languages":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .end local v2    # "size":I
    .end local v3    # "status":Ljava/lang/String;
    :cond_0
    :goto_2
    return v5

    .line 89
    .restart local v3    # "status":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/LanguageTableImpl;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl;->access$102(Lcom/nuance/nmdp/speechkit/LanguageTableImpl;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v3    # "status":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 107
    .local v4, "tr":Ljava/lang/Throwable;
    const-string v6, "Error parsing language table request result"

    invoke-static {p0, v6, v4}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 97
    .end local v4    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "i":I
    .restart local v1    # "languages":Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .restart local v2    # "size":I
    .restart local v3    # "status":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/LanguageTableImpl$1;->parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z

    move-result v0

    return v0
.end method
