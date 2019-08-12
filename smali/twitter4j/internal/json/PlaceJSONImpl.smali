.class public final Ltwitter4j/internal/json/PlaceJSONImpl;
.super Ltwitter4j/internal/json/TwitterResponseImpl;
.source "PlaceJSONImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/Place;


# static fields
.field private static final serialVersionUID:J = -0x27e03da513dea854L


# instance fields
.field private boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

.field private boundingBoxType:Ljava/lang/String;

.field private containedWithIn:[Ltwitter4j/Place;

.field private country:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private geometryCoordinates:[[Ltwitter4j/GeoLocation;

.field private geometryType:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private placeType:Ljava/lang/String;

.field private streetAddress:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 77
    return-void
.end method

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
    .line 55
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 56
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 57
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/internal/json/PlaceJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 58
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 60
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
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
    .line 70
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 71
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/PlaceJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 72
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V
    .locals 0
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p2, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p2}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 66
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/PlaceJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 67
    return-void
.end method

.method static createPlaceList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 5
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
    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 146
    const-string v2, "result"

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    const-string v3, "places"

    invoke-virtual {v2, v3}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    invoke-static {v2, p0, p1}, Ltwitter4j/internal/json/PlaceJSONImpl;->createPlaceList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static createPlaceList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 7
    .param p0, "list"    # Ltwitter4j/internal/org/json/JSONArray;
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/org/json/JSONArray;",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
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
    .line 155
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 159
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    .line 160
    .local v5, "size":I
    new-instance v4, Ltwitter4j/internal/json/ResponseListImpl;

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 162
    .local v4, "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 163
    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 164
    .local v1, "json":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v3, Ltwitter4j/internal/json/PlaceJSONImpl;

    invoke-direct {v3, v1}, Ltwitter4j/internal/json/PlaceJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 165
    .local v3, "place":Ltwitter4j/Place;
    invoke-interface {v4, v3}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    invoke-static {v3, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .end local v3    # "place":Ltwitter4j/Place;
    :cond_2
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 171
    invoke-static {v4, p0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :cond_3
    return-object v4

    .line 174
    .end local v0    # "i":I
    .end local v4    # "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    .end local v5    # "size":I
    :catch_0
    move-exception v2

    .line 175
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 176
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v6

    throw v6
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
    .line 81
    :try_start_0
    const-string v6, "name"

    invoke-static {v6, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->name:Ljava/lang/String;

    .line 82
    const-string v6, "street_address"

    invoke-static {v6, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->streetAddress:Ljava/lang/String;

    .line 83
    const-string v6, "country_code"

    invoke-static {v6, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->countryCode:Ljava/lang/String;

    .line 84
    const-string v6, "id"

    invoke-static {v6, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->id:Ljava/lang/String;

    .line 85
    const-string v6, "country"

    invoke-static {v6, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->country:Ljava/lang/String;

    .line 86
    const-string v6, "place_type"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    const-string v6, "place_type"

    invoke-static {v6, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->placeType:Ljava/lang/String;

    .line 91
    :goto_0
    const-string v6, "url"

    invoke-static {v6, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->url:Ljava/lang/String;

    .line 92
    const-string v6, "full_name"

    invoke-static {v6, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->fullName:Ljava/lang/String;

    .line 93
    const-string v6, "bounding_box"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 94
    const-string v6, "bounding_box"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 95
    .local v1, "boundingBoxJSON":Ltwitter4j/internal/org/json/JSONObject;
    const-string v6, "type"

    invoke-static {v6, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    .line 96
    const-string v6, "coordinates"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 97
    .local v0, "array":Ltwitter4j/internal/org/json/JSONArray;
    invoke-static {v0}, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->coordinatesAsGeoLocationArray(Ltwitter4j/internal/org/json/JSONArray;)[[Ltwitter4j/GeoLocation;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    .line 103
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v1    # "boundingBoxJSON":Ltwitter4j/internal/org/json/JSONObject;
    :goto_1
    const-string v6, "geometry"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 104
    const-string v6, "geometry"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 105
    .local v3, "geometryJSON":Ltwitter4j/internal/org/json/JSONObject;
    const-string v6, "type"

    invoke-static {v6, v3}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    .line 106
    const-string v6, "coordinates"

    invoke-virtual {v3, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 107
    .restart local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    iget-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    const-string v7, "Point"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, Ltwitter4j/GeoLocation;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ltwitter4j/GeoLocation;

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    .line 109
    iget-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    new-instance v8, Ltwitter4j/GeoLocation;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ltwitter4j/internal/org/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    invoke-direct {v8, v10, v11, v12, v13}, Ltwitter4j/GeoLocation;-><init>(DD)V

    aput-object v8, v6, v7

    .line 122
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v3    # "geometryJSON":Ltwitter4j/internal/org/json/JSONObject;
    :goto_2
    const-string v6, "contained_within"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 123
    const-string v6, "contained_within"

    invoke-virtual {p1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    .line 124
    .local v2, "containedWithInJSON":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ltwitter4j/Place;

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    .line 125
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v2}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 126
    iget-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    new-instance v7, Ltwitter4j/internal/json/PlaceJSONImpl;

    invoke-virtual {v2, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Ltwitter4j/internal/json/PlaceJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v7, v6, v4

    .line 125
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 89
    .end local v2    # "containedWithInJSON":Ltwitter4j/internal/org/json/JSONArray;
    .end local v4    # "i":I
    :cond_0
    const-string v6, "type"

    invoke-static {v6, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->placeType:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 131
    :catch_0
    move-exception v5

    .line 132
    .local v5, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 99
    .end local v5    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    .line 100
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    goto/16 :goto_1

    .line 110
    .restart local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .restart local v3    # "geometryJSON":Ltwitter4j/internal/org/json/JSONObject;
    :cond_2
    iget-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    const-string v7, "Polygon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    invoke-static {v0}, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->coordinatesAsGeoLocationArray(Ltwitter4j/internal/org/json/JSONArray;)[[Ltwitter4j/GeoLocation;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    goto :goto_2

    .line 114
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    .line 115
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    goto :goto_2

    .line 118
    .end local v0    # "array":Ltwitter4j/internal/org/json/JSONArray;
    .end local v3    # "geometryJSON":Ltwitter4j/internal/org/json/JSONObject;
    :cond_4
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    .line 119
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    goto/16 :goto_2

    .line 129
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;
    :try_end_1
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :cond_6
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Ltwitter4j/Place;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/internal/json/PlaceJSONImpl;->compareTo(Ltwitter4j/Place;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Ltwitter4j/Place;)I
    .locals 2
    .param p1, "that"    # Ltwitter4j/Place;

    .prologue
    .line 138
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-interface {p1}, Ltwitter4j/Place;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 249
    if-nez p1, :cond_1

    .line 255
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 252
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 253
    goto :goto_0

    .line 255
    :cond_2
    instance-of v2, p1, Ltwitter4j/Place;

    if-eqz v2, :cond_0

    check-cast p1, Ltwitter4j/Place;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/Place;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getBoundingBoxCoordinates()[[Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public final getBoundingBoxType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    return-object v0
.end method

.method public final getContainedWithIn()[Ltwitter4j/Place;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public final getGeometryCoordinates()[[Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public final getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->placeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->streetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x27

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PlaceJSONImpl{name=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", streetAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->streetAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", countryCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", placeType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->placeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fullName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", boundingBoxType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->boundingBoxType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", boundingBoxCoordinates="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", geometryType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", geometryCoordinates="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", containedWithIn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->boundingBoxCoordinates:[[Ltwitter4j/GeoLocation;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->geometryCoordinates:[[Ltwitter4j/GeoLocation;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ltwitter4j/internal/json/PlaceJSONImpl;->containedWithIn:[Ltwitter4j/Place;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2
.end method
