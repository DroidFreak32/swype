.class final Lcom/a/a/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/a/a/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/a/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/a/a/m;


# direct methods
.method private constructor <init>(Lcom/a/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/a/a/q$a;->a:Ljava/util/Stack;

    invoke-direct {p0, p1}, Lcom/a/a/q$a;->a(Lcom/a/a/c;)Lcom/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/q$a;->b:Lcom/a/a/m;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/q$a;-><init>(Lcom/a/a/c;)V

    return-void
.end method

.method private a(Lcom/a/a/c;)Lcom/a/a/m;
    .locals 2

    move-object v0, p1

    :goto_0
    instance-of v1, v0, Lcom/a/a/q;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/a/a/q;

    iget-object v1, p0, Lcom/a/a/q$a;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/a/a/q;->a(Lcom/a/a/q;)Lcom/a/a/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/a/a/m;

    return-object v0
.end method

.method private b()Lcom/a/a/m;
    .locals 2

    .prologue
    .line 0
    :cond_0
    iget-object v0, p0, Lcom/a/a/q$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/q$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/q;

    invoke-static {v0}, Lcom/a/a/q;->b(Lcom/a/a/q;)Lcom/a/a/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/a/q$a;->a(Lcom/a/a/c;)Lcom/a/a/m;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Lcom/a/a/c;->b()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 0
    :goto_1
    if-nez v1, :cond_0

    goto :goto_0

    .line 1000
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/a/a/m;
    .locals 2

    iget-object v0, p0, Lcom/a/a/q$a;->b:Lcom/a/a/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/q$a;->b:Lcom/a/a/m;

    invoke-direct {p0}, Lcom/a/a/q$a;->b()Lcom/a/a/m;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/q$a;->b:Lcom/a/a/m;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/q$a;->b:Lcom/a/a/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/q$a;->a()Lcom/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
