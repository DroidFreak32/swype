.class public Ltwitter4j/auth/OAuth2Token;
.super Ljava/lang/Object;
.source "OAuth2Token.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4f8a998e0d8edd2L


# instance fields
.field private accessToken:Ljava/lang/String;

.field private tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenType"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    .line 48
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 3
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 38
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    const-string v1, "token_type"

    invoke-static {v1, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    .line 40
    :try_start_0
    const-string v1, "access_token"

    invoke-static {v1, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 69
    if-eqz p1, :cond_0

    instance-of v2, p1, Ltwitter4j/auth/OAuth2Token;

    if-nez v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 73
    check-cast v0, Ltwitter4j/auth/OAuth2Token;

    .line 74
    .local v0, "that":Ltwitter4j/auth/OAuth2Token;
    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    iget-object v3, v0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    :cond_2
    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    iget-object v3, v0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    :cond_4
    iget-object v2, v0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 77
    :cond_5
    iget-object v2, v0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method generateAuthorizationHeader()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    const-string v0, ""

    .line 61
    .local v0, "encoded":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 87
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v1, v2

    .line 88
    return v1

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 86
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OAuth2Token{tokenType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/auth/OAuth2Token;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
