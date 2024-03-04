.class public final Ltwitter4j/Query;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final KILOMETERS:Ljava/lang/String; = "km"

.field public static final MILES:Ljava/lang/String; = "mi"

.field public static final MIXED:Ljava/lang/String; = "mixed"

.field public static final POPULAR:Ljava/lang/String; = "popular"

.field public static final RECENT:Ljava/lang/String; = "recent"

.field private static WITH_TWITTER_USER_ID:Ltwitter4j/internal/http/HttpParameter; = null

.field private static final serialVersionUID:J = -0x7086ea5335d69f40L


# instance fields
.field private count:I

.field private geocode:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private maxId:J

.field private nextPageQuery:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private resultType:Ljava/lang/String;

.field private since:Ljava/lang/String;

.field private sinceId:J

.field private until:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 395
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    const-string v1, "with_twitter_user_id"

    const-string v2, "true"

    invoke-direct {v0, v1, v2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/Query;->WITH_TWITTER_USER_ID:Ltwitter4j/internal/http/HttpParameter;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 37
    iput-wide v2, p0, Ltwitter4j/Query;->maxId:J

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/Query;->count:I

    .line 39
    iput-object v1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 40
    iput-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    .line 41
    iput-object v1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 37
    iput-wide v2, p0, Ltwitter4j/Query;->maxId:J

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/Query;->count:I

    .line 39
    iput-object v1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 40
    iput-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    .line 41
    iput-object v1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 52
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
    .line 421
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    .line 422
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
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
    .line 415
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p2, :cond_0

    .line 416
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_0
    return-void
.end method

.method private static createWithNextPageQuery(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 1
    .param p0, "nextPageQuery"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ltwitter4j/Query;

    invoke-direct {v0}, Ltwitter4j/Query;-><init>()V

    .line 59
    .local v0, "query":Ltwitter4j/Query;
    iput-object p0, v0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    .line 60
    return-object v0
.end method


# virtual methods
.method final asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;
    .locals 6

    .prologue
    .line 398
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v2, "q"

    iget-object v3, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 400
    const-string v2, "lang"

    iget-object v3, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 401
    const-string v2, "locale"

    iget-object v3, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 402
    const-string v2, "max_id"

    iget-wide v4, p0, Ltwitter4j/Query;->maxId:J

    invoke-direct {p0, v2, v4, v5, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 403
    const-string v2, "count"

    iget v3, p0, Ltwitter4j/Query;->count:I

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 404
    const-string v2, "since"

    iget-object v3, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 405
    const-string v2, "since_id"

    iget-wide v4, p0, Ltwitter4j/Query;->sinceId:J

    invoke-direct {p0, v2, v4, v5, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 406
    const-string v2, "geocode"

    iget-object v3, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 407
    const-string v2, "until"

    iget-object v3, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 408
    const-string v2, "result_type"

    iget-object v3, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Ltwitter4j/Query;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 409
    sget-object v2, Ltwitter4j/Query;->WITH_TWITTER_USER_ID:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    .line 411
    .local v0, "paramArray":[Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltwitter4j/internal/http/HttpParameter;

    return-object v2
.end method

.method public final count(I)Ltwitter4j/Query;
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 217
    iput p1, p0, Ltwitter4j/Query;->count:I

    .line 218
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    if-ne p0, p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v1

    .line 433
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

    .line 435
    check-cast v0, Ltwitter4j/Query;

    .line 437
    .local v0, "query1":Ltwitter4j/Query;
    iget-wide v4, p0, Ltwitter4j/Query;->maxId:J

    iget-wide v6, v0, Ltwitter4j/Query;->maxId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 438
    :cond_4
    iget v3, p0, Ltwitter4j/Query;->count:I

    iget v4, v0, Ltwitter4j/Query;->count:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 439
    :cond_5
    iget-wide v4, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v6, v0, Ltwitter4j/Query;->sinceId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 440
    :cond_6
    iget-object v3, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 441
    :cond_9
    iget-object v3, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 442
    :cond_c
    iget-object v3, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    goto :goto_0

    :cond_e
    iget-object v3, v0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 443
    :cond_f
    iget-object v3, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    .line 444
    goto :goto_0

    .line 443
    :cond_11
    iget-object v3, v0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 445
    :cond_12
    iget-object v3, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-object v3, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    goto/16 :goto_0

    :cond_14
    iget-object v3, v0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-nez v3, :cond_13

    .line 446
    :cond_15
    iget-object v3, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_16
    move v1, v2

    goto/16 :goto_0

    :cond_17
    iget-object v3, v0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 447
    :cond_18
    iget-object v3, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_19
    move v1, v2

    goto/16 :goto_0

    :cond_1a
    iget-object v3, v0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-nez v3, :cond_19

    .line 448
    :cond_1b
    iget-object v3, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto/16 :goto_0

    :cond_1c
    iget-object v3, v0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public final geoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .param p1, "location"    # Ltwitter4j/GeoLocation;
    .param p2, "radius"    # D
    .param p4, "unit"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-virtual {p0, p1, p2, p3, p4}, Ltwitter4j/Query;->setGeoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)V

    .line 319
    return-object p0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Ltwitter4j/Query;->count:I

    return v0
.end method

.method public final getGeocode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    return-object v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxId()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Ltwitter4j/Query;->maxId:J

    return-wide v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    return-object v0
.end method

.method public final getSinceId()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Ltwitter4j/Query;->sinceId:J

    return-wide v0
.end method

.method public final getUntil()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v1, 0x0

    .line 455
    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 456
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 457
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 458
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Ltwitter4j/Query;->maxId:J

    iget-wide v6, p0, Ltwitter4j/Query;->maxId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v2, v3

    .line 459
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Ltwitter4j/Query;->count:I

    add-int v0, v2, v3

    .line 460
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 461
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Ltwitter4j/Query;->sinceId:J

    iget-wide v6, p0, Ltwitter4j/Query;->sinceId:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v0, v2, v3

    .line 462
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 463
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 464
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 465
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v1, v2

    .line 466
    return v1

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 455
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 456
    goto :goto_1

    :cond_3
    move v2, v1

    .line 457
    goto :goto_2

    :cond_4
    move v2, v1

    .line 460
    goto :goto_3

    :cond_5
    move v2, v1

    .line 462
    goto :goto_4

    :cond_6
    move v2, v1

    .line 463
    goto :goto_5

    :cond_7
    move v2, v1

    .line 464
    goto :goto_6
.end method

.method public final lang(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public final locale(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public final maxId(J)Ltwitter4j/Query;
    .locals 1
    .param p1, "maxId"    # J

    .prologue
    .line 187
    iput-wide p1, p0, Ltwitter4j/Query;->maxId:J

    .line 188
    return-object p0
.end method

.method final nextPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    return-object v0
.end method

.method public final query(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public final resultType(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .param p1, "resultType"    # Ljava/lang/String;

    .prologue
    .line 391
    iput-object p1, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    .line 392
    return-object p0
.end method

.method public final setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 206
    iput p1, p0, Ltwitter4j/Query;->count:I

    .line 207
    return-void
.end method

.method public final setGeoCode(Ltwitter4j/GeoLocation;DLjava/lang/String;)V
    .locals 4
    .param p1, "location"    # Ltwitter4j/GeoLocation;
    .param p2, "radius"    # D
    .param p4, "unit"    # Ljava/lang/String;

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public final setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final setMaxId(J)V
    .locals 1
    .param p1, "maxId"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Ltwitter4j/Query;->maxId:J

    .line 177
    return-void
.end method

.method public final setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public final setResultType(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultType"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public final setSince(Ljava/lang/String;)V
    .locals 0
    .param p1, "since"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public final setSinceId(J)V
    .locals 1
    .param p1, "sinceId"    # J

    .prologue
    .line 268
    iput-wide p1, p0, Ltwitter4j/Query;->sinceId:J

    .line 269
    return-void
.end method

.method public final setUntil(Ljava/lang/String;)V
    .locals 0
    .param p1, "until"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public final since(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .param p1, "since"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public final sinceId(J)Ltwitter4j/Query;
    .locals 1
    .param p1, "sinceId"    # J

    .prologue
    .line 279
    iput-wide p1, p0, Ltwitter4j/Query;->sinceId:J

    .line 280
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Query{query=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/Query;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/Query;->maxId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/Query;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", since=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->since:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/Query;->sinceId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", geocode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->geocode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", until=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->resultType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextPageQuery=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/Query;->nextPageQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final until(Ljava/lang/String;)Ltwitter4j/Query;
    .locals 0
    .param p1, "until"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Ltwitter4j/Query;->until:Ljava/lang/String;

    .line 351
    return-object p0
.end method
