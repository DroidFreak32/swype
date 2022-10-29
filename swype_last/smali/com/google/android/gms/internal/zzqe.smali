.class public final Lcom/google/android/gms/internal/zzqe;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqe$zza;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final vc:Lcom/google/android/gms/internal/zzqe$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqe$zza;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqe;->vc:Lcom/google/android/gms/internal/zzqe$zza;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :cond_b
    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqe;->vc:Lcom/google/android/gms/internal/zzqe$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqe$zza;->zzaou()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqe;->unregister()V

    :cond_1c
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqe;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final declared-synchronized unregister()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqe;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqe;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqe;->mContext:Landroid/content/Context;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
