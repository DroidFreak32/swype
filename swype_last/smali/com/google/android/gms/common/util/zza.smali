.class public final Lcom/google/android/gms/common/util/zza;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final AV:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<TE;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/util/zza;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/util/zza;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/common/util/zza;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/util/zza",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/common/util/zza;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    iget-object v4, p1, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    .line 1429
    iget v5, v4, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 1430
    iget v1, v3, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    add-int/2addr v1, v5

    invoke-virtual {v3, v1}, Landroid/support/v4/util/SimpleArrayMap;->ensureCapacity(I)V

    .line 1431
    iget v1, v3, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v1, :cond_31

    .line 1432
    if-lez v5, :cond_29

    .line 1433
    iget-object v1, v4, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    iget-object v6, v3, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v0, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1434
    iget-object v1, v4, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v4, v3, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v6, v5, 0x1

    invoke-static {v1, v0, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1435
    iput v5, v3, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 0
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/gms/common/util/zza;->size()I

    move-result v1

    if-le v1, v2, :cond_30

    const/4 v0, 0x1

    :cond_30
    return v0

    :cond_31
    move v1, v0

    .line 1438
    :goto_32
    if-ge v1, v5, :cond_29

    .line 1439
    invoke-virtual {v4, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    add-int/lit8 v1, v1, 0x1

    goto :goto_32
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/common/util/zza;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/android/gms/common/util/zza;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/util/zza;->zza(Lcom/google/android/gms/common/util/zza;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_a
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/util/zza;->AV:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method
