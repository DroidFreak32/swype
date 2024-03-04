.class Ltwitter4j/internal/json/UserMentionEntityJSONImpl;
.super Ltwitter4j/internal/json/EntityIndex;
.source "UserMentionEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/UserMentionEntity;


# static fields
.field private static final serialVersionUID:J = 0x5b5263422916aeb6L


# instance fields
.field private id:J

.field private name:Ljava/lang/String;

.field private screenName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ltwitter4j/internal/json/EntityIndex;-><init>()V

    .line 54
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "screenName"    # Ljava/lang/String;
    .param p5, "id"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ltwitter4j/internal/json/EntityIndex;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->setStart(I)V

    .line 45
    invoke-virtual {p0, p2}, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->setEnd(I)V

    .line 46
    iput-object p3, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    .line 48
    iput-wide p5, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->id:J

    .line 49
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
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 40
    return-void
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
    .line 58
    :try_start_0
    const-string v2, "indices"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    .line 59
    .local v0, "indicesArray":Ltwitter4j/internal/org/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->setStart(I)V

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->setEnd(I)V

    .line 62
    const-string v2, "name"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    const-string v2, "name"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    .line 65
    :cond_0
    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    .line 68
    :cond_1
    const-string v2, "id"

    invoke-static {v2, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->id:J
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 69
    .end local v0    # "indicesArray":Ltwitter4j/internal/org/json/JSONArray;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    if-ne p0, p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 125
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

    .line 127
    check-cast v0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;

    .line 129
    .local v0, "that":Ltwitter4j/internal/json/UserMentionEntityJSONImpl;
    iget-wide v4, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->id:J

    iget-wide v6, v0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->id:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 130
    :cond_4
    iget-object v3, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 131
    :cond_7
    iget-object v3, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Ltwitter4j/internal/json/EntityIndex;->getEnd()I

    move-result v0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Ltwitter4j/internal/json/EntityIndex;->getStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v2, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 139
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 140
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->id:J

    iget-wide v4, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 141
    return v1

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x27

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserMentionEntityJSONImpl{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
