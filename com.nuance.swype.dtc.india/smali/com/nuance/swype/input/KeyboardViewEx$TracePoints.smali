.class public Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;
.super Ljava/lang/Object;
.source "KeyboardViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TracePoints"
.end annotation


# instance fields
.field private final eventTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initCapacity"    # I

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    .line 351
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/Point;J)Z
    .locals 8
    .param p1, "pt"    # Landroid/graphics/Point;
    .param p2, "time"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 373
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 375
    .local v0, "lastTime":J
    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 377
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "add(): out of order timestamp: "

    aput-object v6, v5, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const-string/jumbo v6, "<"

    aput-object v6, v5, v4

    const/4 v4, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v2, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v2, v3

    .line 383
    .end local v0    # "lastTime":J
    :goto_0
    return v2

    .line 381
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    .line 383
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    return-void
.end method

.method public get(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    return-object v0
.end method

.method public getEventTime(I)Ljava/lang/Long;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
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
    .line 404
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public reset(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->clear()V

    .line 359
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "List arguments must have same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 364
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
