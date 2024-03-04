.class public Ltwitter4j/internal/json/SimilarPlacesImpl;
.super Ltwitter4j/internal/json/ResponseListImpl;
.source "SimilarPlacesImpl.java"

# interfaces
.implements Ltwitter4j/SimilarPlaces;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltwitter4j/internal/json/ResponseListImpl",
        "<",
        "Ltwitter4j/Place;",
        ">;",
        "Ltwitter4j/SimilarPlaces;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6d9aa5641015e03bL


# instance fields
.field private final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/ResponseList;Ltwitter4j/internal/http/HttpResponse;Ljava/lang/String;)V
    .locals 1
    .param p2, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "places":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Place;>;"
    invoke-interface {p1}, Ltwitter4j/ResponseList;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 38
    invoke-virtual {p0, p1}, Ltwitter4j/internal/json/SimilarPlacesImpl;->addAll(Ljava/util/Collection;)Z

    .line 39
    iput-object p3, p0, Ltwitter4j/internal/json/SimilarPlacesImpl;->token:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static createSimilarPlaces(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/SimilarPlaces;
    .locals 6
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 55
    const-string v3, "result"

    invoke-virtual {v0, v3}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    .line 56
    .local v2, "result":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v3, Ltwitter4j/internal/json/SimilarPlacesImpl;

    const-string v4, "places"

    invoke-virtual {v2, v4}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v4

    invoke-static {v4, p0, p1}, Ltwitter4j/internal/json/PlaceJSONImpl;->createPlaceList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;

    move-result-object v4

    const-string v5, "token"

    invoke-virtual {v2, v5}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5}, Ltwitter4j/internal/json/SimilarPlacesImpl;-><init>(Ltwitter4j/ResponseList;Ltwitter4j/internal/http/HttpResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 58
    .end local v2    # "result":Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/internal/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public bridge synthetic getAccessLevel()I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/internal/json/ResponseListImpl;->getAccessLevel()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltwitter4j/internal/json/ResponseListImpl;->getRateLimitStatus()Ltwitter4j/RateLimitStatus;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ltwitter4j/internal/json/SimilarPlacesImpl;->token:Ljava/lang/String;

    return-object v0
.end method
