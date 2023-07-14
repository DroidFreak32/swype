.class public final Lcom/google/api/client/util/escape/CharEscapers;
.super Ljava/lang/Object;
.source "CharEscapers.java"


# static fields
.field private static final URI_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_PATH_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_QUERY_STRING_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_RESERVED_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_USERINFO_ESCAPER:Lcom/google/api/client/util/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string/jumbo v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 31
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string/jumbo v1, "-_.!~*\'()@:$&,;="

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_PATH_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 34
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string/jumbo v1, "-_.!~*\'()@:$&,;=+/?"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_RESERVED_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 37
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string/jumbo v1, "-_.!~*\'():$&,;="

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_USERINFO_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 40
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string/jumbo v1, "-_.!~*\'()@:$,;/?:"

    invoke-direct {v0, v1, v3}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_QUERY_STRING_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    return-void
.end method

.method public static decodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static escapeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_PATH_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriPathWithoutReserved(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_RESERVED_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_QUERY_STRING_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 169
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_USERINFO_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
