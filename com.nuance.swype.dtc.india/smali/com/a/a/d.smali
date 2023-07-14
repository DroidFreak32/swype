.class public final Lcom/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field b:I

.field private c:I

.field d:I

.field private final e:Ljava/io/InputStream;

.field private f:I

.field private g:I

.field private h:I

.field i:I

.field j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/a/a/d;->h:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/a/a/d;->j:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/a/a/d;->k:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/a/d;->a:[B

    iput v1, p0, Lcom/a/a/d;->b:I

    iput v1, p0, Lcom/a/a/d;->d:I

    iput v1, p0, Lcom/a/a/d;->g:I

    iput-object p1, p0, Lcom/a/a/d;->e:Ljava/io/InputStream;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/a/a/d;->h:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/a/a/d;->j:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/a/a/d;->k:I

    iput-object p1, p0, Lcom/a/a/d;->a:[B

    add-int v0, p2, p3

    iput v0, p0, Lcom/a/a/d;->b:I

    iput p2, p0, Lcom/a/a/d;->d:I

    neg-int v0, p2

    iput v0, p0, Lcom/a/a/d;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/d;->e:Ljava/io/InputStream;

    return-void
.end method

.method public static a(ILjava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x7

    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-static {}, Lcom/a/a/j;->b()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_2
    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x7

    :cond_4
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-static {}, Lcom/a/a/j;->b()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_5
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_3

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/a/a/j;->d()Lcom/a/a/j;

    move-result-object v0

    throw v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/a/a/d;
    .locals 1

    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0, p0}, Lcom/a/a/d;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static a([BII)Lcom/a/a/d;
    .locals 2

    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/d;-><init>([BII)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/a/a/d;->d(I)I
    :try_end_0
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/a/a/d;->d:I

    iget v3, p0, Lcom/a/a/d;->b:I

    if-ge v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/a/d;->g:I

    iget v3, p0, Lcom/a/a/d;->b:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/a/a/d;->h:I

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/a/a/j;->b()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    iget v0, p0, Lcom/a/a/d;->g:I

    iget v3, p0, Lcom/a/a/d;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/a/a/d;->g:I

    iput v2, p0, Lcom/a/a/d;->d:I

    iget-object v0, p0, Lcom/a/a/d;->e:Ljava/io/InputStream;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/a/a/d;->b:I

    iget v0, p0, Lcom/a/a/d;->b:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/a/a/d;->b:I

    if-ge v0, v1, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/a/a/d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/a/a/d;->e:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/a/a/d;->a:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/a/a/d;->b:I

    if-ne v0, v1, :cond_7

    iput v2, p0, Lcom/a/a/d;->b:I

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/a/a/j;->b()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/a/a/d;->z()V

    iget v0, p0, Lcom/a/a/d;->g:I

    iget v1, p0, Lcom/a/a/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/d;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/d;->k:I

    if-gt v0, v1, :cond_8

    if-gez v0, :cond_9

    :cond_8
    invoke-static {}, Lcom/a/a/j;->i()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    if-gez p1, :cond_0

    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/a/d;->g:I

    iget v1, p0, Lcom/a/a/d;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/a/a/d;->h:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/a/a/d;->h:I

    iget v1, p0, Lcom/a/a/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/d;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/a/a/d;->g(I)V

    invoke-static {}, Lcom/a/a/j;->b()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/a/a/d;->b:I

    iget v1, p0, Lcom/a/a/d;->d:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/a/a/d;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/a/a/d;->d:I

    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/a/a/d;->b:I

    iget v1, p0, Lcom/a/a/d;->d:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/d;->b:I

    iput v1, p0, Lcom/a/a/d;->d:I

    invoke-direct {p0, v3}, Lcom/a/a/d;->a(Z)Z

    :goto_1
    sub-int v1, p1, v0

    iget v2, p0, Lcom/a/a/d;->b:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/a/a/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/d;->b:I

    iput v1, p0, Lcom/a/a/d;->d:I

    invoke-direct {p0, v3}, Lcom/a/a/d;->a(Z)Z

    goto :goto_1

    :cond_3
    sub-int v0, p1, v0

    iput v0, p0, Lcom/a/a/d;->d:I

    goto :goto_0
.end method

.method private y()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/a/a/d;->d:I

    iget v1, p0, Lcom/a/a/d;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/a/d;->a(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/a/a/d;->a:[B

    iget v1, p0, Lcom/a/a/d;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/d;->d:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private z()V
    .locals 2

    iget v0, p0, Lcom/a/a/d;->b:I

    iget v1, p0, Lcom/a/a/d;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/d;->b:I

    iget v0, p0, Lcom/a/a/d;->g:I

    iget v1, p0, Lcom/a/a/d;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/d;->h:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/a/a/d;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/d;->c:I

    iget v0, p0, Lcom/a/a/d;->b:I

    iget v1, p0, Lcom/a/a/d;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/d;->b:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/d;->c:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 1000
    iget v1, p0, Lcom/a/a/d;->d:I

    iget v2, p0, Lcom/a/a/d;->b:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/a/a/d;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 0
    :goto_0
    if-eqz v1, :cond_1

    iput v0, p0, Lcom/a/a/d;->f:I

    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 1000
    goto :goto_0

    .line 0
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/d;->s()I

    move-result v0

    iput v0, p0, Lcom/a/a/d;->f:I

    iget v0, p0, Lcom/a/a/d;->f:I

    invoke-static {v0}, Lcom/a/a/x;->b(I)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/a/a/j;->e()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_2
    iget v0, p0, Lcom/a/a/d;->f:I

    goto :goto_1
.end method

.method public final a(Lcom/a/a/p;Lcom/a/a/f;)Lcom/a/a/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/a/a/n;",
            ">(",
            "Lcom/a/a/p",
            "<TT;>;",
            "Lcom/a/a/f;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/d;->s()I

    move-result v0

    iget v1, p0, Lcom/a/a/d;->i:I

    iget v2, p0, Lcom/a/a/d;->j:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/a/a/j;->h()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/a/a/d;->d(I)I

    move-result v1

    iget v0, p0, Lcom/a/a/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/d;->i:I

    invoke-interface {p1, p0, p2}, Lcom/a/a/p;->parsePartialFrom(Lcom/a/a/d;Lcom/a/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/n;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/a/a/d;->a(I)V

    iget v2, p0, Lcom/a/a/d;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/a/a/d;->i:I

    invoke-virtual {p0, v1}, Lcom/a/a/d;->e(I)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    iget v0, p0, Lcom/a/a/d;->f:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/a/a/j;->f()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 0
    invoke-static {p1}, Lcom/a/a/x;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/a/a/j;->g()Lcom/a/a/j;

    move-result-object v0

    throw v0

    .line 2000
    :pswitch_0
    invoke-virtual {p0}, Lcom/a/a/d;->s()I

    .line 0
    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/a/a/d;->v()J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/a/a/d;->s()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/a/a/d;->g(I)V

    goto :goto_0

    .line 3000
    :cond_0
    :pswitch_3
    invoke-virtual {p0}, Lcom/a/a/d;->a()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/a/a/d;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 0
    :cond_1
    invoke-static {p1}, Lcom/a/a/x;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/a/a/x;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/a/a/d;->a(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/a/a/d;->u()I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final d(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/a/j;
        }
    .end annotation

    if-gez p1, :cond_0

    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/a/d;->g:I

    iget v1, p0, Lcom/a/a/d;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/a/a/d;->h:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/a/a/j;->b()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/a/a/d;->h:I

    invoke-direct {p0}, Lcom/a/a/d;->z()V

    return v1
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/d;->h:I

    invoke-direct {p0}, Lcom/a/a/d;->z()V

    return-void
.end method

.method public final f(I)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x1000

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/a/d;->g:I

    iget v2, p0, Lcom/a/a/d;->d:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/a/a/d;->h:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/a/a/d;->h:I

    iget v1, p0, Lcom/a/a/d;->g:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/d;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/a/a/d;->g(I)V

    invoke-static {}, Lcom/a/a/j;->b()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/a/a/d;->b:I

    iget v2, p0, Lcom/a/a/d;->d:I

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_2

    new-array v0, p1, [B

    iget-object v2, p0, Lcom/a/a/d;->a:[B

    iget v3, p0, Lcom/a/a/d;->d:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/a/a/d;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/a/a/d;->d:I

    :goto_0
    return-object v0

    :cond_2
    if-ge p1, v10, :cond_4

    new-array v2, p1, [B

    iget v0, p0, Lcom/a/a/d;->b:I

    iget v3, p0, Lcom/a/a/d;->d:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/a/a/d;->a:[B

    iget v4, p0, Lcom/a/a/d;->d:I

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/a/a/d;->b:I

    iput v3, p0, Lcom/a/a/d;->d:I

    invoke-direct {p0, v5}, Lcom/a/a/d;->a(Z)Z

    :goto_1
    sub-int v3, p1, v0

    iget v4, p0, Lcom/a/a/d;->b:I

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/a/a/d;->a:[B

    iget v4, p0, Lcom/a/a/d;->b:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/a/a/d;->b:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/a/a/d;->b:I

    iput v3, p0, Lcom/a/a/d;->d:I

    invoke-direct {p0, v5}, Lcom/a/a/d;->a(Z)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/a/a/d;->a:[B

    sub-int v4, p1, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v0, p1, v0

    iput v0, p0, Lcom/a/a/d;->d:I

    move-object v0, v2

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/a/a/d;->d:I

    iget v6, p0, Lcom/a/a/d;->b:I

    iget v0, p0, Lcom/a/a/d;->g:I

    iget v2, p0, Lcom/a/a/d;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/d;->g:I

    iput v1, p0, Lcom/a/a/d;->d:I

    iput v1, p0, Lcom/a/a/d;->b:I

    sub-int v0, v6, v5

    sub-int v0, p1, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    :goto_2
    if-lez v4, :cond_8

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v8, v0, [B

    move v0, v1

    :goto_3
    array-length v2, v8

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/a/a/d;->e:Ljava/io/InputStream;

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/a/a/j;->b()Lcom/a/a/j;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v2, p0, Lcom/a/a/d;->e:Ljava/io/InputStream;

    array-length v9, v8

    sub-int/2addr v9, v0

    invoke-virtual {v2, v8, v0, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_4

    :cond_6
    iget v9, p0, Lcom/a/a/d;->g:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/a/a/d;->g:I

    add-int/2addr v0, v2

    goto :goto_3

    :cond_7
    array-length v0, v8

    sub-int v0, v4, v0

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v0

    goto :goto_2

    :cond_8
    new-array v3, p1, [B

    sub-int v0, v6, v5

    iget-object v2, p0, Lcom/a/a/d;->a:[B

    invoke-static {v2, v5, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v1, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_5

    :cond_9
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public final l()Lcom/a/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/d;->s()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/a/a/c;->a:Lcom/a/a/c;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/a/a/d;->b:I

    iget v2, p0, Lcom/a/a/d;->d:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/a/a/d;->a:[B

    iget v2, p0, Lcom/a/a/d;->d:I

    invoke-static {v0, v2, v1}, Lcom/a/a/c;->a([BII)Lcom/a/a/c;

    move-result-object v0

    iget v2, p0, Lcom/a/a/d;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/d;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/a/a/d;->f(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/c;->a([B)Lcom/a/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method public final m()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/d;->s()I

    move-result v0

    return v0
.end method

.method public final q()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/a/a/d;->s()I

    move-result v0

    .line 4000
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    .line 0
    return v0
.end method

.method public final r()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/a/a/d;->t()J

    move-result-wide v0

    .line 5000
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    neg-long v0, v0

    xor-long/2addr v0, v2

    .line 0
    return-wide v0
.end method

.method public final s()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/a/a/j;->d()Lcom/a/a/j;

    move-result-object v0

    throw v0
.end method

.method public final t()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/a/a/j;->d()Lcom/a/a/j;

    move-result-object v0

    throw v0
.end method

.method public final u()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v0

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v1

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v2

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final v()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0xff

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v0

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v1

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v2

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v3

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v4

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v5

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v6

    invoke-direct {p0}, Lcom/a/a/d;->y()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final w()I
    .locals 2

    iget v0, p0, Lcom/a/a/d;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/a/a/d;->g:I

    iget v1, p0, Lcom/a/a/d;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/d;->h:I

    sub-int v0, v1, v0

    goto :goto_0
.end method
