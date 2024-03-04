.class public Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;
.super Ljava/lang/Object;
.source "z_T4JInternalJSONImplFactory.java"

# interfaces
.implements Ltwitter4j/internal/json/z_T4JInternalFactory;


# static fields
.field private static final serialVersionUID:J = 0x4868b7d54ca3e042L


# instance fields
.field private conf:Ltwitter4j/conf/Configuration;


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 0
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 40
    return-void
.end method

.method static coordinatesAsGeoLocationArray(Ltwitter4j/internal/org/json/JSONArray;)[[Ltwitter4j/GeoLocation;
    .locals 12
    .param p0, "coordinates"    # Ltwitter4j/internal/org/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    new-array v1, v6, [[Ltwitter4j/GeoLocation;

    .line 105
    .local v1, "boundingBox":[[Ltwitter4j/GeoLocation;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 106
    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONArray;->getJSONArray(I)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 107
    .local v0, "array":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ltwitter4j/GeoLocation;

    aput-object v6, v1, v3

    .line 108
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 109
    invoke-virtual {v0, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONArray(I)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 110
    .local v2, "coordinate":Ltwitter4j/internal/org/json/JSONArray;
    aget-object v6, v1, v3

    new-instance v7, Ltwitter4j/GeoLocation;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ltwitter4j/internal/org/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ltwitter4j/internal/org/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ltwitter4j/GeoLocation;-><init>(DD)V

    aput-object v7, v6, v4
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    .end local v2    # "coordinate":Ltwitter4j/internal/org/json/JSONArray;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v1    # "boundingBox":[[Ltwitter4j/GeoLocation;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :catch_0
    move-exception v5

    .line 115
    .local v5, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 113
    .end local v5    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    .restart local v1    # "boundingBox":[[Ltwitter4j/GeoLocation;
    .restart local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method static createGeoLocation(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/GeoLocation;
    .locals 8
    .param p0, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    const-string v3, "coordinates"

    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    const-string v3, "coordinates"

    invoke-virtual {p0, v3}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    const-string v4, "coordinates"

    invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "coordinates":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string v4, ","

    invoke-static {v3, v4}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "point":[Ljava/lang/String;
    new-instance v3, Ltwitter4j/GeoLocation;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Ltwitter4j/GeoLocation;-><init>(DD)V
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "coordinates":Ljava/lang/String;
    .end local v2    # "point":[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 98
    .end local v1    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static createHashtagEntity(IILjava/lang/String;)Ltwitter4j/HashtagEntity;
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;

    invoke-direct {v0, p0, p1, p2}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static createRateLimitStatusFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;
    .locals 1
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 120
    invoke-static {p0}, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public static createUrlEntity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/URLEntity;
    .locals 6
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "expandedURL"    # Ljava/lang/String;
    .param p4, "displayURL"    # Ljava/lang/String;

    .prologue
    .line 311
    new-instance v0, Ltwitter4j/internal/json/URLEntityJSONImpl;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ltwitter4j/internal/json/URLEntityJSONImpl;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createUserMentionEntity(IILjava/lang/String;Ljava/lang/String;J)Ltwitter4j/UserMentionEntity;
    .locals 8
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "screenName"    # Ljava/lang/String;
    .param p4, "id"    # J

    .prologue
    .line 301
    new-instance v1, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method


# virtual methods
.method public createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ltwitter4j/internal/json/UserListJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/UserListJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createAUserList(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/UserList;
    .locals 1
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ltwitter4j/internal/json/UserListJSONImpl;

    invoke-direct {v0, p1}, Ltwitter4j/internal/json/UserListJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    return-object v0
.end method

.method public createAccountSettings(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/AccountSettings;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ltwitter4j/internal/json/AccountSettingsJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/AccountSettingsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createAccountTotals(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/AccountTotals;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ltwitter4j/internal/json/AccountTotalsJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/AccountTotalsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createCategoryList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/CategoryJSONImpl;->createCategoriesList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createDirectMessage(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/DirectMessage;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ltwitter4j/internal/json/DirectMessageJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createDirectMessage(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/DirectMessage;
    .locals 1
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ltwitter4j/internal/json/DirectMessageJSONImpl;

    invoke-direct {v0, p1}, Ltwitter4j/internal/json/DirectMessageJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    return-object v0
.end method

.method public createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
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
    .line 202
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/DirectMessageJSONImpl;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createEmptyResponseList()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ltwitter4j/ResponseList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ltwitter4j/internal/json/ResponseListImpl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    return-object v0
.end method

.method public createFriendshipList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/FriendshipJSONImpl;->createFriendshipList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ltwitter4j/internal/json/IDsJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/IDsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createLanguageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/api/HelpResources$Language;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/LanguageJSONImpl;->createLanguageList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createLocationList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/LocationJSONImpl;->createLocationList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createOEmbed(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/OEmbed;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ltwitter4j/internal/json/OEmbedJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/OEmbedJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/UserJSONImpl;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/UserListJSONImpl;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createPlace(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Place;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ltwitter4j/internal/json/PlaceJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/PlaceJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createPlaceList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v1}, Ltwitter4j/internal/json/PlaceJSONImpl;->createPlaceList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 251
    new-instance v1, Ltwitter4j/internal/json/ResponseListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    goto :goto_0

    .line 253
    :cond_0
    throw v0
.end method

.method public createQueryResult(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/Query;)Ltwitter4j/QueryResult;
    .locals 3
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "query"    # Ltwitter4j/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    new-instance v1, Ltwitter4j/internal/json/QueryResultJSONImpl;

    iget-object v2, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, p1, v2}, Ltwitter4j/internal/json/QueryResultJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "te":Ltwitter4j/TwitterException;
    const/16 v1, 0x194

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 158
    new-instance v1, Ltwitter4j/internal/json/QueryResultJSONImpl;

    invoke-direct {v1, p2}, Ltwitter4j/internal/json/QueryResultJSONImpl;-><init>(Ltwitter4j/Query;)V

    goto :goto_0

    .line 160
    :cond_0
    throw v0
.end method

.method public createRateLimitStatuses(Ltwitter4j/internal/http/HttpResponse;)Ljava/util/Map;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
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
    .line 64
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/RateLimitStatusJSONImpl;->createRateLimitStatuses(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public createRelationship(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Relationship;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ltwitter4j/internal/json/RelationshipJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/RelationshipJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createSavedSearch(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/SavedSearch;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ltwitter4j/internal/json/SavedSearchJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/SavedSearchJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createSavedSearchList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/SavedSearchJSONImpl;->createSavedSearchList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createSimilarPlaces(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/SimilarPlaces;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/SimilarPlacesImpl;->createSimilarPlaces(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/SimilarPlaces;

    move-result-object v0

    return-object v0
.end method

.method public createStatus(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Status;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ltwitter4j/internal/json/StatusJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/StatusJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createStatus(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/Status;
    .locals 1
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ltwitter4j/internal/json/StatusJSONImpl;

    invoke-direct {v0, p1}, Ltwitter4j/internal/json/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    return-object v0
.end method

.method public createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
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
    .line 74
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/StatusJSONImpl;->createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createTrends(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Trends;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ltwitter4j/internal/json/TrendsJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/TrendsJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createTwitterAPIConfiguration(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/TwitterAPIConfiguration;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ltwitter4j/internal/json/UserJSONImpl;

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/json/UserJSONImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V

    return-object v0
.end method

.method public createUser(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/User;
    .locals 1
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ltwitter4j/internal/json/UserJSONImpl;

    invoke-direct {v0, p1}, Ltwitter4j/internal/json/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    return-object v0
.end method

.method public createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/UserJSONImpl;->createUserList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListFromJSONArray(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 2
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v0, p1, v1}, Ltwitter4j/internal/json/UserJSONImpl;->createUserList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListFromJSONArray_Users(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {v1, p1, v2}, Ltwitter4j/internal/json/UserJSONImpl;->createUserList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public createUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-static {p1, v0}, Ltwitter4j/internal/json/UserListJSONImpl;->createUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    if-ne p0, p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 317
    :cond_1
    instance-of v3, p1, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 319
    check-cast v0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;

    .line 321
    .local v0, "that":Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;
    iget-object v3, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    iget-object v4, v0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 322
    goto :goto_0

    .line 321
    :cond_3
    iget-object v3, v0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONImplFactory{conf="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
