.class public final Lcom/google/android/gms/common/stats/zzb;
.super Ljava/lang/Object;


# static fields
.field private static Aj:Lcom/google/android/gms/common/stats/zzb;

.field private static Ap:Ljava/lang/Integer;

.field private static final yL:Ljava/lang/Object;


# instance fields
.field private final Ak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Al:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Am:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final An:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ao:Lcom/google/android/gms/common/stats/zze;

.field private Aq:Lcom/google/android/gms/common/stats/zze;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->yL:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v0

    sget v1, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    if-ne v0, v1, :cond_1c

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->Ak:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->Al:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->Am:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->An:Ljava/util/List;

    :goto_1b
    return-void

    :cond_1c
    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Au:Lcom/google/android/gms/internal/zzqz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7b

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_28
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->Ak:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Av:Lcom/google/android/gms/internal/zzqz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_87

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_36
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->Al:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Aw:Lcom/google/android/gms/internal/zzqz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_93

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_44
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->Am:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ax:Lcom/google/android/gms/internal/zzqz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_9f

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_52
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->An:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/common/stats/zze;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ay:Lcom/google/android/gms/internal/zzqz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/stats/zze;-><init>(J)V

    iput-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->Ao:Lcom/google/android/gms/common/stats/zze;

    new-instance v1, Lcom/google/android/gms/common/stats/zze;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->Ay:Lcom/google/android/gms/internal/zzqz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/stats/zze;-><init>(J)V

    iput-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->Aq:Lcom/google/android/gms/common/stats/zze;

    goto :goto_1b

    :cond_7b
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_28

    :cond_87
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_36

    :cond_93
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_44

    :cond_9f
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_52
.end method

.method private static getLogLevel()I
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->Ap:Ljava/lang/Integer;

    if-nez v0, :cond_c

    :try_start_4
    sget v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->Ap:Ljava/lang/Integer;
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_c} :catch_13

    :cond_c
    :goto_c
    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->Ap:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catch_13
    move-exception v0

    sget v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->Ap:Ljava/lang/Integer;

    goto :goto_c
.end method

.method public static zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UntrackedBindService"
        }
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {p1}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    return-void
.end method

.method public static zza$58d5677d(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UntrackedBindService"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 1000
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v0

    .line 0
    :goto_8
    if-eqz v1, :cond_1d

    const-string/jumbo v1, "ConnectionTracker"

    const-string/jumbo v2, "Attempted to bind to a service in a STOPPED package."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_13
    return v0

    .line 1000
    :cond_14
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/zzd;->zzq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_8

    .line 0
    :cond_1d
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p2}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    goto :goto_13
.end method

.method public static zzaux()Lcom/google/android/gms/common/stats/zzb;
    .registers 2

    sget-object v1, Lcom/google/android/gms/common/stats/zzb;->yL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->Aj:Lcom/google/android/gms/common/stats/zzb;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/common/stats/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->Aj:Lcom/google/android/gms/common/stats/zzb;

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->Aj:Lcom/google/android/gms/common/stats/zzb;

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza$31a3108d(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/common/stats/zzb;->zza$58d5677d(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method
