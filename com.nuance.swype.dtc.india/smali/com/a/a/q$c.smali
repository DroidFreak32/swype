.class final Lcom/a/a/q$c;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/q;

.field private b:Lcom/a/a/q$a;

.field private c:Lcom/a/a/m;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/a/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/q$c;->a:Lcom/a/a/q;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-direct {p0}, Lcom/a/a/q$c;->a()V

    return-void
.end method

.method private a([BII)I
    .locals 5

    move v1, p3

    move v0, p2

    :goto_0
    if-lez v1, :cond_2

    invoke-direct {p0}, Lcom/a/a/q$c;->b()V

    iget-object v2, p0, Lcom/a/a/q$c;->c:Lcom/a/a/m;

    if-nez v2, :cond_0

    if-ne v1, p3, :cond_2

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    iget v2, p0, Lcom/a/a/q$c;->d:I

    iget v3, p0, Lcom/a/a/q$c;->e:I

    sub-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/a/a/q$c;->c:Lcom/a/a/m;

    iget v4, p0, Lcom/a/a/q$c;->e:I

    invoke-virtual {v3, p1, v4, v0, v2}, Lcom/a/a/m;->a([BIII)V

    add-int/2addr v0, v2

    :cond_1
    iget v3, p0, Lcom/a/a/q$c;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/a/a/q$c;->e:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_2
    sub-int v0, p3, v1

    goto :goto_1
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/q$a;

    iget-object v1, p0, Lcom/a/a/q$c;->a:Lcom/a/a/q;

    invoke-direct {v0, v1, v2}, Lcom/a/a/q$a;-><init>(Lcom/a/a/c;B)V

    iput-object v0, p0, Lcom/a/a/q$c;->b:Lcom/a/a/q$a;

    iget-object v0, p0, Lcom/a/a/q$c;->b:Lcom/a/a/q$a;

    invoke-virtual {v0}, Lcom/a/a/q$a;->a()Lcom/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/q$c;->c:Lcom/a/a/m;

    iget-object v0, p0, Lcom/a/a/q$c;->c:Lcom/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/m;->b()I

    move-result v0

    iput v0, p0, Lcom/a/a/q$c;->d:I

    iput v2, p0, Lcom/a/a/q$c;->e:I

    iput v2, p0, Lcom/a/a/q$c;->f:I

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/q$c;->c:Lcom/a/a/m;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/q$c;->e:I

    iget v1, p0, Lcom/a/a/q$c;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/a/a/q$c;->f:I

    iget v1, p0, Lcom/a/a/q$c;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/q$c;->f:I

    iput v2, p0, Lcom/a/a/q$c;->e:I

    iget-object v0, p0, Lcom/a/a/q$c;->b:Lcom/a/a/q$a;

    invoke-virtual {v0}, Lcom/a/a/q$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/q$c;->b:Lcom/a/a/q$a;

    invoke-virtual {v0}, Lcom/a/a/q$a;->a()Lcom/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/q$c;->c:Lcom/a/a/m;

    iget-object v0, p0, Lcom/a/a/q$c;->c:Lcom/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/m;->b()I

    move-result v0

    iput v0, p0, Lcom/a/a/q$c;->d:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/q$c;->c:Lcom/a/a/m;

    iput v2, p0, Lcom/a/a/q$c;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/a/a/q$c;->f:I

    iget v1, p0, Lcom/a/a/q$c;->e:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/q$c;->a:Lcom/a/a/q;

    invoke-virtual {v1}, Lcom/a/a/q;->b()I

    move-result v1

    sub-int v0, v1, v0

    return v0
.end method

.method public final mark(I)V
    .locals 2

    iget v0, p0, Lcom/a/a/q$c;->f:I

    iget v1, p0, Lcom/a/a/q$c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/q$c;->g:I

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/q$c;->b()V

    iget-object v0, p0, Lcom/a/a/q$c;->c:Lcom/a/a/m;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/q$c;->c:Lcom/a/a/m;

    iget v1, p0, Lcom/a/a/q$c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/q$c;->e:I

    invoke-virtual {v0, v1}, Lcom/a/a/m;->b(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/q$c;->a([BII)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/a/a/q$c;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/a/a/q$c;->g:I

    invoke-direct {p0, v0, v1, v2}, Lcom/a/a/q$c;->a([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 5

    const-wide/32 v0, 0x7fffffff

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int v2, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/a/a/q$c;->a([BII)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
