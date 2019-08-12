.class public Loauth/signpost/signature/SignatureBaseString;
.super Ljava/lang/Object;
.source "SignatureBaseString.java"


# instance fields
.field private request:Loauth/signpost/http/HttpRequest;

.field private requestParameters:Loauth/signpost/http/HttpParameters;


# direct methods
.method public constructor <init>(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)V
    .locals 0
    .param p1, "request"    # Loauth/signpost/http/HttpRequest;
    .param p2, "requestParameters"    # Loauth/signpost/http/HttpParameters;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Loauth/signpost/signature/SignatureBaseString;->request:Loauth/signpost/http/HttpRequest;

    .line 41
    iput-object p2, p0, Loauth/signpost/signature/SignatureBaseString;->requestParameters:Loauth/signpost/http/HttpParameters;

    .line 42
    return-void
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Loauth/signpost/signature/SignatureBaseString;->normalizeRequestUrl()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "normalizedUrl":Ljava/lang/String;
    invoke-virtual {p0}, Loauth/signpost/signature/SignatureBaseString;->normalizeRequestParameters()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "normalizedParams":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Loauth/signpost/signature/SignatureBaseString;->request:Loauth/signpost/http/HttpRequest;

    invoke-interface {v4}, Loauth/signpost/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x26

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 59
    .end local v1    # "normalizedParams":Ljava/lang/String;
    .end local v2    # "normalizedUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Loauth/signpost/exception/OAuthMessageSignerException;

    invoke-direct {v3, v0}, Loauth/signpost/exception/OAuthMessageSignerException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public normalizeRequestParameters()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v4, p0, Loauth/signpost/signature/SignatureBaseString;->requestParameters:Loauth/signpost/http/HttpParameters;

    if-nez v4, :cond_0

    .line 96
    const-string v4, ""

    .line 117
    :goto_0
    return-object v4

    .line 99
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Loauth/signpost/signature/SignatureBaseString;->requestParameters:Loauth/signpost/http/HttpParameters;

    invoke-virtual {v4}, Loauth/signpost/http/HttpParameters;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 102
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "param":Ljava/lang/String;
    const-string v4, "oauth_signature"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "realm"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 106
    if-lez v0, :cond_1

    .line 110
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    iget-object v4, p0, Loauth/signpost/signature/SignatureBaseString;->requestParameters:Loauth/signpost/http/HttpParameters;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Loauth/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    .end local v2    # "param":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public normalizeRequestUrl()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 65
    new-instance v4, Ljava/net/URI;

    iget-object v5, p0, Loauth/signpost/signature/SignatureBaseString;->request:Loauth/signpost/http/HttpRequest;

    invoke-interface {v5}, Loauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, "uri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "scheme":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "authority":Ljava/lang/String;
    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v5

    const/16 v7, 0x50

    if-eq v5, v7, :cond_1

    :cond_0
    const-string v5, "https"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v5

    const/16 v7, 0x1bb

    if-ne v5, v7, :cond_5

    :cond_1
    const/4 v5, 0x1

    .line 70
    :goto_0
    if-eqz v5, :cond_2

    .line 72
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, "index":I
    if-ltz v1, :cond_2

    .line 74
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    .end local v1    # "index":I
    :cond_2
    invoke-virtual {v4}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_4

    .line 79
    :cond_3
    const-string v2, "/"

    .line 82
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v2    # "path":Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 68
    goto :goto_0
.end method
