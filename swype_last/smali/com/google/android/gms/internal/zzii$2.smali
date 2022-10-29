.class final Lcom/google/android/gms/internal/zzii$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbzk:Lcom/google/android/gms/internal/zzii;

.field final synthetic zzbzm:Lcom/google/android/gms/internal/zzkv;

.field final synthetic zzbzn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzii;Lcom/google/android/gms/internal/zzkv;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzii$2;->zzbzk:Lcom/google/android/gms/internal/zzii;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzii$2;->zzbzm:Lcom/google/android/gms/internal/zzkv;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzii$2;->zzbzn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzii$2;->zzbzm:Lcom/google/android/gms/internal/zzkv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzii$2;->zzbzk:Lcom/google/android/gms/internal/zzii;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzii;->zzb(Lcom/google/android/gms/internal/zzii;)Lcom/google/android/gms/ads/internal/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->zzfb()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzii$2;->zzbzn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzee;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzkv;->zzh(Ljava/lang/Object;)V

    return-void
.end method
