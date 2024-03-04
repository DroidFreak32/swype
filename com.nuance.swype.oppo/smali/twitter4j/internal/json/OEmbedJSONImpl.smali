.class public Ltwitter4j/internal/json/OEmbedJSONImpl;
.super Ltwitter4j/internal/json/TwitterResponseImpl;
.source "OEmbedJSONImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/OEmbed;


# static fields
.field private static final serialVersionUID:J = -0x95fa36fcd7b6ff6L


# instance fields
.field private authorName:Ljava/lang/String;

.field private authorURL:Ljava/lang/String;

.field private cacheAge:J

.field private html:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private width:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 41
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 42
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/internal/json/OEmbedJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 43
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 45
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 51
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/OEmbedJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 52
    return-void
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    const-string v1, "html"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->html:Ljava/lang/String;

    .line 57
    const-string v1, "author_name"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    .line 58
    const-string v1, "url"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->url:Ljava/lang/String;

    .line 59
    const-string v1, "version"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->version:Ljava/lang/String;

    .line 60
    const-string v1, "cache_age"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->cacheAge:J

    .line 61
    const-string v1, "author_url"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    .line 62
    const-string v1, "width"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->width:I
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-ne p0, p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 111
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

    .line 113
    check-cast v0, Ltwitter4j/internal/json/OEmbedJSONImpl;

    .line 115
    .local v0, "that":Ltwitter4j/internal/json/OEmbedJSONImpl;
    iget-wide v4, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->cacheAge:J

    iget-wide v6, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->cacheAge:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 116
    :cond_4
    iget v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->width:I

    iget v4, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->width:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 117
    :cond_5
    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 118
    :cond_8
    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v3, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 119
    :cond_b
    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->html:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    goto :goto_0

    :cond_d
    iget-object v3, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 120
    :cond_e
    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->url:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v1, v2

    goto :goto_0

    :cond_10
    iget-object v3, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 121
    :cond_11
    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->version:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto/16 :goto_0

    :cond_12
    iget-object v3, v0, Ltwitter4j/internal/json/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public bridge synthetic getAccessLevel()I
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;->getAccessLevel()I

    move-result v0

    return v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheAge()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->cacheAge:J

    return-wide v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->html:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->html:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 129
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 130
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 131
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->version:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->version:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 132
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->cacheAge:J

    iget-wide v6, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->cacheAge:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v2, v3

    .line 133
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 134
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->width:I

    add-int/2addr v1, v2

    .line 135
    return v1

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 128
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 129
    goto :goto_1

    :cond_3
    move v2, v1

    .line 130
    goto :goto_2

    :cond_4
    move v2, v1

    .line 131
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OEmbedJSONImpl{html=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->html:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cacheAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->cacheAge:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authorURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->authorURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/OEmbedJSONImpl;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
