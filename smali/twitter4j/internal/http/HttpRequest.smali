.class public final Ltwitter4j/internal/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NULL_PARAMETERS:[Ltwitter4j/internal/http/HttpParameter;

.field private static final serialVersionUID:J = -0x3011286b2699f78dL


# instance fields
.field private final authorization:Ltwitter4j/auth/Authorization;

.field private final method:Ltwitter4j/internal/http/RequestMethod;

.field private final parameters:[Ltwitter4j/internal/http/HttpParameter;

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    sput-object v0, Ltwitter4j/internal/http/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/internal/http/HttpParameter;

    return-void
.end method

.method public constructor <init>(Ltwitter4j/internal/http/RequestMethod;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;Ljava/util/Map;)V
    .locals 2
    .param p1, "method"    # Ltwitter4j/internal/http/RequestMethod;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "parameters"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p4, "authorization"    # Ltwitter4j/auth/Authorization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/RequestMethod;",
            "Ljava/lang/String;",
            "[",
            "Ltwitter4j/internal/http/HttpParameter;",
            "Ltwitter4j/auth/Authorization;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p5, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    .line 56
    sget-object v0, Ltwitter4j/internal/http/RequestMethod;->POST:Ltwitter4j/internal/http/RequestMethod;

    if-eq p1, v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ltwitter4j/internal/http/HttpParameter;->encodeParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    .line 58
    sget-object v0, Ltwitter4j/internal/http/HttpRequest;->NULL_PARAMETERS:[Ltwitter4j/internal/http/HttpParameter;

    iput-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    .line 63
    :goto_0
    iput-object p4, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    .line 64
    iput-object p5, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    .line 65
    return-void

    .line 60
    :cond_0
    iput-object p2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 92
    check-cast v0, Ltwitter4j/internal/http/HttpRequest;

    .line 94
    .local v0, "that":Ltwitter4j/internal/http/HttpRequest;
    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 95
    goto :goto_0

    .line 94
    :cond_5
    iget-object v3, v0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-nez v3, :cond_4

    .line 96
    :cond_6
    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 97
    :cond_7
    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v1, v2

    .line 98
    goto :goto_0

    .line 97
    :cond_9
    iget-object v3, v0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-nez v3, :cond_8

    .line 99
    :cond_a
    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/RequestMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 100
    goto :goto_0

    .line 99
    :cond_c
    iget-object v3, v0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    if-nez v3, :cond_b

    .line 101
    :cond_d
    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 102
    goto :goto_0

    .line 101
    :cond_e
    iget-object v3, v0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final getAuthorization()Ltwitter4j/auth/Authorization;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    return-object v0
.end method

.method public final getMethod()Ltwitter4j/internal/http/RequestMethod;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    return-object v0
.end method

.method public final getParameters()[Ltwitter4j/internal/http/HttpParameter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    return-object v0
.end method

.method public final getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    invoke-virtual {v2}, Ltwitter4j/internal/http/RequestMethod;->hashCode()I

    move-result v0

    .line 110
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 111
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 112
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 113
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v1, v2

    .line 114
    return v1

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 109
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 110
    goto :goto_1

    :cond_3
    move v2, v1

    .line 111
    goto :goto_2

    :cond_4
    move v2, v1

    .line 112
    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpRequest{requestMethod="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->method:Ltwitter4j/internal/http/RequestMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", postParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authentication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->authorization:Ltwitter4j/auth/Authorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpRequest;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/http/HttpRequest;->parameters:[Ltwitter4j/internal/http/HttpParameter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
