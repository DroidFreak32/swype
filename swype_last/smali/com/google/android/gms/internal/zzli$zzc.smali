.class final Lcom/google/android/gms/internal/zzli$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

.field private zzcoz:Lcom/google/android/gms/internal/zzlh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/ads/internal/overlay/zzg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$zzc;->zzcoz:Lcom/google/android/gms/internal/zzlh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzli$zzc;->zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 1

    return-void
.end method

.method public final zzdx()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$zzc;->zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzdx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$zzc;->zzcoz:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuc()V

    return-void
.end method

.method public final zzdy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$zzc;->zzcom:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzdy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$zzc;->zzcoz:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzoa()V

    return-void
.end method
