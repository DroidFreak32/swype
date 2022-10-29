.class final Lcom/google/android/gms/ads/internal/zzc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzdk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakd:Lcom/google/android/gms/ads/internal/zzc;

.field final synthetic zzake:Lcom/google/android/gms/internal/zzju$zza;

.field final synthetic zzakf:Lcom/google/android/gms/internal/zzjo;

.field final synthetic zzakg:Lcom/google/android/gms/internal/zzdk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzdk;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakf:Lcom/google/android/gms/internal/zzjo;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakg:Lcom/google/android/gms/internal/zzdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcch:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapq:Lcom/google/android/gms/internal/zzdo;

    if-eqz v0, :cond_55

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbto:Ljava/lang/String;

    if-eqz v1, :cond_28

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbto:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzco(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_28
    new-instance v1, Lcom/google/android/gms/internal/zzdl;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzdl;-><init>(Lcom/google/android/gms/ads/internal/zzh;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput v4, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:I

    :try_start_3b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/zzc;->zzajq:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapq:Lcom/google/android/gms/internal/zzdo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzdo;->zza(Lcom/google/android/gms/internal/zzdn;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    const-string/jumbo v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iput-boolean v4, v0, Lcom/google/android/gms/ads/internal/zzc;->zzajq:Z

    :cond_55
    new-instance v0, Lcom/google/android/gms/ads/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzc;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakf:Lcom/google/android/gms/internal/zzjo;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzjo;)Lcom/google/android/gms/internal/zzlh;

    move-result-object v4

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$3$1;-><init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/zzlh;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$3$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$3$2;-><init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/zzlh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput v5, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/zzc;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfp()Lcom/google/android/gms/internal/zzic;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzake:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzc;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/internal/zzas;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzc;->zzajz:Lcom/google/android/gms/internal/zzgj;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakd:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzakg:Lcom/google/android/gms/internal/zzdk;

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/zzic;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzlh;Lcom/google/android/gms/internal/zzgj;Lcom/google/android/gms/internal/zzic$zza;Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzkj;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzkj;

    goto :goto_49
.end method
