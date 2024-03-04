.class Ltwitter4j/internal/http/HttpClientImpl$1;
.super Ljava/net/Authenticator;
.source "HttpClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/internal/http/HttpClientImpl;->getConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltwitter4j/internal/http/HttpClientImpl;


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpClientImpl;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Ltwitter4j/internal/http/HttpClientImpl$1;->this$0:Ltwitter4j/internal/http/HttpClientImpl;

    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpClientImpl$1;->getRequestorType()Ljava/net/Authenticator$RequestorType;

    move-result-object v0

    sget-object v1, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-virtual {v0, v1}, Ljava/net/Authenticator$RequestorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Ltwitter4j/internal/http/HttpClientImpl$1;->this$0:Ltwitter4j/internal/http/HttpClientImpl;

    iget-object v1, v1, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/internal/http/HttpClientImpl$1;->this$0:Ltwitter4j/internal/http/HttpClientImpl;

    iget-object v2, v2, Ltwitter4j/internal/http/HttpClientImpl;->CONF:Ltwitter4j/internal/http/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/internal/http/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    .line 237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
