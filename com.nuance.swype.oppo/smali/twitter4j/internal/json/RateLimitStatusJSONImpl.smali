.class public final Ltwitter4j/internal/json/RateLimitStatusJSONImpl;
.super Ljava/lang/Object;
.source "RateLimitStatusJSONImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/RateLimitStatus;


# static fields
.field private static final serialVersionUID:J = 0x168f2b593780b594L


# instance fields
.field private limit:I

.field private remaining:I

.field private resetTimeInSeconds:I

.field private secondsUntilReset:I


# direct methods
.method private constructor <init>(III)V
    .locals 6
    .param p1, "limit"    # I
    .param p2, "remaining"    # I
    .param p3, "resetTimeInSeconds"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->limit:I

    .line 77
    iput p2, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->remaining:I

    .line 78
    iput p3, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    .line 79
    int-to-long v0, p3

    mul-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->secondsUntilReset:I

    .line 80
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
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0, p1}, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 84
    return-void
.end method

.method static createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;
    .locals 8
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    const/4 v6, 0x0

    .line 94
    if-nez p0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v6

    .line 101
    :cond_1
    const-string v7, "X-Rate-Limit-Limit"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "strLimit":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, "limit":I
    const-string v7, "X-Rate-Limit-Remaining"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "remaining":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 113
    .local v2, "remainingHits":I
    const-string v7, "X-Rate-Limit-Reset"

    invoke-virtual {p0, v7}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "reset":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 115
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 116
    long-to-int v4, v6

    .line 120
    .local v4, "resetTimeInSeconds":I
    new-instance v6, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;

    invoke-direct {v6, v0, v2, v4}, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;-><init>(III)V

    goto :goto_0
.end method

.method static createRateLimitStatuses(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ljava/util/Map;
    .locals 3
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 46
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    invoke-static {v0}, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->createRateLimitStatuses(Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 47
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ltwitter4j/RateLimitStatus;>;"
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 49
    invoke-static {v1, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    return-object v1
.end method

.method static createRateLimitStatuses(Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Map;
    .locals 10
    .param p0, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/org/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ltwitter4j/RateLimitStatus;>;"
    :try_start_0
    const-string v9, "resources"

    invoke-virtual {p0, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v8

    .line 58
    .local v8, "resources":Ltwitter4j/internal/org/json/JSONObject;
    invoke-virtual {v8}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 59
    .local v7, "resourceKeys":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 60
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    .line 61
    .local v6, "resource":Ltwitter4j/internal/org/json/JSONObject;
    invoke-virtual {v6}, Ltwitter4j/internal/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    .local v1, "endpointKeys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "endpoint":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    .line 65
    .local v5, "rateLimitStatusJSON":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v4, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;

    invoke-direct {v4, v5}, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 66
    .local v4, "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "endpoint":Ljava/lang/String;
    .end local v1    # "endpointKeys":Ljava/util/Iterator;
    .end local v4    # "rateLimitStatus":Ltwitter4j/RateLimitStatus;
    .end local v5    # "rateLimitStatusJSON":Ltwitter4j/internal/org/json/JSONObject;
    .end local v6    # "resource":Ltwitter4j/internal/org/json/JSONObject;
    .end local v7    # "resourceKeys":Ljava/util/Iterator;
    .end local v8    # "resources":Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    .line 71
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v9, Ltwitter4j/TwitterException;

    invoke-direct {v9, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 69
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    .restart local v7    # "resourceKeys":Ljava/util/Iterator;
    .restart local v8    # "resources":Ltwitter4j/internal/org/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_1
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    if-ne p0, p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 166
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

    .line 168
    check-cast v0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;

    .line 170
    .local v0, "that":Ltwitter4j/internal/json/RateLimitStatusJSONImpl;
    iget v3, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->limit:I

    iget v4, v0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->limit:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 171
    :cond_4
    iget v3, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->remaining:I

    iget v4, v0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->remaining:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 172
    :cond_5
    iget v3, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    iget v4, v0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 173
    :cond_6
    iget v3, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->secondsUntilReset:I

    iget v4, v0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->secondsUntilReset:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final getLimit()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->limit:I

    return v0
.end method

.method public final getRemaining()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->remaining:I

    return v0
.end method

.method public final getRemainingHits()I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->getRemaining()I

    move-result v0

    return v0
.end method

.method public final getResetTimeInSeconds()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    return v0
.end method

.method public final getSecondsUntilReset()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->secondsUntilReset:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 180
    iget v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->remaining:I

    .line 181
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->limit:I

    add-int v0, v1, v2

    .line 182
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    add-int v0, v1, v2

    .line 183
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->secondsUntilReset:I

    add-int/2addr v1, v2

    .line 184
    return v1
.end method

.method final init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x3e8

    .line 87
    const-string v0, "limit"

    invoke-static {v0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->limit:I

    .line 88
    const-string v0, "remaining"

    invoke-static {v0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->remaining:I

    .line 89
    const-string v0, "reset"

    invoke-static {v0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v0

    iput v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    .line 90
    iget v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    int-to-long v0, v0

    mul-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->secondsUntilReset:I

    .line 91
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RateLimitStatusJSONImpl{remaining="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->remaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resetTimeInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->resetTimeInSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondsUntilReset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->secondsUntilReset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
