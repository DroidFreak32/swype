.class public Ltwitter4j/internal/json/RelationshipJSONImpl;
.super Ltwitter4j/internal/json/TwitterResponseImpl;
.source "RelationshipJSONImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/Relationship;


# static fields
.field private static final serialVersionUID:J = 0x6b34ca39712b59e8L


# instance fields
.field private final sourceBlockingTarget:Z

.field private final sourceCanDm:Z

.field private final sourceFollowedByTarget:Z

.field private final sourceFollowingTarget:Z

.field private final sourceNotificationsEnabled:Z

.field private final sourceUserId:J

.field private final sourceUserScreenName:Ljava/lang/String;

.field private final targetUserId:J

.field private final targetUserScreenName:Ljava/lang/String;

.field private wantRetweets:Z


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ltwitter4j/internal/json/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/internal/org/json/JSONObject;)V

    .line 53
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 55
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 7
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 66
    :try_start_0
    const-string v4, "relationship"

    invoke-virtual {p2, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 67
    .local v1, "relationship":Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "source"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    .line 68
    .local v2, "sourceJson":Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "target"

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 69
    .local v3, "targetJson":Ltwitter4j/internal/org/json/JSONObject;
    const-string v4, "id"

    invoke-static {v4, v2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v4

    iput-wide v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserId:J

    .line 70
    const-string v4, "id"

    invoke-static {v4, v3}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v4

    iput-wide v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserId:J

    .line 71
    const-string v4, "screen_name"

    invoke-static {v4, v2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    .line 72
    const-string v4, "screen_name"

    invoke-static {v4, v3}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    .line 73
    const-string v4, "blocking"

    invoke-static {v4, v2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceBlockingTarget:Z

    .line 74
    const-string v4, "following"

    invoke-static {v4, v2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceFollowingTarget:Z

    .line 75
    const-string v4, "followed_by"

    invoke-static {v4, v2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    .line 76
    const-string v4, "can_dm"

    invoke-static {v4, v2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceCanDm:Z

    .line 77
    const-string v4, "notifications_enabled"

    invoke-static {v4, v2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    .line 78
    const-string v4, "want_retweets"

    invoke-static {v4, v2}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v4

    iput-boolean v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->wantRetweets:Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 79
    .end local v1    # "relationship":Ltwitter4j/internal/org/json/JSONObject;
    .end local v2    # "sourceJson":Ltwitter4j/internal/org/json/JSONObject;
    .end local v3    # "targetJson":Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ltwitter4j/internal/json/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/internal/org/json/JSONObject;)V

    .line 61
    return-void
.end method

.method static createRelationshipList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 8
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Relationship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 90
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 91
    .local v3, "list":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 92
    .local v6, "size":I
    new-instance v5, Ltwitter4j/internal/json/ResponseListImpl;

    invoke-direct {v5, v6, p0}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 93
    .local v5, "relationships":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Relationship;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 94
    invoke-virtual {v3, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 95
    .local v1, "json":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v4, Ltwitter4j/internal/json/RelationshipJSONImpl;

    invoke-direct {v4, v1}, Ltwitter4j/internal/json/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 96
    .local v4, "relationship":Ltwitter4j/Relationship;
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    invoke-static {v4, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_1
    invoke-interface {v5, v4}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .end local v4    # "relationship":Ltwitter4j/Relationship;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 102
    invoke-static {v5, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :cond_3
    return-object v5

    .line 105
    .end local v0    # "i":I
    .end local v3    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .end local v5    # "relationships":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Relationship;>;"
    .end local v6    # "size":I
    :catch_0
    move-exception v2

    .line 106
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 107
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v7

    throw v7
.end method


# virtual methods
.method public canSourceDm()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceCanDm:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    if-ne p0, p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 212
    :cond_1
    instance-of v3, p1, Ltwitter4j/Relationship;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 214
    check-cast v0, Ltwitter4j/Relationship;

    .line 216
    .local v0, "that":Ltwitter4j/Relationship;
    iget-wide v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserId:J

    invoke-interface {v0}, Ltwitter4j/Relationship;->getSourceUserId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 217
    :cond_3
    iget-wide v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserId:J

    invoke-interface {v0}, Ltwitter4j/Relationship;->getTargetUserId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 218
    :cond_4
    iget-object v3, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Relationship;->getSourceUserScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 219
    goto :goto_0

    .line 220
    :cond_5
    iget-object v3, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Relationship;->getTargetUserScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 221
    goto :goto_0
.end method

.method public getSourceUserId()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserId:J

    return-wide v0
.end method

.method public getSourceUserScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserId:J

    return-wide v0
.end method

.method public getTargetUserScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    iget-wide v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserId:J

    iget-wide v6, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 229
    .local v0, "result":I
    mul-int/lit8 v4, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v4, v1

    .line 230
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceBlockingTarget:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    add-int v0, v4, v1

    .line 231
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    add-int v0, v4, v1

    .line 232
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceFollowingTarget:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_3
    add-int v0, v4, v1

    .line 233
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_4
    add-int v0, v4, v1

    .line 234
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceCanDm:Z

    if-eqz v4, :cond_6

    :goto_5
    add-int v0, v1, v3

    .line 235
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserId:J

    iget-wide v6, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v1, v3

    .line 236
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 237
    return v1

    :cond_1
    move v1, v2

    .line 229
    goto :goto_0

    :cond_2
    move v1, v2

    .line 230
    goto :goto_1

    :cond_3
    move v1, v2

    .line 231
    goto :goto_2

    :cond_4
    move v1, v2

    .line 232
    goto :goto_3

    :cond_5
    move v1, v2

    .line 233
    goto :goto_4

    :cond_6
    move v3, v2

    .line 234
    goto :goto_5
.end method

.method public isSourceBlockingTarget()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceBlockingTarget:Z

    return v0
.end method

.method public isSourceFollowedByTarget()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    return v0
.end method

.method public isSourceFollowingTarget()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceFollowingTarget:Z

    return v0
.end method

.method public isSourceNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    return v0
.end method

.method public isSourceWantRetweets()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->wantRetweets:Z

    return v0
.end method

.method public isTargetFollowedBySource()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceFollowingTarget:Z

    return v0
.end method

.method public isTargetFollowingSource()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RelationshipJSONImpl{sourceUserId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceUserScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceUserScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetUserScreenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->targetUserScreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceFollowingTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceFollowingTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceFollowedByTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceFollowedByTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceCanDm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceCanDm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceNotificationsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/internal/json/RelationshipJSONImpl;->sourceNotificationsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
