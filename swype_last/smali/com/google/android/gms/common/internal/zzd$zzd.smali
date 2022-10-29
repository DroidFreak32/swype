.class final Lcom/google/android/gms/common/internal/zzd$zzd;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzd"
.end annotation


# instance fields
.field final synthetic xG:Lcom/google/android/gms/common/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzd;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static zza(Landroid/os/Message;)V
    .registers 2

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzd$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd$zze;->unregister()V

    return-void
.end method

.method private static zzb(Landroid/os/Message;)Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    iget v1, p0, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_f

    iget v1, p0, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zzd;->xD:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v2, :cond_19

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzd$zzd;->zzb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzd$zzd;->zza(Landroid/os/Message;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v5, :cond_22

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2e

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzd;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzd$zzd;->zza(Landroid/os/Message;)V

    goto :goto_18

    :cond_2e
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_53

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_3d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    :cond_3d
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzd;->zzb(Lcom/google/android/gms/common/internal/zzd;)Lcom/google/android/gms/common/internal/zzd$zzf;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/zzd$zzf;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzd;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_18

    :cond_53
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_81

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/zzd;->zza$60506585(Lcom/google/android/gms/common/internal/zzd;I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzd;->zzc(Lcom/google/android/gms/common/internal/zzd;)Lcom/google/android/gms/common/internal/zzd$zzb;

    move-result-object v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzd;->zzc(Lcom/google/android/gms/common/internal/zzd;)Lcom/google/android/gms/common/internal/zzd$zzb;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/internal/zzd$zzb;->onConnectionSuspended(I)V

    :cond_6f
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1000
    iput v2, v1, Lcom/google/android/gms/common/internal/zzd;->xm:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/common/internal/zzd;->xn:J

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v1, v4, v5, v0}, Lcom/google/android/gms/common/internal/zzd;->zza(Lcom/google/android/gms/common/internal/zzd;IILandroid/os/IInterface;)Z

    goto :goto_18

    :cond_81
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_92

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zzd;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd;->isConnected()Z

    move-result v0

    if-nez v0, :cond_92

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzd$zzd;->zza(Landroid/os/Message;)V

    goto :goto_18

    :cond_92
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzd$zzd;->zzb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzd$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd$zze;->zzasf()V

    goto/16 :goto_18

    :cond_a1
    const-string/jumbo v0, "GmsClient"

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Don\'t know how to handle message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18
.end method
