.class public final Lcom/google/android/gms/internal/zzqc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqc$zzb;,
        Lcom/google/android/gms/internal/zzqc$zza;,
        Lcom/google/android/gms/internal/zzqc$zzd;,
        Lcom/google/android/gms/internal/zzqc$zzc;
    }
.end annotation


# static fields
.field private static uG:Lcom/google/android/gms/internal/zzqc;

.field static final zzamr:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field private final sh:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private uF:J

.field private uH:I

.field private final uJ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqc$zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final uK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzpj",
            "<*>;",
            "Lcom/google/android/gms/internal/zzqc$zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field uL:Lcom/google/android/gms/internal/zzpr;

.field final uM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzpj",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final uN:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final uO:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/zzqc$zza;",
            ">;"
        }
    .end annotation
.end field

.field private uP:Lcom/google/android/gms/internal/zzqc$zzb;

.field private ue:J

.field private uf:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzqc;->zzamr:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqc;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzqc;->uH:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static zzaqd()Lcom/google/android/gms/internal/zzqc;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/zzqc;->zzamr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzqc;->uG:Lcom/google/android/gms/internal/zzqc;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic zzaqf()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzqc;->zzamr:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzqc;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzqc;->uf:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzqc;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzqc;->ue:J

    return-wide v0
.end method

.method static synthetic zzd$7270594f()Lcom/google/android/gms/internal/zzpr;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzqc;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uM:Ljava/util/Set;

    return-object v0
.end method

.method private zze(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uJ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zzc;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc;->uJ:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzqc$zzc;->zzf(IZ)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "onRelease received for unknown instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzqc;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uO:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzqc;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzqc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzqc;)Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzqc;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzqc;->uF:J

    return-wide v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzqc;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzqc;->uH:I

    return v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x8

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "GoogleApiManager"

    iget v2, p1, Landroid/os/Message;->what:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Unknown message id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzpl;

    .line 2000
    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1000
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzpj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzqc$zzc;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpl;->cancel()V

    :cond_0
    :goto_2
    move v0, v3

    .line 0
    goto :goto_0

    .line 3000
    :cond_1
    iget-object v5, v2, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v5

    .line 1000
    if-eqz v5, :cond_2

    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->rb:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpl;->zza(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    .line 4000
    :cond_2
    iget-object v5, v2, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    .line 1000
    if-eqz v5, :cond_3

    .line 5000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    .line 1000
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzpl;->zza(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1

    .line 6000
    :cond_3
    iget-object v1, v2, Lcom/google/android/gms/internal/zzqc$zzc;->uW:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 0
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 8000
    iget-object v1, v0, Lcom/google/android/gms/common/api/zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    .line 7000
    iget-object v4, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    new-instance v5, Lcom/google/android/gms/internal/zzqc$zzc;

    invoke-direct {v5, p0, v0}, Lcom/google/android/gms/internal/zzqc$zzc;-><init>(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/common/api/zzc;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v4, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzqc$zzc;

    .line 9000
    iget-object v4, v1, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    new-instance v5, Lcom/google/android/gms/internal/zzqy;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzqc$zzc;->rQ:Lcom/google/android/gms/internal/zzpj;

    .line 10000
    iget-object v6, v6, Lcom/google/android/gms/internal/zzpj;->pN:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/Api;->zzans()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v6

    .line 9000
    iget-object v7, v1, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/zzqy;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/Api$zze;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7000
    iget-object v4, p0, Lcom/google/android/gms/internal/zzqc;->uJ:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11000
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqc$zzc;->connect()V

    .line 7000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc;->uO:Landroid/util/SparseArray;

    new-instance v4, Lcom/google/android/gms/internal/zzqc$zza;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzqc;->uN:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, p0, v0, v2, v5}, Lcom/google/android/gms/internal/zzqc$zza;-><init>(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/common/api/zzc;ILjava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uP:Lcom/google/android/gms/internal/zzqc$zzb;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uP:Lcom/google/android/gms/internal/zzqc$zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqc$zzb;->zza(Lcom/google/android/gms/internal/zzqc$zzb;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzqc$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc;->uN:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqc;->uO:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzqc$zzb;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uP:Lcom/google/android/gms/internal/zzqc$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uP:Lcom/google/android/gms/internal/zzqc$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqc$zzb;->start()V

    goto/16 :goto_2

    .line 12000
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zzc;

    .line 13000
    iput-object v2, v0, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    .line 14000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqc$zzc;->connect()V

    goto :goto_3

    .line 0
    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 15000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uJ:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zzc;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc;->uJ:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 16000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzqc$zzc;->uV:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzqy;

    new-instance v4, Lcom/google/android/gms/internal/zzqc$zzc$1;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/zzqc$zzc$1;-><init>(Lcom/google/android/gms/internal/zzqc$zzc;I)V

    .line 17000
    iget-object v0, v1, Lcom/google/android/gms/internal/zzqy;->vG:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzqy$zzc;->zzaqn()V

    :cond_6
    iput-object v4, v1, Lcom/google/android/gms/internal/zzqy;->vI:Lcom/google/android/gms/internal/zzqy$zzc;

    goto/16 :goto_2

    .line 15000
    :cond_7
    const-string/jumbo v0, "GoogleApiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "onCleanupLeakInternal received for unknown instance: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 0
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_8

    move v0, v3

    :cond_8
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzqc;->zze(IZ)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzpi;

    .line 18000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc;->uJ:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/gms/internal/zzpi;->sx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzqc$zzc;

    .line 19000
    iget-object v2, v1, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzc(Lcom/google/android/gms/internal/zzpi;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaql()V

    goto/16 :goto_2

    :cond_9
    iget-object v2, v1, Lcom/google/android/gms/internal/zzqc$zzc;->uS:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/google/android/gms/internal/zzqc$zzc;->uY:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzqc$zzc;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqc$zzc;->connect()V

    goto/16 :goto_2

    .line 0
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uJ:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uJ:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zzc;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    const-string/jumbo v4, "Error resolution was canceled by the user."

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 20000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqc$zzc;->zzab(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_2

    .line 0
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zzc;

    .line 22000
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqc$zzc;->connect()V

    goto/16 :goto_2

    .line 0
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zzc;

    .line 24000
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzqc$zzc;->ud:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqk()V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    .line 25000
    iget-object v1, v1, Lcom/google/android/gms/internal/zzqc;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 24000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzqc$zzc;->uQ:Lcom/google/android/gms/internal/zzqc;

    .line 26000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzqc;->mContext:Landroid/content/Context;

    .line 24000
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_b

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v2, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqc$zzc;->zzab(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqc$zzc;->uT:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto/16 :goto_2

    :cond_b
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v2, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_4

    .line 0
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->uK:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqc$zzc;

    .line 27000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqc$zzc;->zzaqm()V

    goto/16 :goto_2

    .line 0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzqc;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final zzaoo()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    .prologue
    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 28000
    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqc;->sh:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzqc;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zza(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
