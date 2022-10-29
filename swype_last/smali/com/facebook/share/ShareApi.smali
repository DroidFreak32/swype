.class public final Lcom/facebook/share/ShareApi;
.super Ljava/lang/Object;
.source "ShareApi.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_GRAPH_NODE:Ljava/lang/String; = "me"

.field private static final GRAPH_PATH_FORMAT:Ljava/lang/String; = "%s/%s"

.field private static final PHOTOS_EDGE:Ljava/lang/String; = "photos"

.field private static final TAG:Ljava/lang/String; = "ShareApi"


# instance fields
.field private graphNode:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private final shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>(Lcom/facebook/share/model/ShareContent;)V
    .registers 3
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/facebook/share/ShareApi;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 89
    const-string/jumbo v0, "me"

    iput-object v0, p0, Lcom/facebook/share/ShareApi;->graphNode:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)V
    .registers 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/facebook/share/ShareApi;->handleImagesOnAction(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/ShareApi;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/ShareApi;->stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p2, "x2"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/ShareApi;->stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/ShareApi;
    .param p1, "x1"    # Lcom/facebook/share/model/SharePhoto;
    .param p2, "x2"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/ShareApi;->stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    return-void
.end method

.method private addCommonParameters(Landroid/os/Bundle;Lcom/facebook/share/model/ShareContent;)V
    .registers 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 205
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 207
    const-string/jumbo v1, "tags"

    const-string/jumbo v2, ", "

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_17
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 211
    const-string/jumbo v1, "place"

    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_2b
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 215
    const-string/jumbo v1, "ref"

    invoke-virtual {p2}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_3f
    return-void
.end method

.method private getGraphPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "pathAfterGraphNode"    # Ljava/lang/String;

    .prologue
    .line 195
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getGraphNode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 200
    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private getSharePhotoCommonParameters(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;
    .registers 11
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p2, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    .line 431
    .local v2, "params":Landroid/os/Bundle;
    const-string/jumbo v6, "place"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 433
    const-string/jumbo v6, "place"

    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_21
    const-string/jumbo v6, "tags"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6c

    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_6c

    .line 437
    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v3

    .line 438
    .local v3, "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_6c

    .line 439
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 440
    .local v5, "tags":Lorg/json/JSONArray;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 441
    .local v1, "id":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 442
    .local v4, "tag":Lorg/json/JSONObject;
    const-string/jumbo v6, "tag_uid"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_47

    .line 445
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "tag":Lorg/json/JSONObject;
    :cond_62
    const-string/jumbo v6, "tags"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "peopleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "tags":Lorg/json/JSONArray;
    :cond_6c
    const-string/jumbo v6, "ref"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_89

    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_89

    .line 450
    const-string/jumbo v6, "ref"

    invoke-virtual {p2}, Lcom/facebook/share/model/SharePhotoContent;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_89
    return-object v2
.end method

.method private static handleImagesOnAction(Landroid/os/Bundle;)V
    .registers 12
    .param p0, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 272
    const-string/jumbo v6, "image"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "imageStr":Ljava/lang/String;
    if-eqz v2, :cond_4c

    .line 276
    :try_start_9
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "images":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_4d

    .line 278
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 279
    .local v4, "jsonImage":Lorg/json/JSONObject;
    if-eqz v4, :cond_21

    .line 280
    invoke-static {p0, v0, v4}, Lcom/facebook/share/ShareApi;->putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V

    .line 277
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 283
    :cond_21
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "url":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v7, "image[%d][url]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_3b} :catch_3c

    goto :goto_1e

    .end local v0    # "i":I
    .end local v3    # "images":Lorg/json/JSONArray;
    .end local v4    # "jsonImage":Lorg/json/JSONObject;
    .end local v5    # "url":Ljava/lang/String;
    :catch_3c
    move-exception v6

    .line 295
    :try_start_3d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "image":Lorg/json/JSONObject;
    const/4 v6, 0x0

    invoke-static {p0, v6, v1}, Lcom/facebook/share/ShareApi;->putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V

    .line 297
    const-string/jumbo v6, "image"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_4c} :catch_54

    .line 303
    .end local v1    # "image":Lorg/json/JSONObject;
    :cond_4c
    :goto_4c
    return-void

    .line 287
    .restart local v0    # "i":I
    .restart local v3    # "images":Lorg/json/JSONArray;
    :cond_4d
    :try_start_4d
    const-string/jumbo v6, "image"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_53} :catch_3c

    goto :goto_4c

    .end local v0    # "i":I
    .end local v3    # "images":Lorg/json/JSONArray;
    :catch_54
    move-exception v6

    goto :goto_4c
.end method

.method private static putImageInBundleWithArrayFormat(Landroid/os/Bundle;ILorg/json/JSONObject;)V
    .registers 11
    .param p0, "parameters"    # Landroid/os/Bundle;
    .param p1, "index"    # I
    .param p2, "image"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    .local v2, "property":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v4, "image[%d][%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 315
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "property":Ljava/lang/String;
    :cond_32
    return-void
.end method

.method public static share(Lcom/facebook/share/model/ShareContent;Lcom/facebook/FacebookCallback;)V
    .registers 3
    .param p0, "shareContent"    # Lcom/facebook/share/model/ShareContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v0, Lcom/facebook/share/ShareApi;

    invoke-direct {v0, p0}, Lcom/facebook/share/ShareApi;-><init>(Lcom/facebook/share/model/ShareContent;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/ShareApi;->share(Lcom/facebook/FacebookCallback;)V

    .line 80
    return-void
.end method

.method private shareLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/FacebookCallback;)V
    .registers 9
    .param p1, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareLinkContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v5, Lcom/facebook/share/ShareApi$4;

    invoke-direct {v5, p0, p2}, Lcom/facebook/share/ShareApi$4;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V

    .line 403
    .local v5, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v3, "parameters":Landroid/os/Bundle;
    invoke-direct {p0, v3, p1}, Lcom/facebook/share/ShareApi;->addCommonParameters(Landroid/os/Bundle;Lcom/facebook/share/model/ShareContent;)V

    .line 405
    const-string/jumbo v0, "message"

    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v0, "link"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string/jumbo v0, "picture"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string/jumbo v0, "name"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v0, "description"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v0, "ref"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string/jumbo v2, "feed"

    invoke-direct {p0, v2}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 417
    return-void
.end method

.method private shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V
    .registers 9
    .param p1, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareOpenGraphContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v4, Lcom/facebook/share/ShareApi$1;

    invoke-direct {v4, p0, p2}, Lcom/facebook/share/ShareApi$1;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/FacebookCallback;)V

    .line 234
    .local v4, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v3

    .line 235
    .local v3, "action":Lcom/facebook/share/model/ShareOpenGraphAction;
    invoke-virtual {v3}, Lcom/facebook/share/model/ShareOpenGraphAction;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 236
    .local v2, "parameters":Landroid/os/Bundle;
    invoke-direct {p0, v2, p1}, Lcom/facebook/share/ShareApi;->addCommonParameters(Landroid/os/Bundle;Lcom/facebook/share/model/ShareContent;)V

    .line 237
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 238
    const-string/jumbo v1, "message"

    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_24
    new-instance v0, Lcom/facebook/share/ShareApi$2;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/ShareApi$2;-><init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/FacebookCallback;)V

    .line 265
    .local v0, "stageCallback":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-direct {p0, v2, v0}, Lcom/facebook/share/ShareApi;->stageOpenGraphAction(Landroid/os/Bundle;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 266
    return-void
.end method

.method private sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V
    .registers 28
    .param p1, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/SharePhotoContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v7, Lcom/facebook/internal/Mutable;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 320
    .local v7, "requestCount":Lcom/facebook/internal/Mutable;, "Lcom/facebook/internal/Mutable<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v19

    .line 321
    .local v19, "accessToken":Lcom/facebook/AccessToken;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v24, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphRequest;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v6, "errorResponses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/GraphResponse;>;"
    new-instance v3, Lcom/facebook/share/ShareApi$3;

    move-object/from16 v4, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/share/ShareApi$3;-><init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/internal/Mutable;Lcom/facebook/FacebookCallback;)V

    .line 352
    .local v3, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :try_start_26
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_2e
    :goto_2e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/facebook/share/model/SharePhoto;
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_3a} :catch_6e

    .line 355
    .local v23, "photo":Lcom/facebook/share/model/SharePhoto;
    :try_start_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/ShareApi;->getSharePhotoCommonParameters(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_43} :catch_77
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_43} :catch_6e

    move-result-object v12

    .line 360
    .local v12, "params":Landroid/os/Bundle;
    :try_start_44
    invoke-virtual/range {v23 .. v23}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 361
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v23 .. v23}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v15

    .line 362
    .local v15, "photoUri":Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Lcom/facebook/share/model/SharePhoto;->getCaption()Ljava/lang/String;

    move-result-object v11

    .line 363
    .local v11, "caption":Ljava/lang/String;
    if-nez v11, :cond_56

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/share/ShareApi;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 366
    :cond_56
    if-eqz v10, :cond_80

    .line 367
    const-string/jumbo v4, "photos"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, v19

    move-object v13, v3

    invoke-static/range {v8 .. v13}, Lcom/facebook/GraphRequest;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_6d} :catch_6e

    goto :goto_2e

    .line 388
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "caption":Ljava/lang/String;
    .end local v12    # "params":Landroid/os/Bundle;
    .end local v15    # "photoUri":Landroid/net/Uri;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v23    # "photo":Lcom/facebook/share/model/SharePhoto;
    :catch_6e
    move-exception v21

    .line 389
    .local v21, "ex":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    .line 391
    .end local v21    # "ex":Ljava/io/FileNotFoundException;
    :cond_76
    :goto_76
    return-void

    .line 356
    .restart local v22    # "i$":Ljava/util/Iterator;
    .restart local v23    # "photo":Lcom/facebook/share/model/SharePhoto;
    :catch_77
    move-exception v20

    .line 357
    .local v20, "e":Lorg/json/JSONException;
    :try_start_78
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    goto :goto_76

    .line 374
    .end local v20    # "e":Lorg/json/JSONException;
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "caption":Ljava/lang/String;
    .restart local v12    # "params":Landroid/os/Bundle;
    .restart local v15    # "photoUri":Landroid/net/Uri;
    :cond_80
    if-eqz v15, :cond_2e

    .line 375
    const-string/jumbo v4, "photos"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/facebook/share/ShareApi;->getGraphPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v13, v19

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v3

    invoke-static/range {v13 .. v18}, Lcom/facebook/GraphRequest;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 384
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "caption":Ljava/lang/String;
    .end local v12    # "params":Landroid/os/Bundle;
    .end local v15    # "photoUri":Landroid/net/Uri;
    .end local v23    # "photo":Lcom/facebook/share/model/SharePhoto;
    :cond_9d
    iget-object v4, v7, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v7, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 385
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_b4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/GraphRequest;

    .line 386
    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_c3
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_c3} :catch_6e

    goto :goto_b4
.end method

.method private shareVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V
    .registers 5
    .param p1, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getGraphNode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/facebook/share/internal/VideoUploader;->uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    .line 426
    :goto_7
    return-void

    .line 423
    :catch_8
    move-exception v0

    .line 424
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-static {p2, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method private stageArrayList(Ljava/util/ArrayList;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 6
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "onArrayListStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 458
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 459
    .local v2, "stagedObject":Lorg/json/JSONArray;
    new-instance v0, Lcom/facebook/share/ShareApi$5;

    invoke-direct {v0, p0, p1, v2}, Lcom/facebook/share/ShareApi$5;-><init>(Lcom/facebook/share/ShareApi;Ljava/util/ArrayList;Lorg/json/JSONArray;)V

    .line 502
    .local v0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/facebook/share/ShareApi$6;

    invoke-direct {v1, p0, p2, v2}, Lcom/facebook/share/ShareApi$6;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lorg/json/JSONArray;)V

    .line 514
    .local v1, "onStagedArrayMapperCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-direct {p0, v0, v1}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 515
    return-void
.end method

.method private stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4
    .param p2, "onCollectionValuesStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/internal/CollectionMapper$Collection",
            "<TT;>;",
            "Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<TT;>;"
    new-instance v0, Lcom/facebook/share/ShareApi$7;

    invoke-direct {v0, p0}, Lcom/facebook/share/ShareApi$7;-><init>(Lcom/facebook/share/ShareApi;)V

    .line 538
    .local v0, "valueMapper":Lcom/facebook/internal/CollectionMapper$ValueMapper;
    invoke-static {p1, v0, p2}, Lcom/facebook/internal/CollectionMapper;->iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 539
    return-void
.end method

.method private stageOpenGraphAction(Landroid/os/Bundle;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "onOpenGraphActionStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    .prologue
    .line 544
    new-instance v0, Lcom/facebook/share/ShareApi$8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/ShareApi$8;-><init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;)V

    .line 566
    .local v0, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 567
    return-void
.end method

.method private stageOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 11
    .param p1, "object"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p2, "onOpenGraphObjectStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 572
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 573
    .local v7, "type":Ljava/lang/String;
    if-nez v7, :cond_10

    .line 574
    const-string/jumbo v1, "og:type"

    invoke-virtual {p1, v1}, Lcom/facebook/share/model/ShareOpenGraphObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 577
    :cond_10
    if-nez v7, :cond_1e

    .line 578
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v5, "Open Graph objects must contain a type value."

    invoke-direct {v1, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    .line 672
    :goto_1d
    return-void

    .line 582
    :cond_1e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 583
    .local v2, "stagedObject":Lorg/json/JSONObject;
    new-instance v6, Lcom/facebook/share/ShareApi$9;

    invoke-direct {v6, p0, p1, v2}, Lcom/facebook/share/ShareApi$9;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/share/model/ShareOpenGraphObject;Lorg/json/JSONObject;)V

    .line 610
    .local v6, "collection":Lcom/facebook/internal/CollectionMapper$Collection;, "Lcom/facebook/internal/CollectionMapper$Collection<Ljava/lang/String;>;"
    new-instance v4, Lcom/facebook/share/ShareApi$10;

    invoke-direct {v4, p0, p2}, Lcom/facebook/share/ShareApi$10;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 640
    .local v4, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    move-object v3, v7

    .line 641
    .local v3, "ogType":Ljava/lang/String;
    new-instance v0, Lcom/facebook/share/ShareApi$11;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/share/ShareApi$11;-><init>(Lcom/facebook/share/ShareApi;Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    .line 671
    .local v0, "onMapperCompleteListener":Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
    invoke-direct {p0, v6, v0}, Lcom/facebook/share/ShareApi;->stageCollectionValues(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    goto :goto_1d
.end method

.method private stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
    .registers 9
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p2, "onPhotoStagedListener"    # Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 678
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    .line 679
    .local v1, "imageUrl":Landroid/net/Uri;
    if-nez v0, :cond_c

    if-eqz v1, :cond_3e

    .line 680
    :cond_c
    new-instance v3, Lcom/facebook/share/ShareApi$12;

    invoke-direct {v3, p0, p2, p1}, Lcom/facebook/share/ShareApi$12;-><init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lcom/facebook/share/model/SharePhoto;)V

    .line 721
    .local v3, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    if-eqz v0, :cond_1f

    .line 722
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/graphics/Bitmap;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 744
    .end local v3    # "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :goto_1e
    return-void

    .line 728
    .restart local v3    # "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-static {v4, v1, v3}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_1e

    .line 733
    :catch_2b
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_35

    .line 735
    const-string/jumbo v2, "Error staging photo."

    .line 737
    :cond_35
    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_1e

    .line 741
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "requestCallback":Lcom/facebook/GraphRequest$Callback;
    :cond_3e
    new-instance v4, Lcom/facebook/FacebookException;

    const-string/jumbo v5, "Photos must have an imageURL or bitmap."

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_1e
.end method


# virtual methods
.method public final canShare()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v3

    if-nez v3, :cond_8

    .line 157
    :cond_7
    :goto_7
    return v2

    .line 147
    :cond_8
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 148
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_7

    .line 151
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    .line 152
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1d

    const-string/jumbo v2, "publish_actions"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 153
    :cond_1d
    const-string/jumbo v2, "ShareApi"

    const-string/jumbo v3, "The publish_actions permissions are missing, the share will fail unless this app was authorized to publish in another installation."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_26
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public final getGraphNode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/share/ShareApi;->graphNode:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/share/ShareApi;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareContent()Lcom/facebook/share/model/ShareContent;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/share/ShareApi;->shareContent:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method public final setGraphNode(Ljava/lang/String;)V
    .registers 2
    .param p1, "graphNode"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/facebook/share/ShareApi;->graphNode:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/facebook/share/ShareApi;->message:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public final share(Lcom/facebook/FacebookCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->canShare()Z

    move-result v2

    if-nez v2, :cond_d

    .line 167
    const-string/jumbo v2, "Insufficient permissions for sharing content via Api."

    invoke-static {p1, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithError(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    .line 190
    :cond_c
    :goto_c
    return-void

    .line 171
    :cond_d
    invoke-virtual {p0}, Lcom/facebook/share/ShareApi;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    .line 175
    .local v1, "shareContent":Lcom/facebook/share/model/ShareContent;
    :try_start_11
    invoke-static {v1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForApiShare(Lcom/facebook/share/model/ShareContent;)V
    :try_end_14
    .catch Lcom/facebook/FacebookException; {:try_start_11 .. :try_end_14} :catch_1e

    .line 181
    instance-of v2, v1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_23

    .line 182
    check-cast v1, Lcom/facebook/share/model/ShareLinkContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_c

    .line 176
    .restart local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :catch_1e
    move-exception v0

    .line 177
    .local v0, "ex":Lcom/facebook/FacebookException;
    invoke-static {p1, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    goto :goto_c

    .line 183
    .end local v0    # "ex":Lcom/facebook/FacebookException;
    :cond_23
    instance-of v2, v1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v2, :cond_2d

    .line 184
    check-cast v1, Lcom/facebook/share/model/SharePhotoContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->sharePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_c

    .line 185
    .restart local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :cond_2d
    instance-of v2, v1, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v2, :cond_37

    .line 186
    check-cast v1, Lcom/facebook/share/model/ShareVideoContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_c

    .line 187
    .restart local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    :cond_37
    instance-of v2, v1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v2, :cond_c

    .line 188
    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphContent;

    .end local v1    # "shareContent":Lcom/facebook/share/model/ShareContent;
    invoke-direct {p0, v1, p1}, Lcom/facebook/share/ShareApi;->shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_c
.end method
