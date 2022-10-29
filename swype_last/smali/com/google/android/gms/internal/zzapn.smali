.class public final Lcom/google/android/gms/internal/zzapn;
.super Ljava/lang/Object;


# instance fields
.field bjn:I

.field private bjo:I

.field private bjp:I

.field private bjq:I

.field private bjr:I

.field private bjs:I

.field private bjt:I

.field private bju:I

.field private bjv:I

.field final buffer:[B


# direct methods
.method constructor <init>([BI)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjs:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bju:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjv:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapn;->buffer:[B

    iput v1, p0, Lcom/google/android/gms/internal/zzapn;->bjn:I

    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    iput v1, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    return-void
.end method

.method private au()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjp:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjs:I

    if-le v0, v1, :cond_1a

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjs:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjp:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjp:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjp:I

    goto :goto_19
.end method

.method private ax()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aE()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapn;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private zzafu(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aF()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjs:I

    if-le v0, v1, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjs:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapn;->zzafu(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aE()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_28

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    return-void

    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aE()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final ah()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 1000
    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    iget v2, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    if-ne v1, v2, :cond_d

    const/4 v1, 0x1

    .line 0
    :goto_8
    if-eqz v1, :cond_f

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjr:I

    :goto_c
    return v0

    :cond_d
    move v1, v0

    .line 1000
    goto :goto_8

    .line 0
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjr:I

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjr:I

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aH()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_1e
    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjr:I

    goto :goto_c
.end method

.method public final an()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final aq()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    move-result v0

    if-ltz v0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    and-int/lit8 v0, v0, 0x7f

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    move-result v1

    if-ltz v1, :cond_13

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_6

    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    move-result v1

    if-ltz v1, :cond_22

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_6

    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    move-result v1

    if-ltz v1, :cond_31

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_6

    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    move-result v2

    if-gez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aG()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0
.end method

.method public final ar()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aG()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0
.end method

.method public final av()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjs:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjs:I

    sub-int v0, v1, v0

    goto :goto_8
.end method

.method public final getPosition()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjn:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v1

    if-gez v1, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aF()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_b
    if-nez v1, :cond_10

    sget-object v0, Lcom/google/android/gms/internal/zzapy;->bjO:[B

    :goto_f
    return-object v0

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    iget v2, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    sub-int/2addr v0, v2

    if-le v1, v0, :cond_1c

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aE()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_1c
    new-array v0, v1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapn;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    goto :goto_f
.end method

.method public final readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v0

    if-gez v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aF()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjo:I

    iget v2, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_17

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aE()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_17
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapn;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    sget-object v4, Lcom/google/android/gms/internal/zzapt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    return-object v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzapv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjt:I

    iget v2, p0, Lcom/google/android/gms/internal/zzapn;->bju:I

    if-lt v1, v2, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aK()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapn;->zzafr(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzapn;->bjt:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzapv;->zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzapn;->zzafo(I)V

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzapn;->bjt:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapn;->zzafs(I)V

    return-void
.end method

.method public final zzafo(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzapu;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjr:I

    if-eq v0, p1, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aI()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_9
    return-void
.end method

.method public final zzafp(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzapy;->zzagi(I)I

    move-result v1

    packed-switch v1, :pswitch_data_5a

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aJ()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    .line 2000
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapn;->aq()I

    .line 0
    :goto_10
    return v0

    .line 3000
    :pswitch_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    goto :goto_10

    .line 0
    :pswitch_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzapn;->zzafu(I)V

    goto :goto_10

    .line 4000
    :cond_32
    :pswitch_32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapn;->ah()I

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzapn;->zzafp(I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 0
    :cond_3e
    invoke-static {p1}, Lcom/google/android/gms/internal/zzapy;->zzagj(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapy;->zzaj(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzapn;->zzafo(I)V

    goto :goto_10

    :pswitch_4b
    const/4 v0, 0x0

    goto :goto_10

    .line 5000
    :pswitch_4d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->ax()B

    goto :goto_10

    .line 0
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_2a
        :pswitch_32
        :pswitch_4b
        :pswitch_4d
    .end packed-switch
.end method

.method public final zzafr(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzapu;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aF()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjs:I

    if-le v0, v1, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/zzapu;->aE()Lcom/google/android/gms/internal/zzapu;

    move-result-object v0

    throw v0

    :cond_13
    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjs:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->au()V

    return v1
.end method

.method public final zzafs(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzapn;->bjs:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapn;->au()V

    return-void
.end method

.method public final zzaft(I)V
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjn:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    iget v2, p0, Lcom/google/android/gms/internal/zzapn;->bjn:I

    sub-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is beyond current "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    if-gez p1, :cond_51

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    iget v0, p0, Lcom/google/android/gms/internal/zzapn;->bjn:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzapn;->bjq:I

    return-void
.end method
