.class public Ltwitter4j/internal/json/UserListJSONImpl;
.super Ltwitter4j/internal/json/TwitterResponseImpl;
.source "UserListJSONImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/UserList;


# static fields
.field private static final serialVersionUID:J = -0x581124472812f726L


# instance fields
.field private description:Ljava/lang/String;

.field private following:Z

.field private fullName:Ljava/lang/String;

.field private id:I

.field private memberCount:I

.field private mode:Z

.field private name:Ljava/lang/String;

.field private slug:Ljava/lang/String;

.field private subscriberCount:I

.field private uri:Ljava/lang/String;

.field private user:Ltwitter4j/User;


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
    .line 52
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 53
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 56
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 57
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/internal/json/UserListJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 58
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
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
    .line 64
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 65
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/UserListJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 66
    return-void
.end method

.method static createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/PagableResponseList;
    .locals 9
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
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
    .line 189
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 190
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 192
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 193
    .local v1, "json":Ltwitter4j/internal/org/json/JSONObject;
    const-string v8, "lists"

    invoke-virtual {v1, v8}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 194
    .local v3, "list":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 195
    .local v4, "size":I
    new-instance v7, Ltwitter4j/internal/json/PagableResponseListImpl;

    invoke-direct {v7, v4, v1, p0}, Ltwitter4j/internal/json/PagableResponseListImpl;-><init>(ILtwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V

    .line 197
    .local v7, "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 198
    invoke-virtual {v3, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    .line 199
    .local v6, "userListJson":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v5, Ltwitter4j/internal/json/UserListJSONImpl;

    invoke-direct {v5, v6}, Ltwitter4j/internal/json/UserListJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 200
    .local v5, "userList":Ltwitter4j/UserList;
    invoke-interface {v7, v5}, Ltwitter4j/PagableResponseList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 202
    invoke-static {v5, v6}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v5    # "userList":Ltwitter4j/UserList;
    .end local v6    # "userListJson":Ltwitter4j/internal/org/json/JSONObject;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 206
    invoke-static {v7, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :cond_3
    return-object v7

    .line 209
    .end local v0    # "i":I
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .end local v3    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .end local v4    # "size":I
    .end local v7    # "users":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<Ltwitter4j/UserList;>;"
    :catch_0
    move-exception v2

    .line 210
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v8, Ltwitter4j/TwitterException;

    invoke-direct {v8, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 211
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v8

    throw v8
.end method

.method static createUserListList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
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
    .line 219
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 220
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 222
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 223
    .local v2, "list":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v3

    .line 224
    .local v3, "size":I
    new-instance v6, Ltwitter4j/internal/json/ResponseListImpl;

    invoke-direct {v6, v3, p0}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 226
    .local v6, "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/UserList;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 227
    invoke-virtual {v2, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    .line 228
    .local v5, "userListJson":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v4, Ltwitter4j/internal/json/UserListJSONImpl;

    invoke-direct {v4, v5}, Ltwitter4j/internal/json/UserListJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 229
    .local v4, "userList":Ltwitter4j/UserList;
    invoke-interface {v6, v4}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 231
    invoke-static {v4, v5}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v4    # "userList":Ltwitter4j/UserList;
    .end local v5    # "userListJson":Ltwitter4j/internal/org/json/JSONObject;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 235
    invoke-static {v6, v2}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    :cond_3
    return-object v6

    .line 238
    .end local v0    # "i":I
    .end local v2    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .end local v3    # "size":I
    .end local v6    # "users":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/UserList;>;"
    :catch_0
    move-exception v1

    .line 239
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 240
    .end local v1    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v7

    throw v7
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
    .line 69
    const-string v1, "id"

    invoke-static {v1, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->id:I

    .line 70
    const-string v1, "name"

    invoke-static {v1, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->name:Ljava/lang/String;

    .line 71
    const-string v1, "full_name"

    invoke-static {v1, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->fullName:Ljava/lang/String;

    .line 72
    const-string v1, "slug"

    invoke-static {v1, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->slug:Ljava/lang/String;

    .line 73
    const-string v1, "description"

    invoke-static {v1, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->description:Ljava/lang/String;

    .line 74
    const-string v1, "subscriber_count"

    invoke-static {v1, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->subscriberCount:I

    .line 75
    const-string v1, "member_count"

    invoke-static {v1, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v1

    iput v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->memberCount:I

    .line 76
    const-string v1, "uri"

    invoke-static {v1, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->uri:Ljava/lang/String;

    .line 77
    const-string v1, "public"

    const-string v2, "mode"

    invoke-static {v2, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->mode:Z

    .line 78
    const-string v1, "following"

    invoke-static {v1, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v1

    iput-boolean v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->following:Z

    .line 81
    :try_start_0
    const-string v1, "user"

    invoke-virtual {p1, v1}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    new-instance v1, Ltwitter4j/internal/json/UserJSONImpl;

    const-string v2, "user"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/internal/json/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    iput-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->user:Ltwitter4j/User;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Ltwitter4j/UserList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/internal/json/UserListJSONImpl;->compareTo(Ltwitter4j/UserList;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/UserList;)I
    .locals 2
    .param p1, "that"    # Ltwitter4j/UserList;

    .prologue
    .line 91
    iget v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->id:I

    invoke-interface {p1}, Ltwitter4j/UserList;->getId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 252
    if-nez p1, :cond_1

    .line 258
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 255
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :cond_2
    instance-of v2, p1, Ltwitter4j/UserList;

    if-eqz v2, :cond_0

    check-cast p1, Ltwitter4j/UserList;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/UserList;->getId()I

    move-result v2

    iget v3, p0, Ltwitter4j/internal/json/UserListJSONImpl;->id:I

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->id:I

    return v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->memberCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberCount()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->subscriberCount:I

    return v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 2

    .prologue
    .line 156
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->uri:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->id:I

    return v0
.end method

.method public isFollowing()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->following:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Ltwitter4j/internal/json/UserListJSONImpl;->mode:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserListJSONImpl{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fullName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slug=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->subscriberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->memberCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->mode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", following="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/internal/json/UserListJSONImpl;->following:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
