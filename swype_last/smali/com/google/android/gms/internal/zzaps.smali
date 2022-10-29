.class final Lcom/google/android/gms/internal/zzaps;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private bjD:Lcom/google/android/gms/internal/zzapq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzapq",
            "<**>;"
        }
    .end annotation
.end field

.field bjE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzapx;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    return-void
.end method

.method private aD()Lcom/google/android/gms/internal/zzaps;
    .registers 6

    const/4 v1, 0x0

    new-instance v3, Lcom/google/android/gms/internal/zzaps;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzaps;-><init>()V

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bjD:Lcom/google/android/gms/internal/zzapq;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzaps;->bjD:Lcom/google/android/gms/internal/zzapq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    if-nez v0, :cond_28

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    :goto_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzapv;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzapv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapv;

    iput-object v0, v3, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    :cond_27
    :goto_27
    return-object v3

    :cond_28
    iget-object v0, v3, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_2f} :catch_30

    goto :goto_11

    :catch_30
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    goto :goto_27

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [[B

    array-length v2, v0

    new-array v4, v2, [[B

    iput-object v4, v3, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    move v2, v1

    :goto_58
    array-length v1, v0

    if-ge v2, v1, :cond_27

    aget-object v1, v0, v2

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_58

    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    goto :goto_27

    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    goto :goto_27

    :cond_8b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    goto :goto_27

    :cond_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    goto/16 :goto_27

    :cond_ae
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    goto/16 :goto_27

    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/google/android/gms/internal/zzapv;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/gms/internal/zzapv;

    array-length v2, v0

    new-array v4, v2, [Lcom/google/android/gms/internal/zzapv;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    move v2, v1

    :goto_d0
    array-length v1, v0

    if-ge v2, v1, :cond_27

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapv;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzapv;

    aput-object v1, v4, v2
    :try_end_dd
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_37 .. :try_end_dd} :catch_30

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d0
.end method

.method private toByteArray()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaps;->zzx()I

    move-result v0

    new-array v0, v0, [B

    .line 3000
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzc$715daad5([BI)Lcom/google/android/gms/internal/zzapo;

    move-result-object v1

    .line 0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzaps;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaps;->aD()Lcom/google/android/gms/internal/zzaps;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v1, p1, Lcom/google/android/gms/internal/zzaps;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/zzaps;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    if-eqz v1, :cond_ae

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps;->bjD:Lcom/google/android/gms/internal/zzapq;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaps;->bjD:Lcom/google/android/gms/internal/zzapq;

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bjD:Lcom/google/android/gms/internal/zzapq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzapq;->baj:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_4

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_4

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_4

    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_4

    :cond_78
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [D

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto/16 :goto_4

    :cond_8c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto/16 :goto_4

    :cond_a0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_4

    :cond_ae
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    if-eqz v0, :cond_c0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_4

    :cond_c0
    :try_start_c0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaps;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzaps;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_cb} :catch_ce

    move-result v0

    goto/16 :goto_4

    :catch_ce
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final hashCode()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaps;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_b

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bjD:Lcom/google/android/gms/internal/zzapq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzapq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzapo;)V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapx;

    .line 2000
    iget v2, v0, Lcom/google/android/gms/internal/zzapx;->tag:I

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzapo;->zzagb(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzapx;->apf:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapo;->zzbh([B)V

    goto :goto_12
.end method

.method final zzx()I
    .registers 5

    .prologue
    .line 0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaps;->bjD:Lcom/google/android/gms/internal/zzapq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapq;->zzcp(Ljava/lang/Object;)I

    move-result v1

    :cond_d
    return v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaps;->bjE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapx;

    .line 1000
    iget v3, v0, Lcom/google/android/gms/internal/zzapx;->tag:I

    invoke-static {v3}, Lcom/google/android/gms/internal/zzapo;->zzagc(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzapx;->apf:[B

    array-length v0, v0

    add-int/2addr v0, v3

    .line 0
    add-int/2addr v0, v1

    move v1, v0

    goto :goto_15
.end method
