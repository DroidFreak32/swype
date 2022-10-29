.class public final Lcom/google/android/gms/gass/internal/zza$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzd$zzb;
.implements Lcom/google/android/gms/common/internal/zzd$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gass/internal/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field protected YS:Lcom/google/android/gms/gass/internal/zzb;

.field private final YT:Ljava/lang/String;

.field private final YU:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzae$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final YV:Landroid/os/HandlerThread;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/gass/internal/zza$zza;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YT:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "GassClient"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YV:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YV:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/google/android/gms/gass/internal/zzb;

    iget-object v1, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YV:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0, p0}, Lcom/google/android/gms/gass/internal/zzb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YS:Lcom/google/android/gms/gass/internal/zzb;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YU:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YS:Lcom/google/android/gms/gass/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/gass/internal/zzb;->zzarx()V

    .line 0
    return-void
.end method

.method private zzbla()Lcom/google/android/gms/gass/internal/zze;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YS:Lcom/google/android/gms/gass/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/gass/internal/zzb;->zzblb()Lcom/google/android/gms/gass/internal/zze;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_5} :catch_a

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    :goto_8
    const/4 v0, 0x0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_8
.end method

.method private zzqw()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YS:Lcom/google/android/gms/gass/internal/zzb;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YS:Lcom/google/android/gms/gass/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/gass/internal/zzb;->isConnected()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YS:Lcom/google/android/gms/gass/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/gass/internal/zzb;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YS:Lcom/google/android/gms/gass/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/gass/internal/zzb;->disconnect()V

    :cond_19
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/gass/internal/zza$zza;->zzbla()Lcom/google/android/gms/gass/internal/zze;

    move-result-object v0

    if-eqz v0, :cond_24

    :try_start_6
    new-instance v1, Lcom/google/android/gms/gass/internal/GassRequestParcel;

    iget-object v2, p0, Lcom/google/android/gms/gass/internal/zza$zza;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YT:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/gass/internal/GassRequestParcel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/gass/internal/zze;->zza(Lcom/google/android/gms/gass/internal/GassRequestParcel;)Lcom/google/android/gms/gass/internal/GassResponseParcel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gass/internal/GassResponseParcel;->zzbld()Lcom/google/android/gms/internal/zzae$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YU:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_25
    .catchall {:try_start_6 .. :try_end_1c} :catchall_2f

    invoke-direct {p0}, Lcom/google/android/gms/gass/internal/zza$zza;->zzqw()V

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YV:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/gass/internal/zza$zza;->zzqw()V

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YV:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_24

    :catchall_2f
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/gass/internal/zza$zza;->zzqw()V

    iget-object v1, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YV:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YU:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/google/android/gms/internal/zzae$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzae$zza;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public final onConnectionSuspended(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YU:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/google/android/gms/internal/zzae$zza;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzae$zza;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public final zzsi$1d3d48d2()Lcom/google/android/gms/internal/zzae$zza;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/zza$zza;->YU:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzae$zza;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_d} :catch_15

    :goto_d
    if-nez v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/zzae$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzae$zza;-><init>()V

    :cond_14
    return-object v0

    :catch_15
    move-exception v0

    move-object v0, v1

    goto :goto_d
.end method
