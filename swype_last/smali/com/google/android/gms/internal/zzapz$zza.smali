.class public final Lcom/google/android/gms/internal/zzapz$zza;
.super Lcom/google/android/gms/internal/zzapp;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzapz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzapp",
        "<",
        "Lcom/google/android/gms/internal/zzapz$zza;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public bjP:[Ljava/lang/String;

.field public bjQ:[Ljava/lang/String;

.field public bjR:[I

.field public bjS:[J

.field public bjT:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapp;-><init>()V

    .line 1000
    sget-object v0, Lcom/google/android/gms/internal/zzapy;->bjM:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzapy;->bjM:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzapy;->bjH:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    sget-object v0, Lcom/google/android/gms/internal/zzapy;->bjI:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    sget-object v0, Lcom/google/android/gms/internal/zzapy;->bjI:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjG:I

    .line 0
    return-void
.end method

.method private aO()Lcom/google/android/gms/internal/zzapz$zza;
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->aA()Lcom/google/android/gms/internal/zzapp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapz$zza;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_66

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    array-length v1, v1

    if-lez v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    array-length v1, v1

    if-lez v1, :cond_52

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    :cond_52
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    array-length v1, v1

    if-lez v1, :cond_65

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    :cond_65
    return-object v0

    :catch_66
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapz$zza;

    return-object v0
.end method

.method public final synthetic aB()Lcom/google/android/gms/internal/zzapv;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapz$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapz$zza;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapz$zza;->aO()Lcom/google/android/gms/internal/zzapz$zza;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zzapz$zza;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzapz$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapt;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_4

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapt;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapt;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_31

    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapt;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapt;->equals([J[J)Z

    move-result v2

    if-nez v2, :cond_49

    move v0, v1

    goto :goto_4

    :cond_49
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_63

    :cond_55
    iget-object v2, p1, Lcom/google/android/gms/internal/zzapz$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzapz$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_63
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzapz$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapr;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapt;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapt;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapt;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapt;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapt;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    add-int/2addr v0, v1

    return v0

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjx:Lcom/google/android/gms/internal/zzapr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapr;->hashCode()I

    move-result v0

    goto :goto_4a
.end method

.method public final zza(Lcom/google/android/gms/internal/zzapo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1d

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1a

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_39

    move v0, v1

    :goto_27
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_36

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzapo;->zzr(ILjava/lang/String;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    array-length v0, v0

    if-lez v0, :cond_53

    move v0, v1

    :goto_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    array-length v2, v2

    if-ge v0, v2, :cond_53

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzae(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    array-length v0, v0

    if-lez v0, :cond_6d

    move v0, v1

    :goto_5d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    array-length v2, v2

    if-ge v0, v2, :cond_6d

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Lcom/google/android/gms/internal/zzapo;->zzb(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    array-length v0, v0

    if-lez v0, :cond_86

    :goto_76
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    array-length v0, v0

    if-ge v1, v0, :cond_86

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzapo;->zzb(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    :cond_86
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapo;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzapn;)Lcom/google/android/gms/internal/zzapv;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 4000
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    move-result v0

    sparse-switch v0, :sswitch_data_1d8

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzapp;->zza(Lcom/google/android/gms/internal/zzapn;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzc(Lcom/google/android/gms/internal/zzapn;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    if-nez v0, :cond_35

    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_39

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1a

    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    goto :goto_1

    :sswitch_42
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzc(Lcom/google/android/gms/internal/zzapn;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    if-nez v0, :cond_68

    move v0, v1

    :goto_4d
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_57

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_57
    :goto_57
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_4d

    :cond_6c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    goto :goto_1

    :sswitch_75
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzc(Lcom/google/android/gms/internal/zzapn;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    if-nez v0, :cond_9b

    move v0, v1

    :goto_80
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_8a

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8a
    :goto_8a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9f

    .line 5000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v3

    .line 4000
    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_9b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    array-length v0, v0

    goto :goto_80

    .line 6000
    :cond_9f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v3

    .line 4000
    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    goto/16 :goto_1

    :sswitch_a9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zzafr(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->getPosition()I

    move-result v2

    move v0, v1

    :goto_b6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->av()I

    move-result v4

    if-lez v4, :cond_c2

    .line 7000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->aq()I

    .line 4000
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_c2
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzapn;->zzaft(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    if-nez v2, :cond_e0

    move v2, v1

    :goto_ca
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_d4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d4
    :goto_d4
    array-length v4, v0

    if-ge v2, v4, :cond_e4

    .line 8000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v4

    .line 4000
    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d4

    :cond_e0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    array-length v2, v2

    goto :goto_ca

    :cond_e4
    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzapn;->zzafs(I)V

    goto/16 :goto_1

    :sswitch_eb
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzc(Lcom/google/android/gms/internal/zzapn;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    if-nez v0, :cond_111

    move v0, v1

    :goto_f6
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_100

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_100
    :goto_100
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_115

    .line 9000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    move-result-wide v4

    .line 4000
    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_100

    :cond_111
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    array-length v0, v0

    goto :goto_f6

    .line 10000
    :cond_115
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    move-result-wide v4

    .line 4000
    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    goto/16 :goto_1

    :sswitch_11f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zzafr(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->getPosition()I

    move-result v2

    move v0, v1

    :goto_12c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->av()I

    move-result v4

    if-lez v4, :cond_138

    .line 11000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    .line 4000
    add-int/lit8 v0, v0, 0x1

    goto :goto_12c

    :cond_138
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzapn;->zzaft(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    if-nez v2, :cond_156

    move v2, v1

    :goto_140
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_14a

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14a
    :goto_14a
    array-length v4, v0

    if-ge v2, v4, :cond_15a

    .line 12000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    move-result-wide v4

    .line 4000
    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14a

    :cond_156
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    array-length v2, v2

    goto :goto_140

    :cond_15a
    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzapn;->zzafs(I)V

    goto/16 :goto_1

    :sswitch_161
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapy;->zzc(Lcom/google/android/gms/internal/zzapn;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    if-nez v0, :cond_187

    move v0, v1

    :goto_16c
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-eqz v0, :cond_176

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_176
    :goto_176
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_18b

    .line 13000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    move-result-wide v4

    .line 4000
    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ah()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_176

    :cond_187
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    array-length v0, v0

    goto :goto_16c

    .line 14000
    :cond_18b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    move-result-wide v4

    .line 4000
    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    goto/16 :goto_1

    :sswitch_195
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->aq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzapn;->zzafr(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->getPosition()I

    move-result v2

    move v0, v1

    :goto_1a2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->av()I

    move-result v4

    if-lez v4, :cond_1ae

    .line 15000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    .line 4000
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a2

    :cond_1ae
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzapn;->zzaft(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    if-nez v2, :cond_1cc

    move v2, v1

    :goto_1b6
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-eqz v2, :cond_1c0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c0
    :goto_1c0
    array-length v4, v0

    if-ge v2, v4, :cond_1d0

    .line 16000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzapn;->ar()J

    move-result-wide v4

    .line 4000
    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c0

    :cond_1cc
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    array-length v2, v2

    goto :goto_1b6

    :cond_1d0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzapn;->zzafs(I)V

    goto/16 :goto_1

    nop

    :sswitch_data_1d8
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_42
        0x18 -> :sswitch_75
        0x1a -> :sswitch_a9
        0x20 -> :sswitch_eb
        0x22 -> :sswitch_11f
        0x28 -> :sswitch_161
        0x2a -> :sswitch_195
    .end sparse-switch
.end method

.method protected final zzx()I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzapp;->zzx()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b9

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_11
    iget-object v5, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_26

    iget-object v5, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjP:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_23

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzapo;->zztx(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_26
    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    :goto_2b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_50

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_37
    iget-object v5, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4c

    iget-object v5, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjQ:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_49

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzapo;->zztx(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_4c
    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    :cond_50
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    array-length v2, v2

    if-lez v2, :cond_73

    move v2, v1

    move v3, v1

    :goto_5b
    iget-object v4, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    array-length v4, v4

    if-ge v2, v4, :cond_6c

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzapo;->zzafx(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_6c
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjR:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_73
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    array-length v2, v2

    if-lez v2, :cond_96

    move v2, v1

    move v3, v1

    :goto_7e
    iget-object v4, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    array-length v4, v4

    if-ge v2, v4, :cond_8f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    aget-wide v4, v4, v2

    .line 2000
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzapo;->zzdc(J)I

    move-result v4

    .line 0
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_8f
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjS:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_96
    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    if-eqz v2, :cond_b8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    array-length v2, v2

    if-lez v2, :cond_b8

    move v2, v1

    :goto_a0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    array-length v3, v3

    if-ge v1, v3, :cond_b1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    aget-wide v4, v3, v1

    .line 3000
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzapo;->zzdc(J)I

    move-result v3

    .line 0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    :cond_b1
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapz$zza;->bjT:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_b8
    return v0

    :cond_b9
    move v0, v4

    goto/16 :goto_2b
.end method
