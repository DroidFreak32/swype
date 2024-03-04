.class public final Ltwitter4j/StatusUpdate;
.super Ljava/lang/Object;
.source "StatusUpdate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x31e5caa537ab7fbcL


# instance fields
.field private displayCoordinates:Z

.field private inReplyToStatusId:J

.field private location:Ltwitter4j/GeoLocation;

.field private transient mediaBody:Ljava/io/InputStream;

.field private mediaFile:Ljava/io/File;

.field private mediaName:Ljava/lang/String;

.field private placeId:Ljava/lang/String;

.field private possiblySensitive:Z

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    .line 34
    iput-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 35
    iput-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 44
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

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
    .line 193
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method private appendParameter(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
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
    .line 187
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 188
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method final asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 6

    .prologue
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v2, "status"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 163
    const-wide/16 v2, -0x1

    iget-wide v4, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 164
    const-string v2, "in_reply_to_status_id"

    iget-wide v4, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    invoke-direct {p0, v2, v4, v5, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 166
    :cond_0
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_1

    .line 167
    const-string v2, "lat"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 168
    const-string v2, "long"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;DLjava/util/List;)V

    .line 171
    :cond_1
    const-string v2, "place_id"

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 172
    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-nez v2, :cond_2

    .line 173
    const-string v2, "display_coordinates"

    const-string v3, "false"

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/StatusUpdate;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 175
    :cond_2
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-eqz v2, :cond_4

    .line 176
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media[]"

    iget-object v4, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "possibly_sensitive"

    iget-boolean v4, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 183
    .local v0, "paramArray":[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltwitter4j/internal/http/HttpParameter;

    return-object v2

    .line 178
    .end local v0    # "paramArray":[Ltwitter4j/internal/http/HttpParameter;
    :cond_4
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v2, :cond_3

    .line 179
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "media[]"

    iget-object v4, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    iget-object v5, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-direct {v2, v3, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "possibly_sensitive"

    iget-boolean v4, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final displayCoordinates(Z)Ltwitter4j/StatusUpdate;
    .locals 0
    .param p1, "displayCoordinates"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 100
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    if-ne p0, p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 203
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

    .line 205
    check-cast v0, Ltwitter4j/StatusUpdate;

    .line 207
    .local v0, "that":Ltwitter4j/StatusUpdate;
    iget-boolean v3, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    iget-boolean v4, v0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 208
    :cond_4
    iget-wide v4, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v6, v0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 209
    :cond_5
    iget-boolean v3, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    iget-boolean v4, v0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 210
    :cond_6
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v3, v4}, Ltwitter4j/GeoLocation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-nez v3, :cond_7

    .line 211
    :cond_9
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v3, :cond_b

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-nez v3, :cond_a

    .line 212
    :cond_c
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    goto :goto_0

    :cond_e
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-nez v3, :cond_d

    .line 213
    :cond_f
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    goto :goto_0

    :cond_11
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 214
    :cond_12
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    goto/16 :goto_0

    :cond_14
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 215
    :cond_15
    iget-object v3, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto/16 :goto_0

    :cond_16
    iget-object v3, v0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    return-wide v0
.end method

.method public final getLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public final getPlaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 223
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    iget-wide v6, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v2, v4

    .line 224
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v2}, Ltwitter4j/GeoLocation;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v4, v2

    .line 225
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v4, v2

    .line 226
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 227
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v4, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    if-eqz v4, :cond_5

    :goto_4
    add-int v0, v2, v3

    .line 228
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 229
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 230
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v1, v2

    .line 231
    return v1

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 222
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 224
    goto :goto_1

    :cond_3
    move v2, v1

    .line 225
    goto :goto_2

    :cond_4
    move v2, v1

    .line 226
    goto :goto_3

    :cond_5
    move v3, v1

    .line 227
    goto :goto_4

    :cond_6
    move v2, v1

    .line 228
    goto :goto_5

    :cond_7
    move v2, v1

    .line 229
    goto :goto_6
.end method

.method public final inReplyToStatusId(J)Ltwitter4j/StatusUpdate;
    .locals 1
    .param p1, "inReplyToStatusId"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    .line 61
    return-object p0
.end method

.method public final isDisplayCoordinates()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    return v0
.end method

.method public final isPossiblySensitive()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    return v0
.end method

.method final isWithMedia()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final location(Ltwitter4j/GeoLocation;)Ltwitter4j/StatusUpdate;
    .locals 0
    .param p1, "location"    # Ltwitter4j/GeoLocation;

    .prologue
    .line 73
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 74
    return-object p0
.end method

.method public final media(Ljava/io/File;)Ltwitter4j/StatusUpdate;
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 114
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    .line 115
    return-object p0
.end method

.method public final media(Ljava/lang/String;Ljava/io/InputStream;)Ltwitter4j/StatusUpdate;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/io/InputStream;

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 135
    return-object p0
.end method

.method public final placeId(Ljava/lang/String;)Ltwitter4j/StatusUpdate;
    .locals 0
    .param p1, "placeId"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public final possiblySensitive(Z)Ltwitter4j/StatusUpdate;
    .locals 0
    .param p1, "possiblySensitive"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    .line 150
    return-object p0
.end method

.method public final setDisplayCoordinates(Z)V
    .locals 0
    .param p1, "displayCoordinates"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    .line 96
    return-void
.end method

.method public final setInReplyToStatusId(J)V
    .locals 1
    .param p1, "inReplyToStatusId"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    .line 57
    return-void
.end method

.method public final setLocation(Ltwitter4j/GeoLocation;)V
    .locals 0
    .param p1, "location"    # Ltwitter4j/GeoLocation;

    .prologue
    .line 69
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    .line 70
    return-void
.end method

.method public final setMedia(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 107
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    .line 108
    return-void
.end method

.method public final setMedia(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/io/InputStream;

    .prologue
    .line 122
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    .line 124
    return-void
.end method

.method public final setPlaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "placeId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public final setPossiblySensitive(Z)V
    .locals 0
    .param p1, "possiblySensitive"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    .line 143
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusUpdate{status=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inReplyToStatusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusUpdate;->inReplyToStatusId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->location:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->placeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayCoordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->displayCoordinates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", possiblySensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/StatusUpdate;->possiblySensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaBody:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/StatusUpdate;->mediaFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
