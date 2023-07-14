.class public Lcom/facebook/internal/GraphUtil;
.super Ljava/lang/Object;
.source "GraphUtil.java"


# static fields
.field private static final dateFormats:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/GraphUtil;->dateFormats:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOpenGraphActionForPost(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v0, "action":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    .line 59
    :try_start_0
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "An error occurred while setting up the open graph action"

    invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createOpenGraphObjectForPost(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 76
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lcom/facebook/internal/GraphUtil;->createOpenGraphObjectForPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static createOpenGraphObjectForPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "objectProperties"    # Lorg/json/JSONObject;
    .param p6, "id"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v3, "openGraphObject":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    .line 101
    :try_start_0
    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_0
    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    if-eqz p2, :cond_1

    .line 106
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v1, "imageUrlObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 109
    .local v2, "imageUrls":Lorg/json/JSONArray;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 110
    const-string/jumbo v4, "image"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .end local v1    # "imageUrlObject":Lorg/json/JSONObject;
    .end local v2    # "imageUrls":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo v4, "description"

    invoke-virtual {v3, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v4, "fbsdk:create_object"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 117
    if-eqz p5, :cond_2

    .line 118
    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_2
    if-eqz p6, :cond_3

    .line 122
    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_3
    return-object v3

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string/jumbo v5, "An error occurred while setting up the graph object"

    invoke-direct {v4, v5, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static isOpenGraphObjectForPost(Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 136
    if-eqz p0, :cond_0

    const-string/jumbo v0, "fbsdk:create_object"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
