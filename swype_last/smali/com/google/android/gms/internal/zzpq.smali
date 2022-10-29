.class final Lcom/google/android/gms/internal/zzpq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpq$zzb;,
        Lcom/google/android/gms/internal/zzpq$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final th:Lcom/google/android/gms/internal/zzpy;

.field final ti:Lcom/google/android/gms/internal/zzqa;

.field final tj:Lcom/google/android/gms/internal/zzqa;

.field private final tk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/internal/zzqa;",
            ">;"
        }
    .end annotation
.end field

.field private final tl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzqt;",
            ">;"
        }
    .end annotation
.end field

.field private final tm:Lcom/google/android/gms/common/api/Api$zze;

.field tn:Landroid/os/Bundle;

.field to:Lcom/google/android/gms/common/ConnectionResult;

.field tp:Lcom/google/android/gms/common/ConnectionResult;

.field tq:Z

.field final tr:Ljava/util/concurrent/locks/Lock;

.field private ts:I

.field private final zzahv:Landroid/os/Looper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zze;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .registers 28
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
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            ">;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzvu;",
            "Lcom/google/android/gms/internal/zzvv;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpp;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzpp;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tl:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzpq;->tq:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzpq;->ts:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpq;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpq;->th:Lcom/google/android/gms/internal/zzpy;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpq;->zzahv:Landroid/os/Looper;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tm:Lcom/google/android/gms/common/api/Api$zze;

    new-instance v1, Lcom/google/android/gms/internal/zzqa;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpq;->th:Lcom/google/android/gms/internal/zzpy;

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v12, Lcom/google/android/gms/internal/zzpq$zza;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/google/android/gms/internal/zzpq$zza;-><init>(Lcom/google/android/gms/internal/zzpq;B)V

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p14

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzqa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzqh$zza;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    new-instance v1, Lcom/google/android/gms/internal/zzqa;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpq;->th:Lcom/google/android/gms/internal/zzpy;

    new-instance v12, Lcom/google/android/gms/internal/zzpq$zzb;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/google/android/gms/internal/zzpq$zzb;-><init>(Lcom/google/android/gms/internal/zzpq;B)V

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p13

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzqa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;Lcom/google/android/gms/internal/zzqh$zza;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    :cond_87
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    :cond_a1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tk:Ljava/util/Map;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/zzpq;
    .registers 26
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
            ">;)",
            "Lcom/google/android/gms/internal/zzpq;"
        }
    .end annotation

    const/4 v11, 0x0

    new-instance v7, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v7}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v8, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v8}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zze;->zzafz()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object v11, v2

    :cond_2c
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zze;->zzafk()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_3c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_46
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_87

    const/4 v1, 0x1

    :goto_4d
    const-string/jumbo v2, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    new-instance v14, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v14}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v15, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v15}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api;->zzans()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v14, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_87
    const/4 v1, 0x0

    goto :goto_4d

    :cond_89
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    :cond_9b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Each API in the apiTypeMap must have a corresponding client in the clients map."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_df

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzpp;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzpp;->pN:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    :cond_ca
    iget-object v3, v1, Lcom/google/android/gms/internal/zzpp;->pN:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v15, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    :cond_d6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Each ClientCallbacks must have a corresponding API in the apiTypeMap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_df
    new-instance v1, Lcom/google/android/gms/internal/zzpq;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/zzpq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzpy;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/zzc;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zze;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpq;IZ)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 9000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->th:Lcom/google/android/gms/internal/zzpy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzpy;->zzc(IZ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    .line 0
    return-void
.end method

.method private zzapg()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqt;->zzafy()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private zzaph()Z
    .registers 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    .line 4000
    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->ok:I

    .line 0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private zzapi()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tm:Lcom/google/android/gms/common/api/Api$zze;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->th:Lcom/google/android/gms/internal/zzpy;

    .line 6000
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpq;->tm:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zze;->zzaga()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_5
.end method

.method private zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/zzpq;->ts:I

    packed-switch v0, :pswitch_data_20

    const-string/jumbo v0, "CompositeGAC"

    const-string/jumbo v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzpq;->ts:I

    return-void

    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->th:Lcom/google/android/gms/internal/zzpy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzpy;->zzd(Lcom/google/android/gms/common/ConnectionResult;)V

    :pswitch_1c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzapg()V

    goto :goto_13

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_17
    .end packed-switch
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzpq;)V
    .registers 4

    .prologue
    .line 0
    .line 7000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpq;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpq;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzaph()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 8000
    :cond_16
    iget v0, p0, Lcom/google/android/gms/internal/zzpq;->ts:I

    packed-switch v0, :pswitch_data_82

    const-string/jumbo v0, "CompositeGAC"

    const-string/jumbo v1, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzpq;->ts:I

    .line 7000
    :cond_2c
    :goto_2c
    return-void

    .line 8000
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->th:Lcom/google/android/gms/internal/zzpy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tn:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpy;->zzm(Landroid/os/Bundle;)V

    :pswitch_34
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzapg()V

    goto :goto_29

    .line 7000
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/google/android/gms/internal/zzpq;->ts:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzapg()V

    goto :goto_2c

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpq;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqa;->disconnect()V

    goto :goto_2c

    :cond_50
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpq;->zzc(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqa;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpq;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_2c

    :cond_67
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    iget v1, v1, Lcom/google/android/gms/internal/zzqa;->uA:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    iget v2, v2, Lcom/google/android/gms/internal/zzqa;->uA:I

    if-ge v1, v2, :cond_7d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    :cond_7d
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpq;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_2c

    .line 8000
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2d
    .end packed-switch
.end method

.method private static zzc(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private zze(Lcom/google/android/gms/internal/zzpm$zza;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpm$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "+",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 0
    .line 5000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzpm$zza;->sJ:Lcom/google/android/gms/common/api/Api$zzc;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tk:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tk:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final connect()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzpq;->ts:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpq;->tq:Z

    .line 1000
    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqa;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqa;->connect()V

    .line 0
    return-void
.end method

.method public final disconnect()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpq;->to:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzpq;->ts:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqa;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqa;->disconnect()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzapg()V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/zzqa;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "anonClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/zzqa;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final isConnected()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqa;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqa;->isConnected()Z

    move-result v1

    .line 0
    if-nez v1, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzaph()Z

    move-result v1

    if-nez v1, :cond_20

    iget v1, p0, Lcom/google/android/gms/internal/zzpq;->ts:I
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_28

    if-ne v1, v0, :cond_26

    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_20

    :catchall_28
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isConnecting()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/internal/zzpq;->ts:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_b

    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzqt;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpq;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpq;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 3000
    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqa;->isConnected()Z

    move-result v1

    .line 0
    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tl:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/google/android/gms/internal/zzpq;->ts:I

    if-nez v1, :cond_26

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzpq;->ts:I

    :cond_26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqa;->connect()V
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_3b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_33
    return v0

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_33

    :catchall_3b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zzaof()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpq;->isConnecting()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzqa;->disconnect()V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tp:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2d

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->zzahv:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/internal/zzpq$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzpq$1;-><init>(Lcom/google/android/gms/internal/zzpq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_31

    :goto_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzapg()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_27

    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpq;->tr:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final zzapb()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqa;->zzapb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqa;->zzapb()V

    return-void
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpq;->zze(Lcom/google/android/gms/internal/zzpm$zza;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzaph()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzapi()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpm$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V

    :goto_1a
    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqa;->zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object p1

    goto :goto_1a

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqa;->zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object p1

    goto :goto_1a
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpq;->zze(Lcom/google/android/gms/internal/zzpm$zza;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzaph()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpq;->zzapi()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpm$zza;->zzz(Lcom/google/android/gms/common/api/Status;)V

    :goto_1a
    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->tj:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqa;->zzd(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object p1

    goto :goto_1a

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpq;->ti:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqa;->zzd(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object p1

    goto :goto_1a
.end method
