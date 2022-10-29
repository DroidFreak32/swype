.class final Lcom/google/android/gms/common/zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/zzd$zzd;,
        Lcom/google/android/gms/common/zzd$zzc;,
        Lcom/google/android/gms/common/zzd$zzb;,
        Lcom/google/android/gms/common/zzd$zza;
    }
.end annotation


# static fields
.field private static rh:Landroid/content/Context;


# direct methods
.method static declared-synchronized zzbq(Landroid/content/Context;)V
    .registers 4

    const-class v1, Lcom/google/android/gms/common/zzd;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/zzd;->rh:Landroid/content/Context;

    if-nez v0, :cond_11

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/zzd;->rh:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1b

    :cond_f
    :goto_f
    monitor-exit v1

    return-void

    :cond_11
    :try_start_11
    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v2, "GoogleCertificates has been initialized already"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1b

    goto :goto_f

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
