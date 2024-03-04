.class public final Ltwitter4j/internal/json/DirectMessageJSONImpl;
.super Ltwitter4j/internal/json/TwitterResponseImpl;
.source "DirectMessageJSONImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/DirectMessage;


# static fields
.field private static final serialVersionUID:J = -0x62974ee09dd34a09L


# instance fields
.field private createdAt:Ljava/util/Date;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private recipient:Ltwitter4j/User;

.field private recipientId:J

.field private recipientScreenName:Ljava/lang/String;

.field private sender:Ltwitter4j/User;

.field private senderId:J

.field private senderScreenName:Ljava/lang/String;

.field private symbolEntities:[Ltwitter4j/SymbolEntity;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;


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
    .line 53
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 54
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 55
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/internal/json/DirectMessageJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 56
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 58
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
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
    .line 62
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 63
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/DirectMessageJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 64
    return-void
.end method

.method static createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
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
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 256
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 257
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 259
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 260
    .local v5, "list":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 261
    .local v6, "size":I
    new-instance v1, Ltwitter4j/internal/json/ResponseListImpl;

    invoke-direct {v1, v6, p0}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 262
    .local v1, "directMessages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 263
    invoke-virtual {v5, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 264
    .local v3, "json":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v0, Ltwitter4j/internal/json/DirectMessageJSONImpl;

    invoke-direct {v0, v3}, Ltwitter4j/internal/json/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 265
    .local v0, "directMessage":Ltwitter4j/DirectMessage;
    invoke-interface {v1, v0}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 267
    invoke-static {v0, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "directMessage":Ltwitter4j/DirectMessage;
    .end local v3    # "json":Ltwitter4j/internal/org/json/JSONObject;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 271
    invoke-static {v1, v5}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    :cond_3
    return-object v1

    .line 274
    .end local v1    # "directMessages":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/DirectMessage;>;"
    .end local v2    # "i":I
    .end local v5    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .end local v6    # "size":I
    :catch_0
    move-exception v4

    .line 275
    .local v4, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v4}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 276
    .end local v4    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v7

    throw v7
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 14
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v9, "id"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->id:J

    .line 68
    const-string v9, "sender_id"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderId:J

    .line 69
    const-string v9, "recipient_id"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v10

    iput-wide v10, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientId:J

    .line 70
    const-string v9, "created_at"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    .line 71
    const-string v9, "sender_screen_name"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    .line 72
    const-string v9, "recipient_screen_name"

    invoke-static {v9, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    .line 74
    :try_start_0
    new-instance v9, Ltwitter4j/internal/json/UserJSONImpl;

    const-string v10, "sender"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/internal/json/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    .line 75
    new-instance v9, Ltwitter4j/internal/json/UserJSONImpl;

    const-string v10, "recipient"

    invoke-virtual {p1, v10}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Ltwitter4j/internal/json/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    .line 76
    const-string v9, "entities"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 77
    const-string v9, "entities"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 79
    .local v0, "entities":Ltwitter4j/internal/org/json/JSONObject;
    const-string v9, "user_mentions"

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 80
    const-string v9, "user_mentions"

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v8

    .line 81
    .local v8, "userMentionsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v8}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 82
    .local v4, "len":I
    new-array v9, v4, [Ltwitter4j/UserMentionEntity;

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 83
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 84
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    new-instance v10, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;

    invoke-virtual {v8, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v10, v9, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v8    # "userMentionsArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_0
    const-string v9, "urls"

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 89
    const-string v9, "urls"

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v7

    .line 90
    .local v7, "urlsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v7}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 91
    .restart local v4    # "len":I
    new-array v9, v4, [Ltwitter4j/URLEntity;

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 92
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 93
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    new-instance v10, Ltwitter4j/internal/json/URLEntityJSONImpl;

    invoke-virtual {v7, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/internal/json/URLEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v10, v9, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v7    # "urlsArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_1
    const-string v9, "hashtags"

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 98
    const-string v9, "hashtags"

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    .line 99
    .local v1, "hashtagsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 100
    .restart local v4    # "len":I
    new-array v9, v4, [Ltwitter4j/HashtagEntity;

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 101
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v4, :cond_2

    .line 102
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    new-instance v10, Ltwitter4j/internal/json/HashtagEntityJSONImpl;

    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v10, v9, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 106
    .end local v1    # "hashtagsArray":Ltwitter4j/internal/org/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_2
    const-string v9, "symbols"

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 107
    const-string v9, "symbols"

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v6

    .line 108
    .local v6, "symbolsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v6}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 109
    .restart local v4    # "len":I
    new-array v9, v4, [Ltwitter4j/SymbolEntity;

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 110
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_3

    .line 112
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    new-instance v10, Ltwitter4j/internal/json/HashtagEntityJSONImpl;

    invoke-virtual {v6, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v10, v9, v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 116
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v6    # "symbolsArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_3
    const-string v9, "media"

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 117
    const-string v9, "media"

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v5

    .line 118
    .local v5, "mediaArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 119
    .restart local v4    # "len":I
    new-array v9, v4, [Ltwitter4j/MediaEntity;

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 120
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v4, :cond_4

    .line 121
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    new-instance v10, Ltwitter4j/internal/json/MediaEntityJSONImpl;

    invoke-virtual {v5, v2}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Ltwitter4j/internal/json/MediaEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v10, v9, v2

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 125
    .end local v0    # "entities":Ltwitter4j/internal/org/json/JSONObject;
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v5    # "mediaArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_4
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v9, :cond_5

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/UserMentionEntity;

    :goto_5
    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 126
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v9, :cond_6

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/URLEntity;

    :goto_6
    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 127
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v9, :cond_7

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/HashtagEntity;

    :goto_7
    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 128
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    if-nez v9, :cond_8

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/SymbolEntity;

    :goto_8
    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 129
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v9, :cond_9

    const/4 v9, 0x0

    new-array v9, v9, [Ltwitter4j/MediaEntity;

    :goto_9
    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 130
    const-string v9, "text"

    invoke-virtual {p1, v9}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    iget-object v11, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    iget-object v12, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    iget-object v13, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v9, v10, v11, v12, v13}, Ltwitter4j/internal/json/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->text:Ljava/lang/String;

    .line 134
    return-void

    .line 125
    :cond_5
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    goto :goto_5

    .line 126
    :cond_6
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    goto :goto_6

    .line 127
    :cond_7
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    goto :goto_7

    .line 128
    :cond_8
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    goto :goto_8

    .line 129
    :cond_9
    iget-object v9, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v9, Ltwitter4j/TwitterException;

    invoke-direct {v9, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v9
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 288
    if-nez p1, :cond_1

    .line 294
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 291
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 292
    goto :goto_0

    .line 294
    :cond_2
    instance-of v2, p1, Ltwitter4j/DirectMessage;

    if-eqz v2, :cond_0

    check-cast p1, Ltwitter4j/DirectMessage;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/DirectMessage;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->id:J

    return-wide v0
.end method

.method public final getMediaEntities()[Ltwitter4j/MediaEntity;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0
.end method

.method public final getRecipient()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    return-object v0
.end method

.method public final getRecipientId()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientId:J

    return-wide v0
.end method

.method public final getRecipientScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSender()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    return-object v0
.end method

.method public final getSenderId()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderId:J

    return-wide v0
.end method

.method public final getSenderScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSymbolEntities()[Ltwitter4j/SymbolEntity;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public final getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    const/4 v1, 0x0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DirectMessageJSONImpl{id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sender_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", recipient_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", created_at="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userMentionEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", urlEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hashtagEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sender_screen_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->senderScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", recipient_screen_name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipientScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sender="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->sender:Ltwitter4j/User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", recipient="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->recipient:Ltwitter4j/User;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userMentionEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", urlEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hashtagEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v2, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Ltwitter4j/internal/json/DirectMessageJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_5
.end method
