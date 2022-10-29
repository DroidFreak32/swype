.class final Lcom/a/a/q$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/a/a/q;

.field private final c:Lcom/a/a/q$a;

.field private d:Lcom/a/a/c$a;


# direct methods
.method private constructor <init>(Lcom/a/a/q;)V
    .registers 4

    iput-object p1, p0, Lcom/a/a/q$b;->b:Lcom/a/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/a/a/q$a;-><init>(Lcom/a/a/c;B)V

    iput-object v0, p0, Lcom/a/a/q$b;->c:Lcom/a/a/q$a;

    iget-object v0, p0, Lcom/a/a/q$b;->c:Lcom/a/a/q$a;

    invoke-virtual {v0}, Lcom/a/a/q$a;->a()Lcom/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/m;->a()Lcom/a/a/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/q$b;->d:Lcom/a/a/c$a;

    invoke-virtual {p1}, Lcom/a/a/q;->b()I

    move-result v0

    iput v0, p0, Lcom/a/a/q$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/q;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/a/q$b;-><init>(Lcom/a/a/q;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .registers 2

    iget-object v0, p0, Lcom/a/a/q$b;->d:Lcom/a/a/c$a;

    invoke-interface {v0}, Lcom/a/a/c$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/a/a/q$b;->c:Lcom/a/a/q$a;

    invoke-virtual {v0}, Lcom/a/a/q$a;->a()Lcom/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/m;->a()Lcom/a/a/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/q$b;->d:Lcom/a/a/c$a;

    :cond_14
    iget v0, p0, Lcom/a/a/q$b;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/q$b;->a:I

    iget-object v0, p0, Lcom/a/a/q$b;->d:Lcom/a/a/c$a;

    invoke-interface {v0}, Lcom/a/a/c$a;->a()B

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .registers 2

    iget v0, p0, Lcom/a/a/q$b;->a:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 0
    .line 1000
    invoke-virtual {p0}, Lcom/a/a/q$b;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
