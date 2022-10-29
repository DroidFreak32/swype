.class public final Lcom/google/android/gms/internal/zzpy;
.super Lcom/google/android/gms/common/api/GoogleApiClient;

# interfaces
.implements Lcom/google/android/gms/internal/zzqh$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpy$zza;,
        Lcom/google/android/gms/internal/zzpy$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final sf:I

.field private final sh:Lcom/google/android/gms/common/GoogleApiAvailability;

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

.field private final tr:Ljava/util/concurrent/locks/Lock;

.field private final ua:Lcom/google/android/gms/common/internal/zzl;

.field private ub:Lcom/google/android/gms/internal/zzqh;

.field final uc:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<**>;>;"
        }
    .end annotation
.end field

.field private volatile ud:Z

.field private ue:J

.field private uf:J

.field private final ug:Lcom/google/android/gms/internal/zzpy$zza;

.field uh:Lcom/google/android/gms/internal/zzqe;

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

.field uj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final uk:Lcom/google/android/gms/internal/zzqo;

.field private final ul:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpp;",
            ">;"
        }
    .end annotation
.end field

.field private um:Ljava/lang/Integer;

.field un:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzqx;",
            ">;"
        }
    .end annotation
.end field

.field final uo:Lcom/google/android/gms/internal/zzqy;

.field private final up:Lcom/google/android/gms/common/internal/zzl$zza;

.field final zzahv:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzvu;",
            "Lcom/google/android/gms/internal/zzvv;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpy;->ue:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzpy;->uf:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->uj:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/zzqo;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzqo;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->uk:Lcom/google/android/gms/internal/zzqo;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->un:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/internal/zzpy$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzpy$1;-><init>(Lcom/google/android/gms/internal/zzpy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->up:Lcom/google/android/gms/common/internal/zzl$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    new-instance v2, Lcom/google/android/gms/common/internal/zzl;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy;->up:Lcom/google/android/gms/common/internal/zzl$zza;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzl$zza;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpy;->zzahv:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/internal/zzpy$zza;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/internal/zzpy$zza;-><init>(Lcom/google/android/gms/internal/zzpy;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->ug:Lcom/google/android/gms/internal/zzpy$zza;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzpy;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/internal/zzpy;->sf:I

    iget v2, p0, Lcom/google/android/gms/internal/zzpy;->sf:I

    if-ltz v2, :cond_57

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    :cond_57
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tO:Ljava/util/Map;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ul:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/internal/zzqy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzqy;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->uo:Lcom/google/android/gms/internal/zzqy;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_70
    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_da

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    .line 1000
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/google/android/gms/common/internal/zzl;->zzail:Ljava/lang/Object;

    monitor-enter v5

    :try_start_84
    iget-object v6, v4, Lcom/google/android/gms/common/internal/zzl;->yF:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    const-string/jumbo v6, "GmsClientEvents"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x3e

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v9, "registerConnectionCallbacks(): listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is already registered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bb
    monitor-exit v5
    :try_end_bc
    .catchall {:try_start_84 .. :try_end_bc} :catchall_d7

    iget-object v5, v4, Lcom/google/android/gms/common/internal/zzl;->yE:Lcom/google/android/gms/common/internal/zzl$zza;

    invoke-interface {v5}, Lcom/google/android/gms/common/internal/zzl$zza;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_70

    iget-object v5, v4, Lcom/google/android/gms/common/internal/zzl;->mHandler:Landroid/os/Handler;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/zzl;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_70

    :cond_d1
    :try_start_d1
    iget-object v6, v4, Lcom/google/android/gms/common/internal/zzl;->yF:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    :catchall_d7
    move-exception v2

    monitor-exit v5
    :try_end_d9
    .catchall {:try_start_d1 .. :try_end_d9} :catchall_d7

    throw v2

    .line 0
    :cond_da
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_de
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_de

    :cond_f0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzpy;->tN:Lcom/google/android/gms/common/internal/zzg;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy;->si:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method public static zza(Ljava/lang/Iterable;Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzafk()Z

    move-result v5

    if-eqz v5, :cond_1b

    move v2, v3

    :cond_1b
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzafz()Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v3

    :goto_22
    move v1, v0

    goto :goto_8

    :cond_24
    if-eqz v2, :cond_2c

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_2b

    const/4 v3, 0x2

    :cond_2b
    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x3

    goto :goto_2b

    :cond_2e
    move v0, v1

    goto :goto_22
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqu;Z)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/zzre;->zt:Lcom/google/android/gms/internal/zzrf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzrf;->zzg(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzpy$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/internal/zzpy$4;-><init>(Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/internal/zzqu;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpy;)V
    .registers 3

    .prologue
    .line 0
    .line 28000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 29000
    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpy;->ud:Z

    .line 28000
    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpy;->zzapt()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic zza$67d7fb80(Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqu;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzpy;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqu;Z)V

    return-void
.end method

.method private zzapt()V
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    .line 16000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/common/internal/zzl;->yI:Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqh;->connect()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzpy;)V
    .registers 3

    .prologue
    .line 0
    .line 30000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpy;->zzapw()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpy;->zzapt()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzpy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zzfk(I)V
    .registers 14

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    if-nez v1, :cond_11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    if-eqz v1, :cond_67

    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpy;->zzfl(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzpy;->zzfl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Cannot use sign-in mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ". Mode was already set to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzafk()Z

    move-result v5

    if-eqz v5, :cond_86

    move v2, v3

    :cond_86
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzafz()Z

    move-result v0

    if-eqz v0, :cond_e8

    move v0, v3

    :goto_8d
    move v1, v0

    goto :goto_73

    :cond_8f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_ea

    :cond_98
    :pswitch_98
    new-instance v0, Lcom/google/android/gms/internal/zzqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpy;->zzahv:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzpy;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzpy;->tN:Lcom/google/android/gms/common/internal/zzg;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzpy;->tO:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzpy;->si:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v10, p0, Lcom/google/android/gms/internal/zzpy;->ul:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/zzqa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzqh$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    goto/16 :goto_10

    :pswitch_b5
    if-nez v2, :cond_c0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c0
    if-eqz v1, :cond_98

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_cb
    if-eqz v2, :cond_98

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy;->zzahv:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpy;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzpy;->tN:Lcom/google/android/gms/common/internal/zzg;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzpy;->tO:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzpy;->si:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzpy;->ul:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/zzpq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/zzpq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    goto/16 :goto_10

    :cond_e8
    move v0, v1

    goto :goto_8d

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_cb
        :pswitch_98
    .end packed-switch
.end method

.method private static zzfl(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const-string/jumbo v0, "UNKNOWN"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "SIGN_IN_MODE_NONE"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "SIGN_IN_MODE_REQUIRED"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "SIGN_IN_MODE_OPTIONAL"

    goto :goto_6

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_40

    move v0, v1

    :goto_d
    const-string/jumbo v3, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_18
    iget v0, p0, Lcom/google/android/gms/internal/zzpy;->sf:I

    if-ltz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    if-eqz v0, :cond_42

    :goto_20
    const-string/jumbo v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpy;->zzfk(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    .line 14000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/common/internal/zzl;->yI:Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqh;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_5a

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_40
    move v0, v2

    goto :goto_d

    :cond_42
    move v1, v2

    goto :goto_20

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpy;->zza(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_5a

    goto :goto_26

    :catchall_5a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_73
    .catchall {:try_start_61 .. :try_end_73} :catchall_5a
.end method

.method public final clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpy;->isConnected()Z

    move-result v0

    const-string/jumbo v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2e

    const/4 v0, 0x1

    :goto_15
    const-string/jumbo v2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzqu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    sget-object v3, Lcom/google/android/gms/internal/zzre;->bJ:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/internal/zzpy;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqu;Z)V

    :goto_2d
    return-object v0

    :cond_2e
    move v0, v1

    goto :goto_15

    :cond_30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzpy$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/zzpy$2;-><init>(Lcom/google/android/gms/internal/zzpy;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzqu;)V

    new-instance v3, Lcom/google/android/gms/internal/zzpy$3;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzpy$3;-><init>(Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/internal/zzqu;)V

    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzpy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/zzre;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy;->ug:Lcom/google/android/gms/internal/zzpy$zza;

    .line 15000
    const-string/jumbo v4, "Handler must not be null"

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzahv:Landroid/os/Looper;

    .line 0
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_2d
.end method

.method public final connect()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_8
    iget v2, p0, Lcom/google/android/gms/internal/zzpy;->sf:I

    if-ltz v2, :cond_56

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    if-eqz v2, :cond_54

    move v2, v1

    :goto_11
    const-string/jumbo v3, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    :cond_17
    :goto_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 13000
    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_6c

    const/4 v3, 0x3

    if-eq v2, v3, :cond_29

    if-eq v2, v1, :cond_29

    if-ne v2, v4, :cond_2a

    :cond_29
    move v0, v1

    :cond_2a
    :try_start_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Illegal sign-in mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzpy;->zzfk(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpy;->zzapt()V
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_84

    :try_start_49
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_6c

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_54
    move v2, v0

    goto :goto_11

    :cond_56
    :try_start_56
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    if-nez v2, :cond_73

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzpy;->zza(Ljava/lang/Iterable;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;
    :try_end_6b
    .catchall {:try_start_56 .. :try_end_6b} :catchall_6c

    goto :goto_17

    :catchall_6c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_73
    :try_start_73
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->um:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13000
    :catchall_84
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_8b
    .catchall {:try_start_73 .. :try_end_8b} :catchall_6c
.end method

.method public final disconnect()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uo:Lcom/google/android/gms/internal/zzqy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqy;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqh;->disconnect()V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uk:Lcom/google/android/gms/internal/zzqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqo;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpm$zza;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzpm$zza;->zza(Lcom/google/android/gms/internal/zzqy$zzb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpm$zza;->cancel()V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    goto :goto_1e

    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_32

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_47
    return-void

    :cond_48
    :try_start_48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpy;->zzapw()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzl;->zzasw()V
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_47
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpy;->ud:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uo:Lcom/google/android/gms/internal/zzqy;

    .line 27000
    const-string/jumbo v1, " mUnconsumedApiCalls.size()="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzqh;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->zzahv:Landroid/os/Looper;

    return-object v0
.end method

.method public final isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqh;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final isConnecting()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqh;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zzl;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 7

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    .line 18000
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/zzl;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzl;->yH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string/jumbo v0, "GmsClientEvents"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "unregisterConnectionFailedListener(): listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    monitor-exit v1

    return-void

    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzqx;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->un:Ljava/util/Set;

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy;->un:Ljava/util/Set;

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->un:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/Api;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzans()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzqt;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqh;->zza(Lcom/google/android/gms/internal/zzqt;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final zzaof()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqh;->zzaof()V

    :cond_9
    return-void
.end method

.method final zzapw()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    .line 17000
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpy;->ud:Z

    .line 0
    if-nez v2, :cond_7

    :goto_6
    return v0

    :cond_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpy;->ud:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ug:Lcom/google/android/gms/internal/zzpy$zza;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzpy$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ug:Lcom/google/android/gms/internal/zzpy$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uh:Lcom/google/android/gms/internal/zzqe;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uh:Lcom/google/android/gms/internal/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqe;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uh:Lcom/google/android/gms/internal/zzqe;

    :cond_20
    move v0, v1

    goto :goto_6
.end method

.method final zzapx()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->un:Ljava/util/Set;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_1f

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_f
    return v0

    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->un:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    move-result v1

    if-nez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_f

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final zzapy()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string/jumbo v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/internal/zzpy;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzqx;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->un:Ljava/util/Set;

    if-nez v0, :cond_1d

    const-string/jumbo v0, "GoogleApiClientImpl"

    const-string/jumbo v1, "Attempted to remove pending transform when no transforms are registered."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_34

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->un:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string/jumbo v0, "GoogleApiClientImpl"

    const-string/jumbo v1, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_34

    goto :goto_17

    :catchall_34
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpy;->zzapx()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqh;->zzapb()V
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_34

    goto :goto_17
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;
    .registers 6
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

    .prologue
    .line 0
    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpm$zza;->sJ:Lcom/google/android/gms/common/api/Api$zzc;

    .line 0
    if-eqz v0, :cond_57

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    .line 3000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzpm$zza;->sJ:Lcom/google/android/gms/common/api/Api$zzc;

    .line 0
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 4000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpm$zza;->pN:Lcom/google/android/gms/common/api/Api;

    .line 0
    if-eqz v0, :cond_59

    .line 5000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpm$zza;->pN:Lcom/google/android/gms/common/api/Api;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/common/api/Api;->mName:Ljava/lang/String;

    .line 0
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "GoogleApiClient is not configured to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_48
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_69

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_56
    return-object p1

    :cond_57
    const/4 v0, 0x0

    goto :goto_5

    :cond_59
    const-string/jumbo v0, "the API"

    goto :goto_1b

    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqh;->zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_69

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_56

    :catchall_69
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zzc(IZ)V
    .registers 13

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    if-ne p1, v1, :cond_3c

    if-nez p2, :cond_3c

    .line 24000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpy;->ud:Z

    .line 23000
    if-nez v0, :cond_3c

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzpy;->ud:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uh:Lcom/google/android/gms/internal/zzqe;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/zzpy$zzb;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzpy$zzb;-><init>(Lcom/google/android/gms/internal/zzpy;)V

    invoke-static {v0, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqe$zza;)Lcom/google/android/gms/internal/zzqe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uh:Lcom/google/android/gms/internal/zzqe;

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ug:Lcom/google/android/gms/internal/zzpy$zza;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy;->ug:Lcom/google/android/gms/internal/zzpy$zza;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzpy$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpy;->ue:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/zzpy$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ug:Lcom/google/android/gms/internal/zzpy$zza;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy;->ug:Lcom/google/android/gms/internal/zzpy$zza;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/zzpy$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzpy;->uf:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/zzpy$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 0
    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uo:Lcom/google/android/gms/internal/zzqy;

    .line 25000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    sget-object v3, Lcom/google/android/gms/internal/zzqy;->vF:[Lcom/google/android/gms/internal/zzpm$zza;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzpm$zza;

    array-length v4, v0

    move v3, v2

    :goto_4a
    if-ge v3, v4, :cond_5e

    aget-object v5, v0, v3

    new-instance v6, Lcom/google/android/gms/common/api/Status;

    const/16 v7, 0x8

    const-string/jumbo v8, "The connection to Google Play services was lost"

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzpm$zza;->zzaa(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 0
    :cond_5e
    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    .line 26000
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/common/internal/zzl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v0, v4, :cond_b6

    move v0, v1

    :goto_6d
    const-string/jumbo v2, "onUnintentionalDisconnection must only be called on the Handler thread"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, v3, Lcom/google/android/gms/common/internal/zzl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v3, Lcom/google/android/gms/common/internal/zzl;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_7c
    iput-boolean v0, v3, Lcom/google/android/gms/common/internal/zzl;->yK:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v3, Lcom/google/android/gms/common/internal/zzl;->yF:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v3, Lcom/google/android/gms/common/internal/zzl;->yJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8f
    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-boolean v5, v3, Lcom/google/android/gms/common/internal/zzl;->yI:Z

    if-eqz v5, :cond_b8

    iget-object v5, v3, Lcom/google/android/gms/common/internal/zzl;->yJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v5, v2, :cond_b8

    iget-object v5, v3, Lcom/google/android/gms/common/internal/zzl;->yF:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    goto :goto_8f

    :catchall_b3
    move-exception v0

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_7c .. :try_end_b5} :catchall_b3

    throw v0

    :cond_b6
    move v0, v2

    goto :goto_6d

    :cond_b8
    :try_start_b8
    iget-object v0, v3, Lcom/google/android/gms/common/internal/zzl;->yG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/google/android/gms/common/internal/zzl;->yK:Z

    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_b8 .. :try_end_c1} :catchall_b3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzl;->zzasw()V

    if-ne p1, v9, :cond_cb

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpy;->zzapt()V

    :cond_cb
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;
    .registers 6
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

    .prologue
    .line 0
    .line 7000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpm$zza;->sJ:Lcom/google/android/gms/common/api/Api$zzc;

    .line 0
    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ui:Ljava/util/Map;

    .line 8000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzpm$zza;->sJ:Lcom/google/android/gms/common/api/Api$zzc;

    .line 0
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 9000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpm$zza;->pN:Lcom/google/android/gms/common/api/Api;

    .line 0
    if-eqz v0, :cond_5e

    .line 10000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpm$zza;->pN:Lcom/google/android/gms/common/api/Api;

    .line 11000
    iget-object v0, v0, Lcom/google/android/gms/common/api/Api;->mName:Ljava/lang/String;

    .line 0
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "GoogleApiClient is not configured to use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_48
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    if-nez v0, :cond_62

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5c
    const/4 v0, 0x0

    goto :goto_5

    :cond_5e
    const-string/jumbo v0, "the API"

    goto :goto_1b

    .line 12000
    :cond_62
    :try_start_62
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpy;->ud:Z

    .line 0
    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpm$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpy;->uo:Lcom/google/android/gms/internal/zzqy;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqy;->zzg(Lcom/google/android/gms/internal/zzpm$zza;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->ss:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpm$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V
    :try_end_85
    .catchall {:try_start_62 .. :try_end_85} :catchall_55

    goto :goto_6b

    :cond_86
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_8b
    return-object p1

    :cond_8c
    :try_start_8c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ub:Lcom/google/android/gms/internal/zzqh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzqh;->zzd(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;
    :try_end_91
    .catchall {:try_start_8c .. :try_end_91} :catchall_55

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_8b
.end method

.method public final zzd(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->mContext:Landroid/content/Context;

    .line 20000
    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 0
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zzc(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpy;->zzapw()Z

    .line 21000
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpy;->ud:Z

    .line 0
    if-nez v0, :cond_60

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    .line 22000
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/common/internal/zzl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_61

    move v0, v1

    :goto_23
    const-string/jumbo v3, "onConnectionFailure must only be called on the Handler thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, v2, Lcom/google/android/gms/common/internal/zzl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v2, Lcom/google/android/gms/common/internal/zzl;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_31
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v2, Lcom/google/android/gms/common/internal/zzl;->yH:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v2, Lcom/google/android/gms/common/internal/zzl;->yJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    :goto_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-boolean v5, v2, Lcom/google/android/gms/common/internal/zzl;->yI:Z

    if-eqz v5, :cond_5a

    iget-object v5, v2, Lcom/google/android/gms/common/internal/zzl;->yJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eq v5, v3, :cond_63

    :cond_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_31 .. :try_end_5b} :catchall_6f

    .line 0
    :goto_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzl;->zzasw()V

    :cond_60
    return-void

    .line 22000
    :cond_61
    const/4 v0, 0x0

    goto :goto_23

    :cond_63
    :try_start_63
    iget-object v5, v2, Lcom/google/android/gms/common/internal/zzl;->yH:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_42

    :catchall_6f
    move-exception v0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_63 .. :try_end_71} :catchall_6f

    throw v0

    :cond_72
    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_6f

    goto :goto_5b
.end method

.method public final zzm(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy;->uc:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpm$zza;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpy;->zzd(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    goto :goto_2

    :cond_16
    iget-object v3, p0, Lcom/google/android/gms/internal/zzpy;->ua:Lcom/google/android/gms/common/internal/zzl;

    .line 19000
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/common/internal/zzl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v0, v4, :cond_8a

    move v0, v1

    :goto_25
    const-string/jumbo v4, "onConnectionSuccess must only be called on the Handler thread"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v4, v3, Lcom/google/android/gms/common/internal/zzl;->zzail:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2e
    iget-boolean v0, v3, Lcom/google/android/gms/common/internal/zzl;->yK:Z

    if-nez v0, :cond_8c

    move v0, v1

    :goto_33
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    iget-object v0, v3, Lcom/google/android/gms/common/internal/zzl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/google/android/gms/common/internal/zzl;->yK:Z

    iget-object v0, v3, Lcom/google/android/gms/common/internal/zzl;->yG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8e

    :goto_47
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v3, Lcom/google/android/gms/common/internal/zzl;->yF:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v3, Lcom/google/android/gms/common/internal/zzl;->yJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5b
    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-boolean v5, v3, Lcom/google/android/gms/common/internal/zzl;->yI:Z

    if-eqz v5, :cond_90

    iget-object v5, v3, Lcom/google/android/gms/common/internal/zzl;->yE:Lcom/google/android/gms/common/internal/zzl$zza;

    invoke-interface {v5}, Lcom/google/android/gms/common/internal/zzl$zza;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_90

    iget-object v5, v3, Lcom/google/android/gms/common/internal/zzl;->yJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-ne v5, v1, :cond_90

    iget-object v5, v3, Lcom/google/android/gms/common/internal/zzl;->yG:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    goto :goto_5b

    :catchall_87
    move-exception v0

    monitor-exit v4
    :try_end_89
    .catchall {:try_start_2e .. :try_end_89} :catchall_87

    throw v0

    :cond_8a
    move v0, v2

    goto :goto_25

    :cond_8c
    move v0, v2

    goto :goto_33

    :cond_8e
    move v1, v2

    goto :goto_47

    :cond_90
    :try_start_90
    iget-object v0, v3, Lcom/google/android/gms/common/internal/zzl;->yG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/google/android/gms/common/internal/zzl;->yK:Z

    monitor-exit v4
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_87

    return-void
.end method
