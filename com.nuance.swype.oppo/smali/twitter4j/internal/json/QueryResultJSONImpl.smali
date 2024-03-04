.class final Ltwitter4j/internal/json/QueryResultJSONImpl;
.super Ltwitter4j/internal/json/TwitterResponseImpl;
.source "QueryResultJSONImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/QueryResult;


# static fields
.field static queryFactoryMethod:Ljava/lang/reflect/Method; = null

.field private static final serialVersionUID:J = -0x5e1d46bedbea26d6L


# instance fields
.field private completedIn:D

.field private count:I

.field private maxId:J

.field private nextResults:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private refreshUrl:Ljava/lang/String;

.field private sinceId:J

.field private tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 55
    const-class v4, Ltwitter4j/Query;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 56
    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 57
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "createWithNextPageQuery"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    sput-object v3, Ltwitter4j/internal/json/QueryResultJSONImpl;->queryFactoryMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    sget-object v4, Ltwitter4j/internal/json/QueryResultJSONImpl;->queryFactoryMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    .line 64
    new-instance v4, Ljava/lang/ExceptionInInitializerError;

    new-instance v5, Ljava/lang/NoSuchMethodException;

    const-string v6, "twitter4j.Query.createWithNextPageQuery(java.lang.String)"

    invoke-direct {v5, v6}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 56
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_2
    return-void
.end method

.method constructor <init>(Ltwitter4j/Query;)V
    .locals 2
    .param p1, "query"    # Ltwitter4j/Query;

    .prologue
    .line 96
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 97
    invoke-virtual {p1}, Ltwitter4j/Query;->getSinceId()J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->sinceId:J

    .line 98
    invoke-virtual {p1}, Ltwitter4j/Query;->getCount()I

    move-result v0

    iput v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->count:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->tweets:Ljava/util/List;

    .line 100
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 9
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 70
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    .line 72
    .local v2, "json":Ltwitter4j/internal/org/json/JSONObject;
    :try_start_0
    const-string v6, "search_metadata"

    invoke-virtual {v2, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v4

    .line 73
    .local v4, "searchMetaData":Ltwitter4j/internal/org/json/JSONObject;
    const-string v6, "completed_in"

    invoke-static {v6, v4}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDouble(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)D

    move-result-wide v6

    iput-wide v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->completedIn:D

    .line 74
    const-string v6, "count"

    invoke-static {v6, v4}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->count:I

    .line 75
    const-string v6, "max_id"

    invoke-static {v6, v4}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v6

    iput-wide v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->maxId:J

    .line 76
    const-string v6, "next_results"

    invoke-virtual {v4, v6}, Ltwitter4j/internal/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "next_results"

    invoke-virtual {v4, v6}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    iput-object v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    .line 77
    const-string v6, "query"

    invoke-static {v6, v4}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getURLDecodedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->query:Ljava/lang/String;

    .line 78
    const-string v6, "refresh_url"

    invoke-static {v6, v4}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    .line 79
    const-string v6, "since_id"

    invoke-static {v6, v4}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v6

    iput-wide v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->sinceId:J

    .line 81
    const-string v6, "statuses"

    invoke-virtual {v2, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 82
    .local v0, "array":Ltwitter4j/internal/org/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->tweets:Ljava/util/List;

    .line 83
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 86
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 87
    invoke-virtual {v0, v1}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    .line 88
    .local v5, "tweet":Ltwitter4j/internal/org/json/JSONObject;
    iget-object v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->tweets:Ljava/util/List;

    new-instance v7, Ltwitter4j/internal/json/StatusJSONImpl;

    invoke-direct {v7, v5, p2}, Ltwitter4j/internal/json/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/conf/Configuration;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v1    # "i":I
    .end local v5    # "tweet":Ltwitter4j/internal/org/json/JSONObject;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 90
    .end local v4    # "searchMetaData":Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 92
    .end local v3    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    .restart local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "searchMetaData":Ltwitter4j/internal/org/json/JSONObject;
    :cond_2
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    if-ne p0, p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 191
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

    .line 193
    check-cast v0, Ltwitter4j/QueryResult;

    .line 195
    .local v0, "that":Ltwitter4j/QueryResult;
    invoke-interface {v0}, Ltwitter4j/QueryResult;->getCompletedIn()D

    move-result-wide v4

    iget-wide v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->completedIn:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 196
    goto :goto_0

    .line 197
    :cond_4
    iget-wide v4, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->maxId:J

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getMaxId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 198
    :cond_5
    iget v3, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->count:I

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getCount()I

    move-result v4

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 199
    :cond_6
    iget-wide v4, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->sinceId:J

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getSinceId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 200
    :cond_7
    iget-object v3, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 201
    :cond_8
    iget-object v3, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getRefreshUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 202
    goto :goto_0

    .line 201
    :cond_a
    invoke-interface {v0}, Ltwitter4j/QueryResult;->getRefreshUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 203
    :cond_b
    iget-object v3, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->tweets:Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 204
    goto :goto_0

    .line 203
    :cond_c
    invoke-interface {v0}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final getCompletedIn()D
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->completedIn:D

    return-wide v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->count:I

    return v0
.end method

.method public final getMaxId()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->maxId:J

    return-wide v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Ltwitter4j/internal/json/QueryResultJSONImpl;->getRefreshURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSinceId()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->sinceId:J

    return-wide v0
.end method

.method public final getTweets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->tweets:Ljava/util/List;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/16 v10, 0x20

    .line 213
    iget-wide v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->sinceId:J

    iget-wide v8, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->sinceId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v0, v6

    .line 214
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->maxId:J

    iget-wide v8, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->maxId:J

    ushr-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 215
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v5, v1

    .line 216
    mul-int/lit8 v1, v0, 0x1f

    iget v5, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->count:I

    add-int v0, v1, v5

    .line 217
    iget-wide v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->completedIn:D

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-eqz v1, :cond_2

    iget-wide v6, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->completedIn:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 218
    .local v2, "temp":J
    :goto_1
    mul-int/lit8 v1, v0, 0x1f

    ushr-long v6, v2, v10

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v0, v1, v5

    .line 219
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int v0, v1, v5

    .line 220
    mul-int/lit8 v1, v0, 0x1f

    iget-object v5, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->tweets:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v4, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    move-result v4

    :cond_0
    add-int/2addr v1, v4

    .line 221
    return v1

    .end local v2    # "temp":J
    :cond_1
    move v1, v4

    .line 215
    goto :goto_0

    .line 217
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public final nextQuery()Ltwitter4j/Query;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 172
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Ltwitter4j/internal/json/QueryResultJSONImpl;->queryFactoryMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->nextResults:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Query;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 175
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueryResultJSONImpl{sinceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->sinceId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->maxId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->refreshUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->completedIn:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tweets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/QueryResultJSONImpl;->tweets:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
