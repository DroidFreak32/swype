.class public Lcom/nuance/sns/twitter/TwitterApi;
.super Ljava/lang/Object;
.source "TwitterApi.java"


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final CALLBACK_URI:Ljava/lang/String; = "twitter://callback"

.field public static final CONSUMER_KEY:Ljava/lang/String; = "nmWHhWcbTaTxCT5ZODxfRQ"

.field public static final CONSUMER_SECRET:Ljava/lang/String; = "NmGb6lf7ODVO3ZTmJ8OFa9dhuZBuQBPSXPEDRtLmH4"

.field public static final SECRET_TOKEN:Ljava/lang/String; = "secret_token"

.field public static final TAG:Ljava/lang/String; = "twitter"

.field private static Url:Ljava/lang/String;


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mSecretToken:Ljava/lang/String;

.field private final twitter:Ltwitter4j/Twitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/sns/twitter/TwitterApi;->Url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ltwitter4j/Twitter;)V
    .locals 3
    .param p1, "tw"    # Ltwitter4j/Twitter;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nuance/sns/twitter/TwitterApi;->twitter:Ltwitter4j/Twitter;

    .line 28
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterApi;->twitter:Ltwitter4j/Twitter;

    const-string v1, "nmWHhWcbTaTxCT5ZODxfRQ"

    const-string v2, "NmGb6lf7ODVO3ZTmJ8OFa9dhuZBuQBPSXPEDRtLmH4"

    invoke-interface {v0, v1, v2}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterApi;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationURL()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterApi;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/sns/twitter/TwitterApi;->Url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/nuance/sns/twitter/TwitterApi;->Url:Ljava/lang/String;

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterApi;->twitter:Ltwitter4j/Twitter;

    const-string v1, "twitter://callback"

    invoke-interface {v0, v1}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ltwitter4j/auth/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    .line 40
    sput-object v0, Lcom/nuance/sns/twitter/TwitterApi;->Url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHomeTimeLine()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ltwitter4j/auth/AccessToken;

    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterApi;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterApi;->getSecretToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v0, "accessToken":Ltwitter4j/auth/AccessToken;
    iget-object v1, p0, Lcom/nuance/sns/twitter/TwitterApi;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v1, v0}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 55
    iget-object v1, p0, Lcom/nuance/sns/twitter/TwitterApi;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v1}, Ltwitter4j/Twitter;->getHomeTimeline()Ltwitter4j/ResponseList;

    move-result-object v1

    return-object v1
.end method

.method public getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;
    .locals 1
    .param p1, "verifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterApi;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0, p1}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getSecretToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/sns/twitter/TwitterApi;->mSecretToken:Ljava/lang/String;

    return-object v0
.end method

.method public isSessionValid()Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterApi;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/sns/twitter/TwitterApi;->getSecretToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nuance/sns/twitter/TwitterApi;->mAccessToken:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setSecretToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "secretToken"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/nuance/sns/twitter/TwitterApi;->mSecretToken:Ljava/lang/String;

    .line 76
    return-void
.end method
