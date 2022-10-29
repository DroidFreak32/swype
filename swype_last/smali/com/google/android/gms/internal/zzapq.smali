.class public final Lcom/google/android/gms/internal/zzapq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzapp",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final baj:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final bjy:Z

.field public final tag:I

.field protected final type:I


# direct methods
.method private zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzapo;)V
    .registers 7

    .prologue
    .line 0
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzapq;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzapo;->zzagb(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzapq;->type:I

    packed-switch v0, :pswitch_data_46

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzapq;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_28

    :catch_28
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_2f
    :try_start_2f
    check-cast p1, Lcom/google/android/gms/internal/zzapv;

    iget v0, p0, Lcom/google/android/gms/internal/zzapq;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapy;->zzagj(I)I

    move-result v0

    .line 2000
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzapv;->zza(Lcom/google/android/gms/internal/zzapo;)V

    .line 0
    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzai(II)V

    :goto_3e
    return-void

    :pswitch_3f
    check-cast p1, Lcom/google/android/gms/internal/zzapv;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzapo;->zzc(Lcom/google/android/gms/internal/zzapv;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_44} :catch_28

    goto :goto_3e

    nop

    :pswitch_data_46
    .packed-switch 0xa
        :pswitch_2f
        :pswitch_3f
    .end packed-switch
.end method

.method private zzcr(Ljava/lang/Object;)I
    .registers 6

    .prologue
    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/zzapq;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapy;->zzagj(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzapq;->type:I

    packed-switch v1, :pswitch_data_3e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p0, Lcom/google/android/gms/internal/zzapq;->type:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_29
    check-cast p1, Lcom/google/android/gms/internal/zzapv;

    .line 4000
    invoke-static {v0}, Lcom/google/android/gms/internal/zzapo;->zzaga(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 5000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapv;->aM()I

    move-result v1

    .line 4000
    add-int/2addr v0, v1

    .line 0
    :goto_36
    return v0

    :pswitch_37
    check-cast p1, Lcom/google/android/gms/internal/zzapv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzapo;->zzc(ILcom/google/android/gms/internal/zzapv;)I

    move-result v0

    goto :goto_36

    :pswitch_data_3e
    .packed-switch 0xa
        :pswitch_29
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzapq;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzapq;

    iget v2, p0, Lcom/google/android/gms/internal/zzapq;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/zzapq;->type:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapq;->baj:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapq;->baj:Ljava/lang/Class;

    if-ne v2, v3, :cond_25

    iget v2, p0, Lcom/google/android/gms/internal/zzapq;->tag:I

    iget v3, p1, Lcom/google/android/gms/internal/zzapq;->tag:I

    if-ne v2, v3, :cond_25

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzapq;->bjy:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzapq;->bjy:Z

    if-eq v2, v3, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzapq;->type:I

    add-int/lit16 v0, v0, 0x47b

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapq;->baj:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzapq;->tag:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapq;->bjy:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_19
    add-int/2addr v0, v1

    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19
.end method

.method final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzapo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapq;->bjy:Z

    if-eqz v0, :cond_17

    .line 1000
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_1a

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/internal/zzapq;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzapo;)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 0
    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzapq;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzapo;)V

    :cond_1a
    return-void
.end method

.method final zzcp(Ljava/lang/Object;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzapq;->bjy:Z

    if-eqz v1, :cond_1e

    .line 3000
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_22

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzapq;->zzcr(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 0
    :cond_1e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzapq;->zzcr(Ljava/lang/Object;)I

    move-result v0

    :cond_22
    return v0
.end method
