.class public Loauth/signpost/signature/QueryStringSigningStrategy;
.super Ljava/lang/Object;
.source "QueryStringSigningStrategy.java"

# interfaces
.implements Loauth/signpost/signature/SigningStrategy;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeSignature(Ljava/lang/String;Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)Ljava/lang/String;
    .locals 8
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "request"    # Loauth/signpost/http/HttpRequest;
    .param p3, "requestParameters"    # Loauth/signpost/http/HttpParameters;

    .prologue
    .line 26
    invoke-virtual {p3}, Loauth/signpost/http/HttpParameters;->getOAuthParameters()Loauth/signpost/http/HttpParameters;

    move-result-object v3

    .line 27
    .local v3, "oauthParams":Loauth/signpost/http/HttpParameters;
    const-string v6, "oauth_signature"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, p1, v7}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 29
    invoke-virtual {v3}, Loauth/signpost/http/HttpParameters;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 32
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "firstKey":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Loauth/signpost/http/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0}, Loauth/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Loauth/signpost/OAuth;->addQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Loauth/signpost/http/HttpParameters;->getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 42
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "signedUrl":Ljava/lang/String;
    invoke-interface {p2, v5}, Loauth/signpost/http/HttpRequest;->setRequestUrl(Ljava/lang/String;)V

    .line 46
    return-object v5
.end method
