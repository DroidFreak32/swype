.class public abstract Lcom/google/android/gms/common/internal/zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzd$zzg;,
        Lcom/google/android/gms/common/internal/zzd$zza;,
        Lcom/google/android/gms/common/internal/zzd$zzj;,
        Lcom/google/android/gms/common/internal/zzd$zzk;,
        Lcom/google/android/gms/common/internal/zzd$zzi;,
        Lcom/google/android/gms/common/internal/zzd$zze;,
        Lcom/google/android/gms/common/internal/zzd$zzd;,
        Lcom/google/android/gms/common/internal/zzd$zzf;,
        Lcom/google/android/gms/common/internal/zzd$zzc;,
        Lcom/google/android/gms/common/internal/zzd$zzb;,
        Lcom/google/android/gms/common/internal/zzd$zzh;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final xE:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final tz:Lcom/google/android/gms/common/zzc;

.field private final xA:Lcom/google/android/gms/common/internal/zzd$zzc;

.field private final xB:I

.field private final xC:Ljava/lang/String;

.field protected xD:Ljava/util/concurrent/atomic/AtomicInteger;

.field xm:I

.field xn:J

.field private xo:J

.field private xp:I

.field private xq:J

.field private final xr:Lcom/google/android/gms/common/internal/zzm;

.field private final xs:Ljava/lang/Object;

.field private xt:Lcom/google/android/gms/common/internal/zzu;

.field private xu:Lcom/google/android/gms/common/internal/zzd$zzf;

.field private xv:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final xw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/zzd$zze",
            "<*>;>;"
        }
    .end annotation
.end field

.field private xx:Lcom/google/android/gms/common/internal/zzd$zzh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzd$zzh;"
        }
    .end annotation
.end field

.field private xy:I

.field private final xz:Lcom/google/android/gms/common/internal/zzd$zzb;

.field private final zzahv:Landroid/os/Looper;

.field private final zzail:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/zzd;->xE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;Ljava/lang/String;)V
    .registers 16

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzm;->zzce(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzm;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzang()Lcom/google/android/gms/common/zzc;

    move-result-object v4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/zzd$zzb;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/internal/zzd$zzc;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzm;Lcom/google/android/gms/common/zzc;ILcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzm;Lcom/google/android/gms/common/zzc;ILcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->zzail:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xs:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xw:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/zzd;->xy:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xD:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->zzahv:Landroid/os/Looper;

    const-string/jumbo v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzm;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xr:Lcom/google/android/gms/common/internal/zzm;

    const-string/jumbo v0, "API availability must not be null"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/zzc;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->tz:Lcom/google/android/gms/common/zzc;

    new-instance v0, Lcom/google/android/gms/common/internal/zzd$zzd;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/zzd$zzd;-><init>(Lcom/google/android/gms/common/internal/zzd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/zzd;->xB:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/zzd;->xz:Lcom/google/android/gms/common/internal/zzd$zzb;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zzd;->xA:Lcom/google/android/gms/common/internal/zzd$zzc;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/zzd;->xC:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzd;Lcom/google/android/gms/common/internal/zzu;)Lcom/google/android/gms/common/internal/zzu;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd;->xt:Lcom/google/android/gms/common/internal/zzu;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzd;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xs:Ljava/lang/Object;

    return-object v0
.end method

.method private zza(IILandroid/os/IInterface;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzd;->xy:I

    if-eq v0, p1, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/zzd;->zzb(ILandroid/os/IInterface;)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_9

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzd;IILandroid/os/IInterface;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzd;->zza(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method static synthetic zza$60506585(Lcom/google/android/gms/common/internal/zzd;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzd;->zzb(ILandroid/os/IInterface;)V

    return-void
.end method

.method private zzaru()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xC:Ljava/lang/String;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xC:Ljava/lang/String;

    goto :goto_e
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zzd;)Lcom/google/android/gms/common/internal/zzd$zzf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xu:Lcom/google/android/gms/common/internal/zzd$zzf;

    return-object v0
.end method

.method private zzb(ILandroid/os/IInterface;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_13

    move v3, v0

    :goto_6
    if-eqz p2, :cond_15

    move v2, v0

    :goto_9
    if-ne v3, v2, :cond_17

    .line 2000
    :goto_b
    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_13
    move v3, v1

    .line 0
    goto :goto_6

    :cond_15
    move v2, v1

    goto :goto_9

    :cond_17
    move v0, v1

    goto :goto_b

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    iput p1, p0, Lcom/google/android/gms/common/internal/zzd;->xy:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzd;->xv:Landroid/os/IInterface;

    packed-switch p1, :pswitch_data_122

    :cond_23
    :goto_23
    monitor-exit v1

    return-void

    .line 3000
    :pswitch_25
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xx:Lcom/google/android/gms/common/internal/zzd$zzh;

    if-eqz v0, :cond_86

    const-string/jumbo v0, "GmsClient"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzqz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4000
    const-string/jumbo v3, "com.google.android.gms"

    .line 3000
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x46

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xr:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzqz()Ljava/lang/String;

    move-result-object v2

    .line 5000
    const-string/jumbo v3, "com.google.android.gms"

    .line 3000
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzd;->xx:Lcom/google/android/gms/common/internal/zzd$zzh;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzd;->zzaru()Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/internal/zzm;->zzb$3185ab25(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xD:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_86
    new-instance v0, Lcom/google/android/gms/common/internal/zzd$zzh;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzd;->xD:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/common/internal/zzd$zzh;-><init>(Lcom/google/android/gms/common/internal/zzd;I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xx:Lcom/google/android/gms/common/internal/zzd$zzh;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xr:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzqz()Ljava/lang/String;

    move-result-object v2

    .line 6000
    const-string/jumbo v3, "com.google.android.gms"

    .line 3000
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzd;->xx:Lcom/google/android/gms/common/internal/zzd$zzh;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzd;->zzaru()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/common/internal/zzm;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "GmsClient"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzqz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7000
    const-string/jumbo v3, "com.google.android.gms"

    .line 3000
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x22

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "unable to connect to service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzd;->xD:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/common/internal/zzd;->zza$4c85f423(II)V

    goto/16 :goto_23

    .line 0
    :catchall_fc
    move-exception v0

    monitor-exit v1
    :try_end_fe
    .catchall {:try_start_1c .. :try_end_fe} :catchall_fc

    throw v0

    .line 8000
    :pswitch_ff
    :try_start_ff
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/common/internal/zzd;->xo:J

    goto/16 :goto_23

    .line 9000
    :pswitch_107
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xx:Lcom/google/android/gms/common/internal/zzd$zzh;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xr:Lcom/google/android/gms/common/internal/zzm;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzqz()Ljava/lang/String;

    move-result-object v2

    .line 10000
    const-string/jumbo v3, "com.google.android.gms"

    .line 9000
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzd;->xx:Lcom/google/android/gms/common/internal/zzd$zzh;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzd;->zzaru()Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/internal/zzm;->zzb$3185ab25(Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xx:Lcom/google/android/gms/common/internal/zzd$zzh;
    :try_end_11f
    .catchall {:try_start_ff .. :try_end_11f} :catchall_fc

    goto/16 :goto_23

    .line 0
    nop

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_107
        :pswitch_25
        :pswitch_ff
    .end packed-switch
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/zzd;)Lcom/google/android/gms/common/internal/zzd$zzb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xz:Lcom/google/android/gms/common/internal/zzd$zzb;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/zzd;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xw:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/zzd;)Lcom/google/android/gms/common/internal/zzd$zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xA:Lcom/google/android/gms/common/internal/zzd$zzc;

    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xD:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzd;->xw:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzd$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzd$zze;->zzasg()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_34

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->xs:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_2c
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xt:Lcom/google/android/gms/common/internal/zzu;

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/common/internal/zzd;->zzb(ILandroid/os/IInterface;)V

    return-void

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    const-wide/16 v8, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/internal/zzd;->xy:I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzd;->xv:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_12f

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v3, "mConnectState="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v0, :pswitch_data_182

    const-string/jumbo v0, "UNKNOWN"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1d
    const-string/jumbo v0, " mService="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v2, :cond_152

    const-string/jumbo v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2b
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzd;->xo:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_7c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "lastConnectedTime="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzd;->xo:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/zzd;->xo:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x15

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7c
    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzd;->xn:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_d7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "lastSuspendedCause="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v1, p0, Lcom/google/android/gms/common/internal/zzd;->xm:I

    packed-switch v1, :pswitch_data_18e

    iget v1, p0, Lcom/google/android/gms/common/internal/zzd;->xm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_9a
    const-string/jumbo v1, " lastSuspendedTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzd;->xn:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/zzd;->xn:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x15

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d7
    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzd;->xq:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_12e

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "lastFailedStatus="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/internal/zzd;->xp:I

    invoke-static {v2}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v1, " lastFailedTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/internal/zzd;->xq:J

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/android/gms/common/internal/zzd;->xq:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x15

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12e
    return-void

    :catchall_12f
    move-exception v0

    :try_start_130
    monitor-exit v1
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12f

    throw v0

    :pswitch_132
    const-string/jumbo v0, "CONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_13a
    const-string/jumbo v0, "CONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_142
    const-string/jumbo v0, "DISCONNECTING"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_14a
    const-string/jumbo v0, "DISCONNECTED"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_152
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzra()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2b

    :pswitch_172
    const-string/jumbo v1, "CAUSE_SERVICE_DISCONNECTED"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_9a

    :pswitch_17a
    const-string/jumbo v1, "CAUSE_NETWORK_LOST"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto/16 :goto_9a

    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_14a
        :pswitch_132
        :pswitch_13a
        :pswitch_142
    .end packed-switch

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_172
        :pswitch_17a
    .end packed-switch
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->zzahv:Landroid/os/Looper;

    return-object v0
.end method

.method public isConnected()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzd;->xy:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public isConnecting()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzd;->xy:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .prologue
    .line 0
    .line 1000
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 0
    iput v0, p0, Lcom/google/android/gms/common/internal/zzd;->xp:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zzd;->xq:J

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V
    .registers 4

    const-string/jumbo v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzd$zzf;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xu:Lcom/google/android/gms/common/internal/zzd$zzf;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/internal/zzd;->zzb(ILandroid/os/IInterface;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzd$zzf;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 9

    .prologue
    .line 0
    const-string/jumbo v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzd$zzf;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xu:Lcom/google/android/gms/common/internal/zzd$zzf;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzd;->xD:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 11000
    iget v4, p2, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 12000
    iget-object v5, p2, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    .line 0
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzq;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzaeu()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzd;->xB:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 14000
    iput-object v2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->yw:Ljava/lang/String;

    .line 15000
    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->yz:Landroid/os/Bundle;

    .line 0
    if-eqz p2, :cond_25

    .line 16000
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->yy:[Lcom/google/android/gms/common/api/Scope;

    .line 0
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzafk()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzary()Landroid/accounts/Account;

    move-result-object v0

    .line 17000
    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->yA:Landroid/accounts/Account;

    .line 18000
    if-eqz p1, :cond_39

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzq;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->yx:Landroid/os/IBinder;

    .line 0
    :cond_39
    :goto_39
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzd;->xs:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3c} :catch_5f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3c} :catch_7b

    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xt:Lcom/google/android/gms/common/internal/zzu;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xt:Lcom/google/android/gms/common/internal/zzu;

    new-instance v3, Lcom/google/android/gms/common/internal/zzd$zzg;

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzd;->xD:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/common/internal/zzd$zzg;-><init>(Lcom/google/android/gms/common/internal/zzd;I)V

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzu;->zza(Lcom/google/android/gms/common/internal/zzt;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    :goto_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_3c .. :try_end_51} :catchall_78

    :goto_51
    return-void

    :cond_52
    :try_start_52
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->zzasb()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 19000
    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->yA:Landroid/accounts/Account;
    :try_end_5e
    .catch Landroid/os/DeadObjectException; {:try_start_52 .. :try_end_5e} :catch_5f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5e} :catch_7b

    goto :goto_39

    .line 0
    :catch_5f
    move-exception v0

    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzd;->zzgc(I)V

    goto :goto_51

    :cond_6e
    :try_start_6e
    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :catchall_78
    move-exception v0

    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_6e .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v0
    :try_end_7b
    .catch Landroid/os/DeadObjectException; {:try_start_7a .. :try_end_7b} :catch_5f
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7b} :catch_7b

    :catch_7b
    move-exception v0

    const-string/jumbo v1, "GmsClient"

    const-string/jumbo v2, "Remote exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51
.end method

.method protected final zza$4c85f423(II)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/zzd$zzk;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/common/internal/zzd$zzk;-><init>(Lcom/google/android/gms/common/internal/zzd;I)V

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zzaeu()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public zzafk()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzafz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzaga()Landroid/content/Intent;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzamh()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzanu()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzanv()Landroid/os/IBinder;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->xs:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xt:Lcom/google/android/gms/common/internal/zzu;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xt:Lcom/google/android/gms/common/internal/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    monitor-exit v1

    goto :goto_9

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public zzarx()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->tz:Lcom/google/android/gms/common/zzc;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/zzd;->zzb(ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/internal/zzd$zzi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/zzd$zzi;-><init>(Lcom/google/android/gms/common/internal/zzd;)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->xu:Lcom/google/android/gms/common/internal/zzd$zzf;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzd;->xD:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_28
    return-void

    :cond_29
    new-instance v0, Lcom/google/android/gms/common/internal/zzd$zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzd$zzi;-><init>(Lcom/google/android/gms/common/internal/zzd;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzd;->zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V

    goto :goto_28
.end method

.method public final zzary()Landroid/accounts/Account;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "<<default account>>"

    const-string/jumbo v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final zzasa()Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/zzd;->xy:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_11

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0

    .line 13000
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd;->isConnected()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 0
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xv:Landroid/os/IInterface;

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_25
    const-string/jumbo v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->xv:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_e

    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public zzasb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected zzasc()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public abstract zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public zzgc(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzd;->xD:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public abstract zzqz()Ljava/lang/String;
.end method

.method public abstract zzra()Ljava/lang/String;
.end method
