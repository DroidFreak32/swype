.class public final Lcom/google/android/gms/internal/zzqa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqa$zza;,
        Lcom/google/android/gms/internal/zzqa$zzb;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final si:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzvu;",
            "Lcom/google/android/gms/internal/zzvv;",
            ">;"
        }
    .end annotation
.end field

.field final tN:Lcom/google/android/gms/common/internal/zzg;

.field final tO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final th:Lcom/google/android/gms/internal/zzpy;

.field final tr:Ljava/util/concurrent/locks/Lock;

.field final tz:Lcom/google/android/gms/common/zzc;

.field uA:I

.field final uB:Lcom/google/android/gms/internal/zzqh$zza;

.field final ui:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;"
        }
    .end annotation
.end field

.field final uv:Ljava/util/concurrent/locks/Condition;

.field final uw:Lcom/google/android/gms/internal/zzqa$zzb;

.field final ux:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field volatile uy:Lcom/google/android/gms/internal/zzpz;

.field private uz:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzqh$zza;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzpy;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/zzc;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzvu;",
            "Lcom/google/android/gms/internal/zzvv;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpp;",
            ">;",
            "Lcom/google/android/gms/internal/zzqh$zza;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqa;->ux:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uz:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqa;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqa;->tz:Lcom/google/android/gms/common/zzc;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzqa;->ui:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzqa;->tN:Lcom/google/android/gms/common/internal/zzg;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzqa;->tO:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzqa;->si:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzqa;->th:Lcom/google/android/gms/internal/zzpy;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzqa;->uB:Lcom/google/android/gms/internal/zzqh$zza;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpp;

    .line 1000
    iput-object p0, v0, Lcom/google/android/gms/internal/zzpp;->tg:Lcom/google/android/gms/internal/zzqa;

    goto :goto_23

    .line 0
    :cond_32
    new-instance v0, Lcom/google/android/gms/internal/zzqa$zzb;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/zzqa$zzb;-><init>(Lcom/google/android/gms/internal/zzqa;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uw:Lcom/google/android/gms/internal/zzqa$zzb;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uv:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/internal/zzpx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpx;-><init>(Lcom/google/android/gms/internal/zzqa;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    return-void
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqa;->connect()V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqa;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_20

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uv:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_4

    :catch_10
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqa;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->rb:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uz:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uz:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1f

    :cond_30
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1f
.end method

.method public final connect()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpz;->connect()V

    return-void
.end method

.method public final disconnect()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpz;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->ux:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_d
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "mState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    .line 3000
    iget-object v4, v0, Lcom/google/android/gms/common/api/Api;->mName:Ljava/lang/String;

    .line 0
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqa;->ui:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzans()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$zze;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_25

    :cond_51
    return-void
.end method

.method public final isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzpv;

    return v0
.end method

.method public final isConnecting()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzpw;

    return v0
.end method

.method public final onConnectionSuspended(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzpz;->onConnectionSuspended(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/zzqa$zza;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uw:Lcom/google/android/gms/internal/zzqa$zzb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzqa$zzb;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqa;->uw:Lcom/google/android/gms/internal/zzqa$zzb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqa$zzb;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzqt;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final zzaof()V
    .registers 1

    return-void
.end method

.method public final zzapb()V
    .registers 3

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzqa;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    check-cast v0, Lcom/google/android/gms/internal/zzpv;

    .line 2000
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzpv;->tx:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzpv;->tx:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/zzpv;->tw:Lcom/google/android/gms/internal/zzqa;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqa;->th:Lcom/google/android/gms/internal/zzpy;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzpy;->uo:Lcom/google/android/gms/internal/zzqy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqy;->release()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpv;->disconnect()Z

    .line 0
    :cond_1d
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpm$zza;->zzaow()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzpz;->zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzpm$zza;->zzaow()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzpz;->zzd(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object v0

    return-object v0
.end method

.method final zzi(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iput-object p1, p0, Lcom/google/android/gms/internal/zzqa;->uz:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/internal/zzpx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzpx;-><init>(Lcom/google/android/gms/internal/zzqa;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uy:Lcom/google/android/gms/internal/zzpz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzpz;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->uv:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqa;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
