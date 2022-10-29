.class final Lcom/a/a/s;
.super Lcom/a/a/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/r",
        "<TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/a/r;-><init>(IB)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 0
    .line 1000
    iget-boolean v0, p0, Lcom/a/a/r;->d:Z

    .line 0
    if-nez v0, :cond_5b

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {p0}, Lcom/a/a/s;->c()I

    move-result v0

    if-ge v1, v0, :cond_2d

    invoke-virtual {p0, v1}, Lcom/a/a/s;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/g$a;

    invoke-interface {v0}, Lcom/a/a/g$a;->b()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_2d
    invoke-virtual {p0}, Lcom/a/a/s;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/g$a;

    invoke-interface {v1}, Lcom/a/a/g$a;->b()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_5b
    invoke-super {p0}, Lcom/a/a/r;->a()V

    return-void
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/a/a/g$a;

    invoke-super {p0, p1, p2}, Lcom/a/a/r;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
