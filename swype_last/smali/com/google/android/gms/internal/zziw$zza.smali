.class final Lcom/google/android/gms/internal/zziw$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zziw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field public final zzchb:J

.field public final zzchc:Lcom/google/android/gms/internal/zziv;

.field final synthetic zzchd:Lcom/google/android/gms/internal/zziw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziw;Lcom/google/android/gms/internal/zziv;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zziw$zza;->zzchd:Lcom/google/android/gms/internal/zziw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zziw$zza;->zzchb:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zziw$zza;->zzchc:Lcom/google/android/gms/internal/zziv;

    return-void
.end method
