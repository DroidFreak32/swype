.class final Lcom/google/android/gms/common/internal/zzn;
.super Lcom/google/android/gms/common/internal/zzm;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzn$zza;,
        Lcom/google/android/gms/common/internal/zzn$zzb;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final yN:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/common/internal/zzn$zza;",
            "Lcom/google/android/gms/common/internal/zzn$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private final yO:Lcom/google/android/gms/common/stats/zzb;

.field private final yP:J

.field private final zzaql:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzm;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzn;->yN:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzn;->zzaql:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzn;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->zzaux()Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzn;->yO:Lcom/google/android/gms/common/stats/zzb;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzn;->yP:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzn;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn;->yN:Ljava/util/HashMap;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/internal/zzn$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 9

    .prologue
    .line 0
    const-string/jumbo v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn;->yN:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn;->yN:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzn$zzb;

    if-nez v0, :cond_27

    new-instance v0, Lcom/google/android/gms/common/internal/zzn$zzb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzn$zzb;-><init>(Lcom/google/android/gms/common/internal/zzn;Lcom/google/android/gms/common/internal/zzn$zza;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/zzn$zzb;->zza$2d8eac7(Landroid/content/ServiceConnection;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/internal/zzn$zzb;->zzhm(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn;->yN:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4000
    :goto_23
    iget-boolean v0, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->yU:Z

    .line 0
    monitor-exit v1

    return v0

    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/zzn$zzb;->zza(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x51

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5b
    move-exception v0

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_9 .. :try_end_5d} :catchall_5b

    throw v0

    :cond_5e
    :try_start_5e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/zzn$zzb;->zza$2d8eac7(Landroid/content/ServiceConnection;)V

    .line 1000
    iget v2, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->mState:I

    .line 0
    packed-switch v2, :pswitch_data_74

    goto :goto_23

    .line 2000
    :pswitch_67
    iget-object v2, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->yR:Landroid/content/ComponentName;

    .line 3000
    iget-object v3, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->xL:Landroid/os/IBinder;

    .line 0
    invoke-interface {p2, v2, v3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_23

    :pswitch_6f
    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/internal/zzn$zzb;->zzhm(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_5e .. :try_end_72} :catchall_5b

    goto :goto_23

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_67
        :pswitch_6f
    .end packed-switch
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zzn;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn;->zzaql:Landroid/content/Context;

    return-object v0
.end method

.method private zzb$7cfb6f03(Lcom/google/android/gms/common/internal/zzn$zza;Landroid/content/ServiceConnection;)V
    .registers 9

    .prologue
    .line 0
    const-string/jumbo v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn;->yN:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn;->yN:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzn$zzb;

    if-nez v0, :cond_3e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Nonexistent connection status for service config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_9 .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :try_start_3e
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/zzn$zzb;->zza(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_6c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8000
    :cond_6c
    invoke-static {p2}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    .line 5000
    iget-object v2, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->yT:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzn$zzb;->zzasz()Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/zzn;->yP:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_3e .. :try_end_89} :catchall_3b

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/zzn;)Lcom/google/android/gms/common/stats/zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn;->yO:Lcom/google/android/gms/common/stats/zzb;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_34

    :goto_6
    return v0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzn$zzb;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn;->yN:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_e
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzn$zzb;->zzasz()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 11000
    iget-boolean v2, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->yU:Z

    .line 0
    if-eqz v2, :cond_27

    .line 12000
    iget-object v2, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->yW:Lcom/google/android/gms/common/internal/zzn;

    .line 14000
    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzn;->zzaql:Landroid/content/Context;

    .line 12000
    iget-object v3, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->yS:Lcom/google/android/gms/common/internal/zzn$zzb$zza;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->yU:Z

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->mState:I

    .line 0
    :cond_27
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn;->yN:Ljava/util/HashMap;

    .line 15000
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzn$zzb;->yV:Lcom/google/android/gms/common/internal/zzn$zza;

    .line 0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_6

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_31

    throw v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public final zza(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/internal/zzn$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zzn$zza;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/zzn;->zza(Lcom/google/android/gms/common/internal/zzn$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Lcom/google/android/gms/common/internal/zzn$zza;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/internal/zzn$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/gms/common/internal/zzn;->zza(Lcom/google/android/gms/common/internal/zzn$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final zzb$3185ab25(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/common/internal/zzn$zza;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/internal/zzn$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/common/internal/zzn;->zzb$7cfb6f03(Lcom/google/android/gms/common/internal/zzn$zza;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public final zzb$9b3168c(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/internal/zzn$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zzn$zza;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/internal/zzn;->zzb$7cfb6f03(Lcom/google/android/gms/common/internal/zzn$zza;Landroid/content/ServiceConnection;)V

    return-void
.end method
