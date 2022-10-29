.class Lcom/a/a/r;
.super Ljava/util/AbstractMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/r$a;,
        Lcom/a/a/r$c;,
        Lcom/a/a/r$d;,
        Lcom/a/a/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/r",
            "<TK;TV;>.com/a/a/r$com/a/a/r$com/a/a/r$com/a/a/r$b;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:Z

.field private volatile e:Lcom/a/a/r$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/r",
            "<TK;TV;>.com/a/a/r$com/a/a/r$com/a/a/r$com/a/a/r$d;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Lcom/a/a/r;->a:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/a/r;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Comparable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 0
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_49

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/r$b;

    .line 3000
    iget-object v0, v0, Lcom/a/a/r$b;->b:Ljava/lang/Comparable;

    .line 0
    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1f

    add-int/lit8 v0, v1, 0x2

    neg-int v0, v0

    :goto_1e
    return v0

    :cond_1f
    if-nez v0, :cond_49

    move v0, v1

    goto :goto_1e

    :goto_23
    if-gt v3, v2, :cond_45

    add-int v0, v3, v2

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/r$b;

    .line 4000
    iget-object v0, v0, Lcom/a/a/r$b;->b:Ljava/lang/Comparable;

    .line 0
    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3d

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    goto :goto_23

    :cond_3d
    if-lez v0, :cond_43

    add-int/lit8 v0, v1, 0x1

    move v3, v0

    goto :goto_23

    :cond_43
    move v0, v1

    goto :goto_1e

    :cond_45
    add-int/lit8 v0, v3, 0x1

    neg-int v0, v0

    goto :goto_1e

    :cond_49
    move v3, v2

    move v2, v1

    goto :goto_23
.end method

.method static a(I)Lcom/a/a/r;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lcom/a/a/g$a",
            "<TFieldDescriptorType;>;>(I)",
            "Lcom/a/a/r",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/s;

    invoke-direct {v0, p0}, Lcom/a/a/s;-><init>(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/r;I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/a/r;->c(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/r;)V
    .registers 1

    invoke-direct {p0}, Lcom/a/a/r;->e()V

    return-void
.end method

.method static synthetic b(Lcom/a/a/r;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    return-object v0
.end method

.method private c(I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/r;->e()V

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/r$b;

    invoke-virtual {v0}, Lcom/a/a/r$b;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-direct {p0}, Lcom/a/a/r;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/r;->b:Ljava/util/List;

    new-instance v4, Lcom/a/a/r$b;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v4, p0, v0}, Lcom/a/a/r$b;-><init>(Lcom/a/a/r;Ljava/util/Map$Entry;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_36
    return-object v1
.end method

.method static synthetic c(Lcom/a/a/r;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    return-object v0
.end method

.method private e()V
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/r;->d:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_a
    return-void
.end method

.method private f()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/r;->e()V

    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    :cond_18
    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/a/a/r;->e()V

    invoke-direct {p0, p1}, Lcom/a/a/r;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_16

    iget-object v1, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/r$b;

    invoke-virtual {v0, p2}, Lcom/a/a/r$b;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    return-object v0

    .line 1000
    :cond_16
    invoke-direct {p0}, Lcom/a/a/r;->e()V

    iget-object v1, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/a/a/r;->b:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/a/a/r;->a:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/a/a/r;->b:Ljava/util/List;

    .line 0
    :cond_30
    add-int/lit8 v0, v0, 0x1

    neg-int v1, v0

    iget v0, p0, Lcom/a/a/r;->a:I

    if-lt v1, v0, :cond_40

    invoke-direct {p0}, Lcom/a/a/r;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_40
    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/a/a/r;->a:I

    if-ne v0, v2, :cond_63

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    iget v2, p0, Lcom/a/a/r;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/r$b;

    invoke-direct {p0}, Lcom/a/a/r;->f()Ljava/util/SortedMap;

    move-result-object v2

    .line 2000
    iget-object v3, v0, Lcom/a/a/r$b;->b:Ljava/lang/Comparable;

    .line 0
    invoke-virtual {v0}, Lcom/a/a/r$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    new-instance v2, Lcom/a/a/r$b;

    invoke-direct {v2, p0, p1, p2}, Lcom/a/a/r$b;-><init>(Lcom/a/a/r;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_15
.end method

.method public a()V
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/r;->d:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/r;->d:Z

    :cond_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_10
.end method

.method public final b(I)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    invoke-direct {p0}, Lcom/a/a/r;->e()V

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_10
    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1d
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/a/a/r;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final d()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/a/a/r$a;->a()Ljava/lang/Iterable;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_c
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/r;->e:Lcom/a/a/r$d;

    if-nez v0, :cond_c

    new-instance v0, Lcom/a/a/r$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/r$d;-><init>(Lcom/a/a/r;B)V

    iput-object v0, p0, Lcom/a/a/r;->e:Lcom/a/a/r$d;

    :cond_c
    iget-object v0, p0, Lcom/a/a/r;->e:Lcom/a/a/r$d;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/a/a/r;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_15

    iget-object v1, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/r$b;

    invoke-virtual {v0}, Lcom/a/a/r$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/r;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/r;->e()V

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/a/a/r;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_10

    invoke-direct {p0, v0}, Lcom/a/a/r;->c(I)Ljava/lang/Object;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_f

    :cond_1a
    iget-object v0, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/r;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
