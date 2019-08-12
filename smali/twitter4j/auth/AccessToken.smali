.class public Ltwitter4j/auth/AccessToken;
.super Ltwitter4j/auth/OAuthToken;
.source "AccessToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x73cdb85869c93e33L


# instance fields
.field private screenName:Ljava/lang/String;

.field private userId:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;)V

    .line 31
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J

    .line 39
    const-string v1, "screen_name"

    invoke-virtual {p0, v1}, Ltwitter4j/auth/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    .line 40
    const-string v1, "user_id"

    invoke-virtual {p0, v1}, Ltwitter4j/auth/AccessToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "sUserId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 42
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J

    .line 49
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "dashIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 51
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "sUserId":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "sUserId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "sUserId":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;
    .param p3, "userId"    # J

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ltwitter4j/auth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/auth/AccessToken;->userId:J

    .line 61
    iput-wide p3, p0, Ltwitter4j/auth/AccessToken;->userId:J

    .line 62
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 85
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

    .line 86
    :cond_3
    invoke-super {p0, p1}, Ltwitter4j/auth/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 88
    check-cast v0, Ltwitter4j/auth/AccessToken;

    .line 90
    .local v0, "that":Ltwitter4j/auth/AccessToken;
    iget-wide v4, p0, Ltwitter4j/auth/AccessToken;->userId:J

    iget-wide v6, v0, Ltwitter4j/auth/AccessToken;->userId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 91
    :cond_5
    iget-object v3, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 92
    goto :goto_0

    .line 91
    :cond_6
    iget-object v3, v0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public bridge synthetic getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-super {p0, p1}, Ltwitter4j/auth/OAuthToken;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Ltwitter4j/auth/AccessToken;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 99
    invoke-super {p0}, Ltwitter4j/auth/OAuthToken;->hashCode()I

    move-result v0

    .line 100
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 101
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J

    iget-wide v4, p0, Ltwitter4j/auth/AccessToken;->userId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 102
    return v1

    .line 100
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessToken{screenName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/auth/AccessToken;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/auth/AccessToken;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
