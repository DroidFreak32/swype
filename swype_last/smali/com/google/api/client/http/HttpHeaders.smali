.class public Lcom/google/api/client/http/HttpHeaders;
.super Lcom/google/api/client/util/GenericData;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;,
        Lcom/google/api/client/http/HttpHeaders$HeaderParsingFakeLevelHttpRequest;
    }
.end annotation


# instance fields
.field private accept:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Accept"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private acceptEncoding:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Accept-Encoding"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private age:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Age"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private authenticate:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "WWW-Authenticate"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private authorization:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Authorization"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheControl:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Cache-Control"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentEncoding:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Encoding"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentLength:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Length"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private contentMD5:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-MD5"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentRange:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Range"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentType:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Content-Type"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cookie:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Cookie"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private date:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Date"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private etag:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ETag"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expires:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Expires"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ifMatch:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Match"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ifModifiedSince:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Modified-Since"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ifNoneMatch:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-None-Match"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ifRange:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Range"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ifUnmodifiedSince:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "If-Unmodified-Since"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastModified:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Last-Modified"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Location"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mimeVersion:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "MIME-Version"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private range:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Range"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private retryAfter:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Retry-After"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userAgent:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "User-Agent"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 61
    sget-object v0, Lcom/google/api/client/util/GenericData$Flags;->IGNORE_CASE:Lcom/google/api/client/util/GenericData$Flags;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/util/GenericData;-><init>(Ljava/util/EnumSet;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "gzip"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->acceptEncoding:Ljava/util/List;

    .line 62
    return-void
.end method

.method private static addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Writer;)V
    .registers 11
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "logbuf"    # Ljava/lang/StringBuilder;
    .param p2, "curlbuf"    # Ljava/lang/StringBuilder;
    .param p3, "lowLevelHttpRequest"    # Lcom/google/api/client/http/LowLevelHttpRequest;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;
    .param p6, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    if-eqz p5, :cond_8

    invoke-static {p5}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 893
    :cond_8
    :goto_8
    return-void

    .line 867
    :cond_9
    invoke-static {p5}, Lcom/google/api/client/http/HttpHeaders;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "stringValue":Ljava/lang/String;
    move-object v0, v1

    .line 870
    .local v0, "loggedStringValue":Ljava/lang/String;
    const-string/jumbo v2, "Authorization"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string/jumbo v2, "Cookie"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_20
    if-eqz p0, :cond_2a

    sget-object v2, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 872
    :cond_2a
    const-string/jumbo v0, "<Not Logged>"

    .line 874
    :cond_2d
    if-eqz p1, :cond_41

    .line 875
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    sget-object v2, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    :cond_41
    if-eqz p2, :cond_5f

    .line 880
    const-string/jumbo v2, " -H \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_5f
    if-eqz p3, :cond_64

    .line 884
    invoke-virtual {p3, p4, v1}, Lcom/google/api/client/http/LowLevelHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_64
    if-eqz p6, :cond_8

    .line 888
    invoke-virtual {p6, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 889
    const-string/jumbo v2, ": "

    invoke-virtual {p6, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 891
    const-string/jumbo v2, "\r\n"

    invoke-virtual {p6, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private getAsList(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1022
    .local p1, "passedValue":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    .line 1023
    const/4 v0, 0x0

    .line 1027
    :goto_3
    return-object v0

    .line 1025
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1017
    .local p1, "internalValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method private static parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p0, "valueType"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 1177
    .local p1, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-static {p1, p0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1178
    invoke-static {v0, p2}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;)V
    .registers 11
    .param p0, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .param p1, "logbuf"    # Ljava/lang/StringBuilder;
    .param p2, "curlbuf"    # Ljava/lang/StringBuilder;
    .param p3, "logger"    # Ljava/util/logging/Logger;
    .param p4, "lowLevelHttpRequest"    # Lcom/google/api/client/http/LowLevelHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 916
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/io/Writer;)V

    .line 917
    return-void
.end method

.method static serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/io/Writer;)V
    .registers 28
    .param p0, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .param p1, "logbuf"    # Ljava/lang/StringBuilder;
    .param p2, "curlbuf"    # Ljava/lang/StringBuilder;
    .param p3, "logger"    # Ljava/util/logging/Logger;
    .param p4, "lowLevelHttpRequest"    # Lcom/google/api/client/http/LowLevelHttpRequest;
    .param p5, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 941
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 942
    .local v17, "headerNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_d
    :goto_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 943
    .local v16, "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 944
    .local v20, "name":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "multiple headers of the same name (headers are case insensitive): %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 946
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 947
    .local v13, "value":Ljava/lang/Object;
    if-eqz v13, :cond_d

    .line 949
    move-object/from16 v6, v20

    .line 950
    .local v6, "displayName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/HttpHeaders;->getClassInfo()Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v15

    .line 951
    .local v15, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v15, :cond_49

    .line 5153
    iget-object v6, v15, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    .line 954
    :cond_49
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    .line 955
    .local v21, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    instance-of v2, v13, Ljava/lang/Iterable;

    if-nez v2, :cond_57

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 956
    :cond_57
    invoke-static {v13}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_5f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "repeatedValue":Ljava/lang/Object;
    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    .line 957
    invoke-static/range {v2 .. v8}, Lcom/google/api/client/http/HttpHeaders;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_5f

    .end local v7    # "repeatedValue":Ljava/lang/Object;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_77
    move-object/from16 v8, p3

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object v12, v6

    move-object/from16 v14, p5

    .line 966
    invoke-static/range {v8 .. v14}, Lcom/google/api/client/http/HttpHeaders;->addHeader(Ljava/util/logging/Logger;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_d

    .line 970
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/Object;
    .end local v15    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v16    # "headerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_86
    if-eqz p5, :cond_8b

    .line 971
    invoke-virtual/range {p5 .. p5}, Ljava/io/Writer;->flush()V

    .line 973
    :cond_8b
    return-void
.end method

.method public static serializeHeadersForMultipartRequests(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ljava/io/Writer;)V
    .registers 10
    .param p0, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .param p1, "logbuf"    # Ljava/lang/StringBuilder;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 932
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;Ljava/io/Writer;)V

    .line 933
    return-void
.end method

.method private static toStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "headerValue"    # Ljava/lang/Object;

    .prologue
    .line 899
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_d

    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "headerValue":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 4153
    iget-object v0, v0, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    .line 899
    .restart local p0    # "headerValue":Ljava/lang/Object;
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method public clone()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .registers 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpHeaders;->clone()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public final fromHttpHeaders(Lcom/google/api/client/http/HttpHeaders;)V
    .registers 7
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    .line 1082
    :try_start_0
    new-instance v0, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;-><init>(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;)V

    .line 1083
    .local v0, "state":Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/google/api/client/http/HttpHeaders$HeaderParsingFakeLevelHttpRequest;

    invoke-direct {v4, p0, v0}, Lcom/google/api/client/http/HttpHeaders$HeaderParsingFakeLevelHttpRequest;-><init>(Lcom/google/api/client/http/HttpHeaders;Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;)V

    invoke-static {p1, v1, v2, v3, v4}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;)V

    .line 1085
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->finish()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    .line 1089
    return-void

    .line 1088
    .end local v0    # "state":Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;
    :catch_15
    move-exception v1

    invoke-static {v1}, Lcom/google/api/client/util/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final fromHttpResponse(Lcom/google/api/client/http/LowLevelHttpResponse;Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "response"    # Lcom/google/api/client/http/LowLevelHttpResponse;
    .param p2, "logger"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpHeaders;->clear()V

    .line 986
    new-instance v2, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;

    invoke-direct {v2, p0, p2}, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;-><init>(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;)V

    .line 987
    .local v2, "state":Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;
    invoke-virtual {p1}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderCount()I

    move-result v0

    .line 988
    .local v0, "headerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1d

    .line 989
    invoke-virtual {p1, v1}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/LowLevelHttpResponse;->getHeaderValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/google/api/client/http/HttpHeaders;->parseHeader(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;)V

    .line 988
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 991
    :cond_1d
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->finish()V

    .line 992
    return-void
.end method

.method public final getAccept()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->accept:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAcceptEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->acceptEncoding:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAge()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->age:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final getAuthenticate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->authenticate:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthenticateAsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->authenticate:Ljava/util/List;

    return-object v0
.end method

.method public final getAuthorization()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorizationAsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/util/List;

    return-object v0
.end method

.method public final getCacheControl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->cacheControl:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentEncoding:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentLength:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final getContentMD5()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentMD5:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getContentRange()Ljava/lang/String;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentRange:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentType:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->cookie:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->date:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getETag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->etag:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getExpires()Ljava/lang/String;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->expires:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstHeaderStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1038
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1039
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_c

    .line 1040
    const/4 v3, 0x0

    .line 1048
    :goto_b
    return-object v3

    .line 1042
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1043
    .local v2, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    instance-of v3, v1, Ljava/lang/Iterable;

    if-nez v3, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1044
    :cond_1a
    invoke-static {v1}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1045
    invoke-static {v3}, Lcom/google/api/client/http/HttpHeaders;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 1048
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_31
    invoke-static {v1}, Lcom/google/api/client/http/HttpHeaders;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b
.end method

.method public getHeaderStringValues(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1059
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1060
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_f

    .line 1061
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 1071
    :goto_e
    return-object v5

    .line 1063
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1064
    .local v3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    instance-of v5, v2, Ljava/lang/Iterable;

    if-nez v5, :cond_1d

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1065
    :cond_1d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1067
    .local v1, "repeatedValue":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/api/client/http/HttpHeaders;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 1069
    .end local v1    # "repeatedValue":Ljava/lang/Object;
    :cond_3c
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_e

    .line 1071
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    invoke-static {v2}, Lcom/google/api/client/http/HttpHeaders;->toStringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_e
.end method

.method public final getIfMatch()Ljava/lang/String;
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifMatch:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIfModifiedSince()Ljava/lang/String;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifModifiedSince:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIfNoneMatch()Ljava/lang/String;
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifNoneMatch:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIfRange()Ljava/lang/String;
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifRange:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIfUnmodifiedSince()Ljava/lang/String;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifUnmodifiedSince:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLastModified()Ljava/lang/String;
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->lastModified:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->location:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMimeVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->mimeVersion:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRange()Ljava/lang/String;
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->range:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRetryAfter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->retryAfter:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderValue(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method parseHeader(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;)V
    .registers 16
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;

    .prologue
    .line 1130
    iget-object v3, p3, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->context:Ljava/util/List;

    .line 1131
    .local v3, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    iget-object v1, p3, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->classInfo:Lcom/google/api/client/util/ClassInfo;

    .line 1132
    .local v1, "classInfo":Lcom/google/api/client/util/ClassInfo;
    iget-object v0, p3, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->arrayValueMap:Lcom/google/api/client/util/ArrayValueMap;

    .line 1133
    .local v0, "arrayValueMap":Lcom/google/api/client/util/ArrayValueMap;
    iget-object v6, p3, Lcom/google/api/client/http/HttpHeaders$ParseHeaderState;->logger:Ljava/lang/StringBuilder;

    .line 1135
    .local v6, "logger":Ljava/lang/StringBuilder;
    if-eqz v6, :cond_2b

    .line 1136
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    :cond_2b
    invoke-virtual {v1, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v4

    .line 1140
    .local v4, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v4, :cond_88

    .line 5172
    iget-object v10, v4, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 1141
    invoke-static {v3, v10}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 1143
    .local v9, "type":Ljava/lang/reflect/Type;
    invoke-static {v9}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v10

    if-eqz v10, :cond_53

    .line 1145
    invoke-static {v9}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    .line 6138
    .local v7, "rawArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, v4, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 1147
    invoke-static {v7, v3, p2}, Lcom/google/api/client/http/HttpHeaders;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v10, v7, v11}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1174
    .end local v7    # "rawArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "type":Ljava/lang/reflect/Type;
    :goto_52
    return-void

    .line 1149
    .restart local v9    # "type":Ljava/lang/reflect/Type;
    :cond_53
    invoke-static {v3, v9}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/Iterable;

    invoke-static {v10, v11}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_80

    .line 1153
    invoke-virtual {v4, p0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 1154
    .local v2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v2, :cond_6e

    .line 1155
    invoke-static {v9}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v2

    .line 1156
    invoke-virtual {v4, p0, v2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1158
    :cond_6e
    const-class v10, Ljava/lang/Object;

    if-ne v9, v10, :cond_7b

    const/4 v8, 0x0

    .line 1159
    .local v8, "subFieldType":Ljava/lang/reflect/Type;
    :goto_73
    invoke-static {v8, v3, p2}, Lcom/google/api/client/http/HttpHeaders;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 1158
    .end local v8    # "subFieldType":Ljava/lang/reflect/Type;
    :cond_7b
    invoke-static {v9}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    goto :goto_73

    .line 1162
    .end local v2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_80
    invoke-static {v9, v3, p2}, Lcom/google/api/client/http/HttpHeaders;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, p0, v10}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_52

    .line 1167
    .end local v9    # "type":Ljava/lang/reflect/Type;
    :cond_88
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1168
    .local v5, "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_98

    .line 1169
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    .restart local v5    # "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v5}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 1172
    :cond_98
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public setAccept(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->accept:Ljava/util/List;

    .line 199
    return-object p0
.end method

.method public setAcceptEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->acceptEncoding:Ljava/util/List;

    .line 222
    return-object p0
.end method

.method public setAge(Ljava/lang/Long;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "age"    # Ljava/lang/Long;

    .prologue
    .line 833
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->age:Ljava/util/List;

    .line 834
    return-object p0
.end method

.method public setAuthenticate(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "authenticate"    # Ljava/lang/String;

    .prologue
    .line 809
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->authenticate:Ljava/util/List;

    .line 810
    return-object p0
.end method

.method public setAuthorization(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "authorization"    # Ljava/lang/String;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/util/List;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public setAuthorization(Ljava/util/List;)Lcom/google/api/client/http/HttpHeaders;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/http/HttpHeaders;"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "authorization":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/api/client/http/HttpHeaders;->authorization:Ljava/util/List;

    .line 269
    return-object p0
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 849
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3127
    invoke-static {p2}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 849
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 851
    invoke-static {v1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    .line 4053
    invoke-static {v1}, Lcom/google/api/client/repackaged/org/apache/commons/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "encoded":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    return-object v1
.end method

.method public setCacheControl(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "cacheControl"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->cacheControl:Ljava/util/List;

    .line 293
    return-object p0
.end method

.method public setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "contentEncoding"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentEncoding:Ljava/util/List;

    .line 317
    return-object p0
.end method

.method public setContentLength(Ljava/lang/Long;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "contentLength"    # Ljava/lang/Long;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentLength:Ljava/util/List;

    .line 341
    return-object p0
.end method

.method public setContentMD5(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "contentMD5"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentMD5:Ljava/util/List;

    .line 365
    return-object p0
.end method

.method public setContentRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "contentRange"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentRange:Ljava/util/List;

    .line 389
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->contentType:Ljava/util/List;

    .line 413
    return-object p0
.end method

.method public setCookie(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->cookie:Ljava/util/List;

    .line 441
    return-object p0
.end method

.method public setDate(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->date:Ljava/util/List;

    .line 465
    return-object p0
.end method

.method public setETag(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->etag:Ljava/util/List;

    .line 489
    return-object p0
.end method

.method public setExpires(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "expires"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->expires:Ljava/util/List;

    .line 513
    return-object p0
.end method

.method public setIfMatch(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "ifMatch"    # Ljava/lang/String;

    .prologue
    .line 560
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifMatch:Ljava/util/List;

    .line 561
    return-object p0
.end method

.method public setIfModifiedSince(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "ifModifiedSince"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifModifiedSince:Ljava/util/List;

    .line 537
    return-object p0
.end method

.method public setIfNoneMatch(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "ifNoneMatch"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifNoneMatch:Ljava/util/List;

    .line 585
    return-object p0
.end method

.method public setIfRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "ifRange"    # Ljava/lang/String;

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifRange:Ljava/util/List;

    .line 633
    return-object p0
.end method

.method public setIfUnmodifiedSince(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "ifUnmodifiedSince"    # Ljava/lang/String;

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->ifUnmodifiedSince:Ljava/util/List;

    .line 609
    return-object p0
.end method

.method public setLastModified(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "lastModified"    # Ljava/lang/String;

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->lastModified:Ljava/util/List;

    .line 657
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->location:Ljava/util/List;

    .line 681
    return-object p0
.end method

.method public setMimeVersion(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "mimeVersion"    # Ljava/lang/String;

    .prologue
    .line 704
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->mimeVersion:Ljava/util/List;

    .line 705
    return-object p0
.end method

.method public setRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->range:Ljava/util/List;

    .line 729
    return-object p0
.end method

.method public setRetryAfter(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "retryAfter"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->retryAfter:Ljava/util/List;

    .line 753
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    .registers 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpHeaders;->getAsList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpHeaders;->userAgent:Ljava/util/List;

    .line 777
    return-object p0
.end method
