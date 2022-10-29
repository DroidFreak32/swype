.class public final Lcom/google/android/gms/internal/zzapr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final bjz:Lcom/google/android/gms/internal/zzaps;


# instance fields
.field private bjA:Z

.field bjB:[I

.field bjC:[Lcom/google/android/gms/internal/zzaps;

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzaps;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaps;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapr;->bjz:Lcom/google/android/gms/internal/zzaps;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapr;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzapr;->bjA:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzapr;->idealIntArraySize(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaps;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iput v2, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    return-void
.end method

.method static idealIntArraySize(I)I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 0
    mul-int/lit8 v0, p0, 0x4

    .line 6000
    const/4 v1, 0x4

    :goto_4
    const/16 v2, 0x20

    if-ge v1, v2, :cond_12

    shl-int v2, v3, v1

    add-int/lit8 v2, v2, -0xc

    if-gt v0, v2, :cond_15

    shl-int v0, v3, v1

    add-int/lit8 v0, v0, -0xc

    .line 0
    :cond_12
    div-int/lit8 v0, v0, 0x4

    return v0

    .line 6000
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 8000
    iget v2, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    .line 7000
    new-instance v3, Lcom/google/android/gms/internal/zzapr;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzapr;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iget-object v4, v3, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    invoke-static {v1, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_10
    if-ge v1, v2, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v0, v0, v1

    if-eqz v0, :cond_26

    iget-object v4, v3, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaps;

    aput-object v0, v4, v1

    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_2a
    iput v2, v3, Lcom/google/android/gms/internal/zzapr;->mSize:I

    .line 0
    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzapr;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzapr;

    .line 2000
    iget v2, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    .line 3000
    iget v3, p1, Lcom/google/android/gms/internal/zzapr;->mSize:I

    .line 0
    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    iget-object v3, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    iget v5, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    move v2, v1

    .line 4000
    :goto_1c
    if-ge v2, v5, :cond_42

    aget v6, v3, v2

    aget v7, v4, v2

    if-eq v6, v7, :cond_3f

    move v2, v1

    .line 0
    :goto_25
    if-eqz v2, :cond_3d

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    iget v5, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    move v2, v1

    .line 5000
    :goto_2e
    if-ge v2, v5, :cond_47

    aget-object v6, v3, v2

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/zzaps;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    move v2, v1

    .line 0
    :goto_3b
    if-nez v2, :cond_4

    :cond_3d
    move v0, v1

    goto :goto_4

    .line 4000
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_42
    move v2, v0

    goto :goto_25

    .line 5000
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_47
    move v2, v0

    goto :goto_3b
.end method

.method public final hashCode()I
    .registers 4

    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    if-ge v0, v2, :cond_1c

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapr;->bjC:[Lcom/google/android/gms/internal/zzaps;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaps;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1c
    return v1
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 0
    .line 1000
    iget v0, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    .line 0
    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final zzagh(I)I
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzapr;->mSize:I

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    :goto_7
    if-gt v2, v1, :cond_1d

    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzapr;->bjB:[I

    aget v3, v3, v0

    if-ge v3, p1, :cond_17

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_7

    :cond_17
    if-le v3, p1, :cond_1f

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_7

    :cond_1d
    xor-int/lit8 v0, v2, -0x1

    :cond_1f
    return v0
.end method
