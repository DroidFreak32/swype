.class public final Lcom/google/android/gms/internal/zzapz$zzc;
.super Lcom/google/android/gms/internal/zzapp;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapp",
        "<",
        "Lcom/google/android/gms/internal/zzapz$zzc;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public bjW:[B

.field public bjX:Ljava/lang/String;

.field public bjY:[[B

.field public bjZ:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;-><init>()V

    .line 1000
    sget-object v0, Lcom/google/android/gms/internal/zzapy;->bjO:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjW:[B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzapy;->bjN:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjZ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjx:Lcom/google/android/gms/internal/zzapr;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjG:I

    .line 0
    return-void
.end method

.method private aS()Lcom/google/android/gms/internal/zzapz$zzc;
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->aA()Lcom/google/android/gms/internal/zzapp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapz$zzc;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    array-length v1, v1

    if-lez v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    invoke-virtual {v1}, [[B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    :cond_19
    return-object v0

    :catch_1a
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapz$zzc;

    return-object v0
.end method

.method public final synthetic aB()Lcom/google/android/gms/internal/zzapv;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapz$zzc;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapz$zzc;->aS()Lcom/google/android/gms/internal/zzapz$zzc;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzapz$zzc;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzapz$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjW:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapz$zzc;->bjW:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_4

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    if-nez v2, :cond_23

    iget-object v2, p1, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    if-eqz v2, :cond_2f

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    move v0, v1

    goto :goto_4

    :cond_2f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapt;->zza([[B[[B)Z

    move-result v2

    if-nez v2, :cond_3b

    move v0, v1

    goto :goto_4

    :cond_3b
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjZ:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzapz$zzc;->bjZ:Z

    if-eq v2, v3, :cond_43

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5d

    :cond_4f
    iget-object v2, p1, Lcom/google/android/gms/internal/zzapz$zzc;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzapz$zzc;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjx:Lcom/google/android/gms/internal/zzapr;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzapz$zzc;->bjx:Lcom/google/android/gms/internal/zzapr;

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

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjW:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    if-nez v0, :cond_42

    move v0, v1

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    invoke-static {v2}, Lcom/google/android/gms/internal/zzapt;->zzb([[B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjZ:Z

    if-eqz v0, :cond_49

    const/16 v0, 0x4cf

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    :cond_40
    :goto_40
    add-int/2addr v0, v1

    return v0

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1f

    :cond_49
    const/16 v0, 0x4d5

    goto :goto_31

    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzapr;->hashCode()I

    move-result v1

    goto :goto_40
.end method

.method public final zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjW:[B

    sget-object v1, Lcom/google/android/gms/internal/zzapy;->bjO:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjW:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zza(I[B)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    array-length v0, v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_29

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzapo;->zza(I[B)V

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjZ:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjZ:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzj(IZ)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_47
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 3000
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    move-result v0

    sparse-switch v0, :sswitch_data_58

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjW:[B

    goto :goto_1

    :sswitch_16
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzc(Lcom/google/android/gms/internal/zzapn;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    if-nez v0, :cond_3c

    move v0, v1

    :goto_21
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_2b

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    :goto_2b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_40

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    array-length v0, v0

    goto :goto_21

    :cond_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    goto :goto_1

    :sswitch_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->an()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjZ:Z

    goto :goto_1

    :sswitch_50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    goto :goto_1

    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_16
        0x18 -> :sswitch_49
        0x22 -> :sswitch_50
    .end sparse-switch
.end method

.method protected final zzx()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->zzx()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjW:[B

    sget-object v3, Lcom/google/android/gms/internal/zzapy;->bjO:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjW:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    array-length v2, v2

    if-lez v2, :cond_3b

    move v2, v1

    move v3, v1

    :goto_22
    iget-object v4, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_37

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjY:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_34

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzapo;->zzbg([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_37
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_3b
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjZ:Z

    if-eqz v1, :cond_47

    const/4 v1, 0x3

    .line 2000
    invoke-static {v1}, Lcom/google/android/gms/internal/zzapo;->zzaga(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 0
    add-int/2addr v0, v1

    :cond_47
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zzc;->bjX:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzapo;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5a
    return v0
.end method
