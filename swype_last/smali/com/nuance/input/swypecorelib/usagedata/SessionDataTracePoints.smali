.class Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;
.super Ljava/lang/Object;
.source "SessionDataTracePoints.java"


# instance fields
.field private size:I

.field private xCoords:[F

.field private yCoords:[F


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->xCoords:[F

    .line 10
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->yCoords:[F

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->size:I

    .line 14
    return-void
.end method

.method private resize(I)V
    .registers 7
    .param p1, "newSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 29
    new-array v0, p1, [F

    .line 30
    .local v0, "tx":[F
    new-array v1, p1, [F

    .line 31
    .local v1, "ty":[F
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->xCoords:[F

    iget v3, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->size:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->yCoords:[F

    iget v3, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->size:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iput-object v0, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->xCoords:[F

    .line 34
    iput-object v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->yCoords:[F

    .line 35
    return-void
.end method


# virtual methods
.method add([F[F)V
    .registers 7
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .prologue
    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_30

    .line 18
    iget v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->size:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->xCoords:[F

    array-length v2, v2

    if-le v1, v2, :cond_15

    .line 19
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->xCoords:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->resize(I)V

    .line 21
    :cond_15
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->xCoords:[F

    iget v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->size:I

    aget v3, p1, v0

    aput v3, v1, v2

    .line 22
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->yCoords:[F

    iget v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->size:I

    aget v3, p2, v0

    aput v3, v1, v2

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    iget v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->size:I

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 26
    :cond_30
    return-void
.end method

.method getPoints()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v2, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->size:I

    if-ge v0, v2, :cond_1f

    .line 40
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->xCoords:[F

    aget v3, v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataTracePoints;->yCoords:[F

    aget v4, v4, v0

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 42
    :cond_1f
    return-object v1
.end method
