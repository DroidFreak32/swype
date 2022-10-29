.class final Lcom/google/android/gms/internal/zzii$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkx$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzii;->zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzkx$zza",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/ads/internal/formats/zzc;",
        ">;",
        "Lcom/google/android/gms/ads/internal/formats/zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbzk:Lcom/google/android/gms/internal/zzii;

.field final synthetic zzbzq:Ljava/lang/String;

.field final synthetic zzbzr:Ljava/lang/Integer;

.field final synthetic zzbzs:Ljava/lang/Integer;

.field final synthetic zzbzt:I

.field final synthetic zzbzu:I

.field final synthetic zzbzv:I

.field final synthetic zzbzw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzii;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IIII)V
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzk:Lcom/google/android/gms/internal/zzii;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzq:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzr:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzs:Ljava/lang/Integer;

    iput p5, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzt:I

    iput p6, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzu:I

    iput p7, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzv:I

    iput p8, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzj(Ljava/util/List;)Lcom/google/android/gms/ads/internal/formats/zza;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;)",
            "Lcom/google/android/gms/ads/internal/formats/zza;"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    move-object v0, v8

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzq:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzii;->zzi(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzr:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzs:Ljava/lang/Integer;

    iget v5, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzt:I

    if-lez v5, :cond_35

    iget v5, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_21
    iget v6, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzu:I

    iget v7, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzv:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/google/android/gms/internal/zzii$5;->zzbzw:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/formats/zza;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;II)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2b} :catch_2c

    goto :goto_a

    :catch_2c
    move-exception v0

    const-string/jumbo v1, "Could not get attribution icon"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    goto :goto_a

    :cond_35
    move-object v5, v8

    goto :goto_21
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzii$5;->zzj(Ljava/util/List;)Lcom/google/android/gms/ads/internal/formats/zza;

    move-result-object v0

    return-object v0
.end method
