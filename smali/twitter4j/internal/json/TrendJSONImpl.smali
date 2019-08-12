.class public final Ltwitter4j/internal/json/TrendJSONImpl;
.super Ljava/lang/Object;
.source "TrendJSONImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/Trend;


# static fields
.field private static final serialVersionUID:J = 0x1aba5f6b262a250aL


# instance fields
.field private name:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltwitter4j/internal/json/TrendJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;Z)V

    .line 47
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;Z)V
    .locals 1
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p2, "storeJSON"    # Z

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Ltwitter4j/internal/json/TrendJSONImpl;->url:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/internal/json/TrendJSONImpl;->query:Ljava/lang/String;

    .line 37
    const-string v0, "name"

    invoke-static {v0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/json/TrendJSONImpl;->name:Ljava/lang/String;

    .line 38
    const-string v0, "url"

    invoke-static {v0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/json/TrendJSONImpl;->url:Ljava/lang/String;

    .line 39
    const-string v0, "query"

    invoke-static {v0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/internal/json/TrendJSONImpl;->query:Ljava/lang/String;

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-static {p0, p1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    instance-of v3, p1, Ltwitter4j/Trend;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 86
    check-cast v0, Ltwitter4j/Trend;

    .line 88
    .local v0, "trend":Ltwitter4j/Trend;
    iget-object v3, p0, Ltwitter4j/internal/json/TrendJSONImpl;->name:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Trend;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 89
    :cond_3
    iget-object v3, p0, Ltwitter4j/internal/json/TrendJSONImpl;->query:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ltwitter4j/internal/json/TrendJSONImpl;->query:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Trend;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 90
    goto :goto_0

    .line 89
    :cond_5
    invoke-interface {v0}, Ltwitter4j/Trend;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 91
    :cond_6
    iget-object v3, p0, Ltwitter4j/internal/json/TrendJSONImpl;->url:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/internal/json/TrendJSONImpl;->url:Ljava/lang/String;

    invoke-interface {v0}, Ltwitter4j/Trend;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 92
    goto :goto_0

    .line 91
    :cond_7
    invoke-interface {v0}, Ltwitter4j/Trend;->getURL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ltwitter4j/internal/json/TrendJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ltwitter4j/internal/json/TrendJSONImpl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ltwitter4j/internal/json/TrendJSONImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Ltwitter4j/internal/json/TrendJSONImpl;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v1, p0, Ltwitter4j/internal/json/TrendJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 100
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/internal/json/TrendJSONImpl;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltwitter4j/internal/json/TrendJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 101
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/json/TrendJSONImpl;->query:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Ltwitter4j/internal/json/TrendJSONImpl;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v1, v2

    .line 102
    return v1

    :cond_1
    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrendJSONImpl{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/internal/json/TrendJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/TrendJSONImpl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/TrendJSONImpl;->query:Ljava/lang/String;

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
