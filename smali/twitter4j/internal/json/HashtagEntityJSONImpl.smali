.class Ltwitter4j/internal/json/HashtagEntityJSONImpl;
.super Ltwitter4j/internal/json/EntityIndex;
.source "HashtagEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/HashtagEntity;
.implements Ltwitter4j/SymbolEntity;


# static fields
.field private static final serialVersionUID:J = 0x3877f7012d9cd490L


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ltwitter4j/internal/json/EntityIndex;-><init>()V

    .line 52
    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ltwitter4j/internal/json/EntityIndex;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->setStart(I)V

    .line 45
    invoke-virtual {p0, p2}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->setEnd(I)V

    .line 46
    iput-object p3, p0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    .line 47
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
    .line 38
    invoke-direct {p0}, Ltwitter4j/internal/json/EntityIndex;-><init>()V

    .line 39
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 40
    return-void
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    const-string v2, "indices"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 57
    .local v0, "indicesArray":Ltwitter4j/internal/org/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->setStart(I)V

    .line 58
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->setEnd(I)V

    .line 60
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->text:Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    return-void

    .line 63
    .end local v0    # "indicesArray":Ltwitter4j/internal/org/json/JSONArray;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    if-ne p0, p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 97
    check-cast v0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;

    .line 99
    .local v0, "that":Ltwitter4j/internal/json/HashtagEntityJSONImpl;
    iget-object v3, p0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Ltwitter4j/internal/json/EntityIndex;->getEnd()I

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Ltwitter4j/internal/json/EntityIndex;->getStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HashtagEntityJSONImpl{text=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/internal/json/HashtagEntityJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
