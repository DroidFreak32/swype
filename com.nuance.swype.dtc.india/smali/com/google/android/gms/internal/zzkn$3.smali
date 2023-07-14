.class final Lcom/google/android/gms/internal/zzkn$3;
.super Lcom/google/android/gms/internal/zzab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcmg:Lcom/google/android/gms/internal/zzkn;

.field final synthetic zzcmh:[B

.field final synthetic zzcmi:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkn;Ljava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkn$3;->zzcmg:Lcom/google/android/gms/internal/zzkn;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkn$3;->zzcmh:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzkn$3;->zzcmi:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/gms/internal/zzab;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzm$zza;)V

    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkn$3;->zzcmi:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzab;->getHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkn$3;->zzcmi:Ljava/util/Map;

    goto :goto_0
.end method

.method public final zzp()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkn$3;->zzcmh:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzab;->zzp()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkn$3;->zzcmh:[B

    goto :goto_0
.end method
