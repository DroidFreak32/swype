.class public final Lcom/google/android/gms/internal/zzkm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkm$zza;,
        Lcom/google/android/gms/internal/zzkm$zzb;
    }
.end annotation


# instance fields
.field private final zzclr:[Ljava/lang/String;

.field public final zzcls:[D

.field public final zzclt:[D

.field public final zzclu:[I

.field public zzclv:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzkm$zzb;)V
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzkm$zzb;->zzcma:Ljava/util/List;

    .line 0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzkm$zzb;->zzclz:Ljava/util/List;

    .line 0
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkm;->zzclr:[Ljava/lang/String;

    .line 3000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzkm$zzb;->zzcma:Ljava/util/List;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkm;->zzm(Ljava/util/List;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkm;->zzcls:[D

    .line 4000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzkm$zzb;->zzcmb:Ljava/util/List;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkm;->zzm(Ljava/util/List;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkm;->zzclt:[D

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkm;->zzclu:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzkm;->zzclv:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/zzkm$zzb;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzkm;-><init>(Lcom/google/android/gms/internal/zzkm$zzb;)V

    return-void
.end method

.method private static zzm(Ljava/util/List;)[D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [D

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public final getBuckets()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzkm$zza;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm;->zzclr:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm;->zzclr:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkm;->zzclr:[Ljava/lang/String;

    aget-object v1, v1, v9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzkm;->zzclt:[D

    aget-wide v2, v2, v9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzkm;->zzcls:[D

    aget-wide v4, v4, v9

    iget-object v6, p0, Lcom/google/android/gms/internal/zzkm;->zzclu:[I

    aget v6, v6, v9

    int-to-double v6, v6

    iget v8, p0, Lcom/google/android/gms/internal/zzkm;->zzclv:I

    int-to-double v12, v8

    div-double/2addr v6, v12

    iget-object v8, p0, Lcom/google/android/gms/internal/zzkm;->zzclu:[I

    aget v8, v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzkm$zza;-><init>(Ljava/lang/String;DDDI)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    return-object v10
.end method
