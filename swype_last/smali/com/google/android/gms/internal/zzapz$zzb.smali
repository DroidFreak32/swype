.class public final Lcom/google/android/gms/internal/zzapz$zzb;
.super Lcom/google/android/gms/internal/zzapp;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapp",
        "<",
        "Lcom/google/android/gms/internal/zzapz$zzb;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public bjU:I

.field public bjV:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;-><init>()V

    .line 1000
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjU:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjx:Lcom/google/android/gms/internal/zzapr;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjG:I

    .line 0
    return-void
.end method

.method private aQ()Lcom/google/android/gms/internal/zzapz$zzb;
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->aA()Lcom/google/android/gms/internal/zzapp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapz$zzb;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final synthetic aA()Lcom/google/android/gms/internal/zzapp;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapz$zzb;

    return-object v0
.end method

.method public final synthetic aB()Lcom/google/android/gms/internal/zzapv;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapz$zzb;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapz$zzb;->aQ()Lcom/google/android/gms/internal/zzapz$zzb;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzapz$zzb;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzapz$zzb;

    iget v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjU:I

    iget v3, p1, Lcom/google/android/gms/internal/zzapz$zzb;->bjU:I

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    if-nez v2, :cond_1f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    if-eqz v2, :cond_2b

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    move v0, v1

    goto :goto_4

    :cond_2b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    if-nez v2, :cond_35

    iget-object v2, p1, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    if-eqz v2, :cond_41

    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    move v0, v1

    goto :goto_4

    :cond_41
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5b

    :cond_4d
    iget-object v2, p1, Lcom/google/android/gms/internal/zzapz$zzb;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzapz$zzb;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjx:Lcom/google/android/gms/internal/zzapr;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzapz$zzb;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapr;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjU:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    if-nez v0, :cond_34

    move v0, v1

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_23
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_32
    :goto_32
    add-int/2addr v0, v1

    return v0

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1b

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_23

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapr;->hashCode()I

    move-result v1

    goto :goto_32
.end method

.method public final zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjU:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjU:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzae(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    .line 3000
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v0

    .line 2000
    iput v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjU:I

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_15
        0x1a -> :sswitch_1c
    .end sparse-switch
.end method

.method protected final zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->zzx()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjU:I

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjU:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->bjV:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzb;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_36
    return v0
.end method
