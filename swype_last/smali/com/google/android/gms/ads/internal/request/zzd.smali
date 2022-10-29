.class public abstract Lcom/google/android/gms/ads/internal/request/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/request/zzc$zza;
.implements Lcom/google/android/gms/internal/zzkj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zzd$zzb;,
        Lcom/google/android/gms/ads/internal/request/zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/request/zzc$zza;",
        "Lcom/google/android/gms/internal/zzkj",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private final zzcaj:Lcom/google/android/gms/internal/zzla;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzla",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcak:Lcom/google/android/gms/ads/internal/request/zzc$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzla;Lcom/google/android/gms/ads/internal/request/zzc$zza;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzla",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/zzc$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzail:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcaj:Lcom/google/android/gms/internal/zzla;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcak:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqw()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/ads/internal/request/zzk;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_2
    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/request/zzg;-><init>(Lcom/google/android/gms/ads/internal/request/zzc$zza;)V

    invoke-interface {p1, p2, v2}, Lcom/google/android/gms/ads/internal/request/zzk;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_a} :catch_25
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_a} :catch_34
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_43

    :goto_a
    return v0

    :catch_b
    move-exception v2

    const-string/jumbo v3, "Could not fetch ad response from ad request service."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V

    :goto_19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcak:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    move v0, v1

    goto :goto_a

    :catch_25
    move-exception v2

    const-string/jumbo v3, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V

    goto :goto_19

    :catch_34
    move-exception v2

    const-string/jumbo v3, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V

    goto :goto_19

    :catch_43
    move-exception v2

    const-string/jumbo v3, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V

    goto :goto_19
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcak:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqw()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public zzpv()Ljava/lang/Void;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqx()Lcom/google/android/gms/ads/internal/request/zzk;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcak:Lcom/google/android/gms/ads/internal/request/zzc$zza;

    new-instance v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/request/zzc$zza;->zzb(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzqw()V

    :goto_15
    return-object v3

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/zzd;->zzcaj:Lcom/google/android/gms/internal/zzla;

    new-instance v2, Lcom/google/android/gms/ads/internal/request/zzd$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/request/zzd$1;-><init>(Lcom/google/android/gms/ads/internal/request/zzd;Lcom/google/android/gms/ads/internal/request/zzk;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzd$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/zzd$2;-><init>(Lcom/google/android/gms/ads/internal/request/zzd;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzla;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    goto :goto_15
.end method

.method public synthetic zzpy()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/zzd;->zzpv()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzqw()V
.end method

.method public abstract zzqx()Lcom/google/android/gms/ads/internal/request/zzk;
.end method
