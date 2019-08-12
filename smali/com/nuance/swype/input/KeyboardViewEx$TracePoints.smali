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
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    .line 324
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/Point;J)Z
    .locals 8
    .param p1, "pt"    # Landroid/graphics/Point;
    .param p2, "time"    # J

    .prologue
    .line 346
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 348
    .local v0, "lastTime":J
    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 350
    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "add(): out of order timestamp: "

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "<"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    const/4 v2, 0x0

    .line 356
    .end local v0    # "lastTime":J
    :goto_0
    return v2

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 361
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 362
    return-void
.end method

.method public get(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

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
    .line 373
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
    .line 377
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
    .line 331
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p2, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->clear()V

    .line 332
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List arguments must have same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->eventTimes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 339
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardViewEx$TracePoints;->path:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
