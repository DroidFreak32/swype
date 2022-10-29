.class final Lcom/google/android/gms/internal/zzli$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcoy:Lcom/google/android/gms/internal/zzli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzli;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli$2;->zzcoy:Lcom/google/android/gms/internal/zzli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzcoy:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzcoy:Lcom/google/android/gms/internal/zzli;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzli;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlh;->zzuh()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznx()V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzcoy:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zzd(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/internal/zzli$zzb;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzcoy:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zzd(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/internal/zzli$zzb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzli$zzb;->zzen()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli$2;->zzcoy:Lcom/google/android/gms/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzli;->zza$73fd7829(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/internal/zzli$zzb;

    :cond_2a
    return-void
.end method
