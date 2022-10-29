.class final Lcom/google/android/gms/internal/zzlm$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcqf:Lcom/google/android/gms/internal/zzlm;

.field final synthetic zzcqg:I

.field final synthetic zzcqh:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlm;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    iput p2, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqg:I

    iput p3, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzlm;->zzc(Lcom/google/android/gms/internal/zzlm;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_9
    iget v2, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqg:I

    iget v3, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqh:I

    if-eq v2, v3, :cond_4e

    move v2, v1

    :goto_10
    iget-object v3, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzlm;->zzd(Lcom/google/android/gms/internal/zzlm;)Z

    move-result v3

    if-nez v3, :cond_50

    iget v3, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqh:I

    if-ne v3, v1, :cond_50

    move v5, v1

    :goto_1d
    if-eqz v2, :cond_52

    iget v3, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqh:I

    if-ne v3, v1, :cond_52

    move v4, v1

    :goto_24
    if-eqz v2, :cond_54

    iget v3, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqh:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_54

    move v3, v1

    :goto_2c
    if-eqz v2, :cond_56

    iget v2, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqh:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_56

    move v2, v1

    :goto_34
    iget-object v7, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzlm;->zzd(Lcom/google/android/gms/internal/zzlm;)Z

    move-result v8

    if-nez v8, :cond_40

    if-eqz v5, :cond_41

    :cond_40
    move v0, v1

    :cond_41
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlm;->zze(Lcom/google/android/gms/internal/zzlm;)Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v0

    if-nez v0, :cond_58

    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_9 .. :try_end_4d} :catchall_86

    :goto_4d
    return-void

    :cond_4e
    move v2, v0

    goto :goto_10

    :cond_50
    move v5, v0

    goto :goto_1d

    :cond_52
    move v4, v0

    goto :goto_24

    :cond_54
    move v3, v0

    goto :goto_2c

    :cond_56
    move v2, v0

    goto :goto_34

    :cond_58
    if-eqz v5, :cond_63

    :try_start_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlm;->zze(Lcom/google/android/gms/internal/zzlm;)Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzac;->zzjb()V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_63} :catch_89
    .catchall {:try_start_5a .. :try_end_63} :catchall_86

    :cond_63
    :goto_63
    if-eqz v4, :cond_6e

    :try_start_65
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlm;->zze(Lcom/google/android/gms/internal/zzlm;)Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzac;->zzjc()V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6e} :catch_91
    .catchall {:try_start_65 .. :try_end_6e} :catchall_86

    :cond_6e
    :goto_6e
    if-eqz v3, :cond_79

    :try_start_70
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlm;->zze(Lcom/google/android/gms/internal/zzlm;)Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzac;->zzjd()V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_79} :catch_99
    .catchall {:try_start_70 .. :try_end_79} :catchall_86

    :cond_79
    :goto_79
    if-eqz v2, :cond_84

    :try_start_7b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlm$2;->zzcqf:Lcom/google/android/gms/internal/zzlm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlm;->zze(Lcom/google/android/gms/internal/zzlm;)Lcom/google/android/gms/ads/internal/client/zzac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzac;->onVideoEnd()V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_84} :catch_a1
    .catchall {:try_start_7b .. :try_end_84} :catchall_86

    :cond_84
    :goto_84
    :try_start_84
    monitor-exit v6

    goto :goto_4d

    :catchall_86
    move-exception v0

    monitor-exit v6
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_86

    throw v0

    :catch_89
    move-exception v0

    :try_start_8a
    const-string/jumbo v1, "Unable to call onVideoStart()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_63

    :catch_91
    move-exception v0

    const-string/jumbo v1, "Unable to call onVideoPlay()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6e

    :catch_99
    move-exception v0

    const-string/jumbo v1, "Unable to call onVideoPause()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_79

    :catch_a1
    move-exception v0

    const-string/jumbo v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a8
    .catchall {:try_start_8a .. :try_end_a8} :catchall_86

    goto :goto_84
.end method
