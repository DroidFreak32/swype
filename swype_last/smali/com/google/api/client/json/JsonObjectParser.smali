.class public Lcom/google/api/client/json/JsonObjectParser;
.super Ljava/lang/Object;
.source "JsonObjectParser.java"

# interfaces
.implements Lcom/google/api/client/util/ObjectParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/JsonObjectParser$Builder;
    }
.end annotation


# instance fields
.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final wrapperKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .registers 3
    .param p1, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .prologue
    .line 65
    new-instance v0, Lcom/google/api/client/json/JsonObjectParser$Builder;

    invoke-direct {v0, p1}, Lcom/google/api/client/json/JsonObjectParser$Builder;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonObjectParser$Builder;)V

    .line 66
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/json/JsonObjectParser$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/google/api/client/json/JsonObjectParser$Builder;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p1, Lcom/google/api/client/json/JsonObjectParser$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/json/JsonObjectParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/api/client/json/JsonObjectParser$Builder;->wrapperKeys:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/client/json/JsonObjectParser;->wrapperKeys:Ljava/util/Set;

    .line 76
    return-void
.end method

.method private initializeParser(Lcom/google/api/client/json/JsonParser;)V
    .registers 7
    .param p1, "parser"    # Lcom/google/api/client/json/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    iget-object v2, p0, Lcom/google/api/client/json/JsonObjectParser;->wrapperKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 131
    :goto_a
    return-void

    .line 126
    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/google/api/client/json/JsonObjectParser;->wrapperKeys:Ljava/util/Set;

    invoke-virtual {p1, v2}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 127
    if-eqz v2, :cond_2f

    invoke-virtual {p1}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-eq v2, v3, :cond_2f

    :goto_1b
    const-string/jumbo v1, "wrapper key(s) not found: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/api/client/json/JsonObjectParser;->wrapperKeys:Ljava/util/Set;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2a

    goto :goto_a

    .line 131
    :catchall_2a
    move-exception v0

    .line 132
    invoke-virtual {p1}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v0

    :cond_2f
    move v0, v1

    .line 127
    goto :goto_1b
.end method


# virtual methods
.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/json/JsonObjectParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public getWrapperKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/client/json/JsonObjectParser;->wrapperKeys:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/json/JsonObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/api/client/json/JsonObjectParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v1, p1, p2}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    .line 86
    .local v0, "parser":Lcom/google/api/client/json/JsonParser;
    invoke-direct {p0, v0}, Lcom/google/api/client/json/JsonObjectParser;->initializeParser(Lcom/google/api/client/json/JsonParser;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonObjectParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/api/client/json/JsonObjectParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    .line 97
    .local v0, "parser":Lcom/google/api/client/json/JsonParser;
    invoke-direct {p0, v0}, Lcom/google/api/client/json/JsonObjectParser;->initializeParser(Lcom/google/api/client/json/JsonParser;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
