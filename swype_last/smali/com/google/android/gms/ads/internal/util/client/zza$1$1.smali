.class final Lcom/google/android/gms/ads/internal/util/client/zza$1$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/util/client/zza$1;->zzcr(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjh:Ljava/lang/String;

.field final synthetic zzcnj:Lcom/google/android/gms/ads/internal/util/client/zza$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/client/zza$1;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/client/zza$1$1;->zzcnj:Lcom/google/android/gms/ads/internal/util/client/zza$1;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/client/zza$1$1;->zzbjh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/zzc;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/client/zza$1$1;->zzbjh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zzc;->zzcr(Ljava/lang/String;)V

    return-void
.end method
