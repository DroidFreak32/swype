.class final Lcom/a/a/r$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/r;

.field private b:I

.field private c:Z

.field private d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/a/a/r;)V
    .registers 3

    iput-object p1, p0, Lcom/a/a/r$c;->a:Lcom/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/r$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/r;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/a/r$c;-><init>(Lcom/a/a/r;)V

    return-void
.end method

.method private b()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/r$c;->d:Ljava/util/Iterator;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/a/a/r$c;->a:Lcom/a/a/r;

    invoke-static {v0}, Lcom/a/a/r;->c(Lcom/a/a/r;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/r$c;->d:Ljava/util/Iterator;

    :cond_14
    iget-object v0, p0, Lcom/a/a/r$c;->d:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/a/a/r$c;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/a/a/r$c;->a:Lcom/a/a/r;

    invoke-static {v1}, Lcom/a/a/r;->b(Lcom/a/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/a/a/r$c;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 0
    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/r$c;->c:Z

    iget v0, p0, Lcom/a/a/r$c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/r$c;->b:I

    iget-object v1, p0, Lcom/a/a/r$c;->a:Lcom/a/a/r;

    invoke-static {v1}, Lcom/a/a/r;->b(Lcom/a/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v0, p0, Lcom/a/a/r$c;->a:Lcom/a/a/r;

    invoke-static {v0}, Lcom/a/a/r;->b(Lcom/a/a/r;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/a/a/r$c;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_23
    return-object v0

    :cond_24
    invoke-direct {p0}, Lcom/a/a/r$c;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_23
.end method

.method public final remove()V
    .registers 4

    iget-boolean v0, p0, Lcom/a/a/r$c;->c:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/r$c;->c:Z

    iget-object v0, p0, Lcom/a/a/r$c;->a:Lcom/a/a/r;

    invoke-static {v0}, Lcom/a/a/r;->a(Lcom/a/a/r;)V

    iget v0, p0, Lcom/a/a/r$c;->b:I

    iget-object v1, p0, Lcom/a/a/r$c;->a:Lcom/a/a/r;

    invoke-static {v1}, Lcom/a/a/r;->b(Lcom/a/a/r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    iget-object v0, p0, Lcom/a/a/r$c;->a:Lcom/a/a/r;

    iget v1, p0, Lcom/a/a/r$c;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/a/a/r$c;->b:I

    invoke-static {v0, v1}, Lcom/a/a/r;->a(Lcom/a/a/r;I)Ljava/lang/Object;

    :goto_2e
    return-void

    :cond_2f
    invoke-direct {p0}, Lcom/a/a/r$c;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2e
.end method
