.class Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;
.super Ltwitter4j/internal/json/TwitterResponseImpl;
.source "TwitterAPIConfigurationJSONImpl.java"

# interfaces
.implements Ltwitter4j/TwitterAPIConfiguration;


# static fields
.field private static final serialVersionUID:J = 0x504d099b9651fb89L


# instance fields
.field private charactersReservedPerMedia:I

.field private maxMediaPerUpload:I

.field private nonUsernamePaths:[Ljava/lang/String;

.field private photoSizeLimit:I

.field private photoSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation
.end field

.field private shortURLLength:I

.field private shortURLLengthHttps:I


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 10
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 52
    :try_start_0
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 53
    .local v1, "json":Ltwitter4j/internal/org/json/JSONObject;
    const-string v6, "photo_size_limit"

    invoke-static {v6, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    .line 54
    const-string v6, "short_url_length"

    invoke-static {v6, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    .line 55
    const-string v6, "short_url_length_https"

    invoke-static {v6, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    .line 56
    const-string v6, "characters_reserved_per_media"

    invoke-static {v6, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    .line 58
    const-string v6, "photo_sizes"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v5

    .line 59
    .local v5, "sizes":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v6, Ljava/util/HashMap;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    .line 60
    iget-object v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v7, Ltwitter4j/MediaEntity$Size;->LARGE:Ljava/lang/Integer;

    new-instance v8, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;

    const-string v9, "large"

    invoke-virtual {v5, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v6, "med"

    invoke-virtual {v5, v6}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    const-string v6, "medium"

    invoke-virtual {v5, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .line 68
    .local v3, "medium":Ltwitter4j/internal/org/json/JSONObject;
    :goto_0
    iget-object v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v7, Ltwitter4j/MediaEntity$Size;->MEDIUM:Ljava/lang/Integer;

    new-instance v8, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;

    invoke-direct {v8, v3}, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v7, Ltwitter4j/MediaEntity$Size;->SMALL:Ljava/lang/Integer;

    new-instance v8, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;

    const-string v9, "small"

    invoke-virtual {v5, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    sget-object v7, Ltwitter4j/MediaEntity$Size;->THUMB:Ljava/lang/Integer;

    new-instance v8, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;

    const-string v9, "thumb"

    invoke-virtual {v5, v9}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Ltwitter4j/internal/json/MediaEntityJSONImpl$Size;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 73
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v6

    invoke-static {p0, v6}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    const-string v6, "non_username_paths"

    invoke-virtual {v1, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v4

    .line 76
    .local v4, "nonUsernamePathsJSONArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v4}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 78
    iget-object v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-virtual {v4, v0}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "i":I
    .end local v3    # "medium":Ltwitter4j/internal/org/json/JSONObject;
    .end local v4    # "nonUsernamePathsJSONArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_1
    const-string v6, "med"

    invoke-virtual {v5, v6}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v3

    .restart local v3    # "medium":Ltwitter4j/internal/org/json/JSONObject;
    goto :goto_0

    .line 80
    .restart local v0    # "i":I
    .restart local v4    # "nonUsernamePathsJSONArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_2
    const-string v6, "max_media_per_upload"

    invoke-static {v6, v1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v6

    iput v6, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 81
    .end local v0    # "i":I
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .end local v3    # "medium":Ltwitter4j/internal/org/json/JSONObject;
    .end local v4    # "nonUsernamePathsJSONArray":Ltwitter4j/internal/org/json/JSONArray;
    .end local v5    # "sizes":Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-direct {v6, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p0, p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    instance-of v3, p1, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 147
    check-cast v0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;

    .line 149
    .local v0, "that":Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;
    iget v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    iget v4, v0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 150
    goto :goto_0

    .line 151
    :cond_3
    iget v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    iget v4, v0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 152
    :cond_4
    iget v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    iget v4, v0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 153
    :cond_5
    iget v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    iget v4, v0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 154
    :cond_6
    iget v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    iget v4, v0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    if-eq v3, v4, :cond_7

    move v1, v2

    goto :goto_0

    .line 155
    :cond_7
    iget-object v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 156
    goto :goto_0

    .line 157
    :cond_8
    iget-object v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    iget-object v4, v0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 158
    goto :goto_0

    .line 157
    :cond_9
    iget-object v3, v0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getCharactersReservedPerMedia()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    return v0
.end method

.method public getMaxMediaPerUpload()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    return v0
.end method

.method public getNonUsernamePaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoSizeLimit()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    return v0
.end method

.method public getPhotoSizes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    return-object v0
.end method

.method public getShortURLLength()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    return v0
.end method

.method public getShortURLLengthHttps()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 165
    iget v0, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    .line 166
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    add-int v0, v1, v3

    .line 167
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    add-int v0, v1, v3

    .line 168
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    add-int v0, v1, v3

    .line 169
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 170
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 171
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    add-int/2addr v1, v2

    .line 172
    return v1

    :cond_1
    move v1, v2

    .line 169
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TwitterAPIConfigurationJSONImpl{photoSizeLimit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizeLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shortURLLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shortURLLengthHttps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->shortURLLengthHttps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", charactersReservedPerMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->charactersReservedPerMedia:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photoSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->photoSizes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonUsernamePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxMediaPerUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->maxMediaPerUpload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/json/TwitterAPIConfigurationJSONImpl;->nonUsernamePaths:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
