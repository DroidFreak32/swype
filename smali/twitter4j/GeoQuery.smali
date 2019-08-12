.class public final Ltwitter4j/GeoQuery;
.super Ljava/lang/Object;
.source "GeoQuery.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xcdda7bca2db6d4aL


# instance fields
.field private accuracy:Ljava/lang/String;

.field private granularity:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private location:Ltwitter4j/GeoLocation;

.field private maxResults:I

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Ltwitter4j/GeoQuery;->query:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/GeoQuery;->maxResults:I

    .line 53
    iput-object p1, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ltwitter4j/GeoLocation;)V
    .locals 1
    .param p1, "location"    # Ltwitter4j/GeoLocation;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Ltwitter4j/GeoQuery;->query:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/GeoQuery;->maxResults:I

    .line 44
    iput-object p1, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    .line 45
    return-void
.end method

.method private appendParameter(Ljava/lang/String;DLjava/util/List;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method private appendParameter(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-lez p2, :cond_0

    .line 157
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    return-void
.end method

.method private appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 151
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public final accuracy(Ljava/lang/String;)Ltwitter4j/GeoQuery;
    .locals 0
    .param p1, "accuracy"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method final asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 6

    .prologue
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    iget-object v2, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_0

    .line 133
    const-string v2, "lat"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 134
    const-string v2, "long"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 137
    :cond_0
    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 138
    const-string v2, "ip"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 141
    :cond_1
    const-string v2, "accuracy"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 142
    const-string v2, "query"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->query:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 143
    const-string v2, "granularity"

    iget-object v3, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 144
    const-string v2, "max_results"

    iget v3, p0, Ltwitter4j/GeoQuery;->maxResults:I

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/GeoQuery;->appendParameter(Ljava/lang/String;ILjava/util/List;)V

    .line 145
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 146
    .local v0, "paramArray":[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltwitter4j/internal/http/HttpParameter;

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    if-ne p0, p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 168
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

    .line 170
    check-cast v0, Ltwitter4j/GeoQuery;

    .line 172
    .local v0, "geoQuery":Ltwitter4j/GeoQuery;
    iget v3, p0, Ltwitter4j/GeoQuery;->maxResults:I

    iget v4, v0, Ltwitter4j/GeoQuery;->maxResults:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 173
    :cond_4
    iget-object v3, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    .line 174
    goto :goto_0

    .line 173
    :cond_6
    iget-object v3, v0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 175
    :cond_7
    iget-object v3, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v1, v2

    .line 176
    goto :goto_0

    .line 175
    :cond_9
    iget-object v3, v0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 177
    :cond_a
    iget-object v3, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 178
    goto :goto_0

    .line 177
    :cond_c
    iget-object v3, v0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 179
    :cond_d
    iget-object v3, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    iget-object v4, v0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3, v4}, Ltwitter4j/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 180
    goto :goto_0

    .line 179
    :cond_e
    iget-object v3, v0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final getAccuracy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    return-object v0
.end method

.method public final getGranularity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public final getMaxResults()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Ltwitter4j/GeoQuery;->maxResults:I

    return v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltwitter4j/GeoQuery;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final granularity(Ljava/lang/String;)Ltwitter4j/GeoQuery;
    .locals 0
    .param p1, "granularity"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v2, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v0

    .line 188
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 189
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 190
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 191
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/GeoQuery;->maxResults:I

    add-int/2addr v1, v2

    .line 192
    return v1

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 187
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 188
    goto :goto_1

    :cond_3
    move v2, v1

    .line 189
    goto :goto_2
.end method

.method public final maxResults(I)Ltwitter4j/GeoQuery;
    .locals 0
    .param p1, "maxResults"    # I

    .prologue
    .line 126
    iput p1, p0, Ltwitter4j/GeoQuery;->maxResults:I

    .line 127
    return-object p0
.end method

.method public final setAccuracy(Ljava/lang/String;)V
    .locals 0
    .param p1, "accuracy"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public final setGranularity(Ljava/lang/String;)V
    .locals 0
    .param p1, "granularity"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final setMaxResults(I)V
    .locals 0
    .param p1, "maxResults"    # I

    .prologue
    .line 122
    iput p1, p0, Ltwitter4j/GeoQuery;->maxResults:I

    .line 123
    return-void
.end method

.method public final setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Ltwitter4j/GeoQuery;->query:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeoQuery{location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/GeoQuery;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accuracy=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->accuracy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", granularity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/GeoQuery;->granularity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/GeoQuery;->maxResults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
