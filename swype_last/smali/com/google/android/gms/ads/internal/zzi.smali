.class final Lcom/google/android/gms/ads/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzan;
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private zzajs:Lcom/google/android/gms/ads/internal/zzv;

.field private final zzalc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzald:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/zzan;",
            ">;"
        }
    .end annotation
.end field

.field zzale:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzv;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzalc:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzald:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzale:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zztx()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p0}, Lcom/google/android/gms/internal/zzkg;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzky;

    :goto_28
    return-void

    :cond_29
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->run()V

    goto :goto_28
.end method

.method private zzeo()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzale:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "Interrupted during GADSignals creation."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method private zzep()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzalc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzalc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    if-ne v1, v7, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzald:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzan;

    aget-object v0, v0, v6

    check-cast v0, Landroid/view/MotionEvent;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzan;->zza(Landroid/view/MotionEvent;)V

    goto :goto_11

    :cond_30
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzald:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzan;

    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v0, v7

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x2

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v4, v2, v0}, Lcom/google/android/gms/internal/zzan;->zza(III)V

    goto :goto_11

    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzalc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_a
.end method

.method private static zzi(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzayk:Lcom/google/android/gms/internal/zzcy;

    .line 1000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-object p0

    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    move-object p0, v0

    goto :goto_12
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzayw:Lcom/google/android/gms/internal/zzcy;

    .line 2000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnm:Z

    if-eqz v0, :cond_3b

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzi;->zzi(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 3000
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/zzar;->zza(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/zzar;

    move-result-object v0

    .line 4000
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzald:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3d

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzale:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/zzi;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    return-void

    :cond_3b
    const/4 v0, 0x0

    goto :goto_1c

    :catchall_3d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzale:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/zzi;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    throw v0
.end method

.method public final zza(III)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzald:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzan;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzep()V

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzan;->zza(III)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzalc:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public final zza(Landroid/view/MotionEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzald:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzan;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzep()V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzan;->zza(Landroid/view/MotionEvent;)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzalc:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method public final zzb(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzeo()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzald:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzan;

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzep()V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzi;->zzi(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzan;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    const-string/jumbo v0, ""

    goto :goto_1b
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzeo()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzald:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzan;

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzep()V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzi;->zzi(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzan;->zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    const-string/jumbo v0, ""

    goto :goto_1b
.end method
