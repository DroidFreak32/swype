.class final Lcom/a/a/r$d;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/r;


# direct methods
.method private constructor <init>(Lcom/a/a/r;)V
    .registers 2

    iput-object p1, p0, Lcom/a/a/r$d;->a:Lcom/a/a/r;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/r;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/a/r$d;-><init>(Lcom/a/a/r;)V

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1000
    invoke-virtual {p0, p1}, Lcom/a/a/r$d;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/a/a/r$d;->a:Lcom/a/a/r;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/a/a/r;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    .line 0
    goto :goto_18
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/a/a/r$d;->a:Lcom/a/a/r;

    invoke-virtual {v0}, Lcom/a/a/r;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/a/a/r$d;->a:Lcom/a/a/r;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/r;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/r$c;

    iget-object v1, p0, Lcom/a/a/r$d;->a:Lcom/a/a/r;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/a/a/r$c;-><init>(Lcom/a/a/r;B)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/a/a/r$d;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/a/a/r$d;->a:Lcom/a/a/r;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/r;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/a/a/r$d;->a:Lcom/a/a/r;

    invoke-virtual {v0}, Lcom/a/a/r;->size()I

    move-result v0

    return v0
.end method
