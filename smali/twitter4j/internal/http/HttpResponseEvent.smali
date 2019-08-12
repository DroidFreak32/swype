.class public final Ltwitter4j/internal/http/HttpResponseEvent;
.super Ljava/lang/Object;
.source "HttpResponseEvent.java"


# instance fields
.field private request:Ltwitter4j/internal/http/HttpRequest;

.field private response:Ltwitter4j/internal/http/HttpResponse;

.field private twitterException:Ltwitter4j/TwitterException;


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/TwitterException;)V
    .locals 0
    .param p1, "request"    # Ltwitter4j/internal/http/HttpRequest;
    .param p2, "response"    # Ltwitter4j/internal/http/HttpResponse;
    .param p3, "te"    # Ltwitter4j/TwitterException;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    .line 35
    iput-object p2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    .line 36
    iput-object p3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    .line 37
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-ne p0, p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 73
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

    .line 75
    check-cast v0, Ltwitter4j/internal/http/HttpResponseEvent;

    .line 77
    .local v0, "that":Ltwitter4j/internal/http/HttpResponseEvent;
    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 78
    goto :goto_0

    .line 77
    :cond_5
    iget-object v3, v0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-nez v3, :cond_4

    .line 79
    :cond_6
    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 80
    goto :goto_0

    .line 79
    :cond_7
    iget-object v3, v0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final getRequest()Ltwitter4j/internal/http/HttpRequest;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    return-object v0
.end method

.method public final getResponse()Ltwitter4j/internal/http/HttpResponse;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    return-object v0
.end method

.method public final getTwitterException()Ltwitter4j/TwitterException;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpRequest;->hashCode()I

    move-result v0

    .line 88
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v1, v2

    .line 89
    return v1

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method public final isAuthenticated()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpResponseEvent{request="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
