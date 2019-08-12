.class public final Ltwitter4j/internal/json/LocationJSONImpl;
.super Ljava/lang/Object;
.source "LocationJSONImpl.java"

# interfaces
.implements Ltwitter4j/Location;


# static fields
.field private static final serialVersionUID:J = 0x6276d4e89ed29546L


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final countryName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final placeCode:I

.field private final placeName:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final woeid:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .param p1, "location"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    :try_start_0
    const-string v2, "woeid"

    invoke-static {v2, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/internal/json/LocationJSONImpl;->woeid:I

    .line 46
    const-string v2, "country"

    invoke-static {v2, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/internal/json/LocationJSONImpl;->countryName:Ljava/lang/String;

    .line 47
    const-string v2, "countryCode"

    invoke-static {v2, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/internal/json/LocationJSONImpl;->countryCode:Ljava/lang/String;

    .line 48
    const-string v2, "placeType"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const-string v2, "placeType"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 50
    .local v1, "placeJSON":Ltwitter4j/internal/org/json/JSONObject;
    const-string v2, "name"

    invoke-static {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/internal/json/LocationJSONImpl;->placeName:Ljava/lang/String;

    .line 51
    const-string v2, "code"

    invoke-static {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/internal/json/LocationJSONImpl;->placeCode:I

    .line 56
    .end local v1    # "placeJSON":Ltwitter4j/internal/org/json/JSONObject;
    :goto_0
    const-string v2, "name"

    invoke-static {v2, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/internal/json/LocationJSONImpl;->name:Ljava/lang/String;

    .line 57
    const-string v2, "url"

    invoke-static {v2, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/internal/json/LocationJSONImpl;->url:Ljava/lang/String;

    .line 60
    return-void

    .line 53
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Ltwitter4j/internal/json/LocationJSONImpl;->placeName:Ljava/lang/String;

    .line 54
    const/4 v2, -0x1

    iput v2, p0, Ltwitter4j/internal/json/LocationJSONImpl;->placeCode:I
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method static createLocationList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 2
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
    .line 65
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 68
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Ltwitter4j/internal/json/LocationJSONImpl;->createLocationList(Ltwitter4j/internal/org/json/JSONArray;Z)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method static createLocationList(Ltwitter4j/internal/org/json/JSONArray;Z)Ltwitter4j/ResponseList;
    .locals 7
    .param p0, "list"    # Ltwitter4j/internal/org/json/JSONArray;
    .param p1, "storeJSON"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/org/json/JSONArray;",
            "Z)",
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
    .line 74
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v5

    .line 75
    .local v5, "size":I
    new-instance v4, Ltwitter4j/internal/json/ResponseListImpl;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 77
    .local v4, "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 78
    invoke-virtual {p0, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 79
    .local v1, "json":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v3, Ltwitter4j/internal/json/LocationJSONImpl;

    invoke-direct {v3, v1}, Ltwitter4j/internal/json/LocationJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 80
    .local v3, "location":Ltwitter4j/Location;
    invoke-interface {v4, v3}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-static {v3, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .end local v3    # "location":Ltwitter4j/Location;
    :cond_1
    if-eqz p1, :cond_2

    .line 86
    invoke-static {v4, p0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :cond_2
    return-object v4

    .line 89
    .end local v0    # "i":I
    .end local v4    # "locations":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Location;>;"
    .end local v5    # "size":I
    :catch_0
    move-exception v2

    .line 90
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 91
    .end local v2    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    :catch_1
    move-exception v6

    throw v6
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    if-ne p0, p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 155
    :cond_1
    instance-of v3, p1, Ltwitter4j/internal/json/LocationJSONImpl;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 157
    check-cast v0, Ltwitter4j/internal/json/LocationJSONImpl;

    .line 159
    .local v0, "that":Ltwitter4j/internal/json/LocationJSONImpl;
    iget v3, p0, Ltwitter4j/internal/json/LocationJSONImpl;->woeid:I

    iget v4, v0, Ltwitter4j/internal/json/LocationJSONImpl;->woeid:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Ltwitter4j/internal/json/LocationJSONImpl;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ltwitter4j/internal/json/LocationJSONImpl;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ltwitter4j/internal/json/LocationJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaceCode()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Ltwitter4j/internal/json/LocationJSONImpl;->placeCode:I

    return v0
.end method

.method public final getPlaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Ltwitter4j/internal/json/LocationJSONImpl;->placeName:Ljava/lang/String;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Ltwitter4j/internal/json/LocationJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getWoeid()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Ltwitter4j/internal/json/LocationJSONImpl;->woeid:I

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Ltwitter4j/internal/json/LocationJSONImpl;->woeid:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationJSONImpl{woeid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/internal/json/LocationJSONImpl;->woeid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/LocationJSONImpl;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/LocationJSONImpl;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placeName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/LocationJSONImpl;->placeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placeCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/LocationJSONImpl;->placeCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/LocationJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/LocationJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
