.class public abstract Lcom/google/android/gms/common/internal/zzk;
.super Lcom/google/android/gms/common/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$zze;
.implements Lcom/google/android/gms/common/internal/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/zzd",
        "<TT;>;",
        "Lcom/google/android/gms/common/api/Api$zze;",
        "Lcom/google/android/gms/common/internal/zzl$zza;"
    }
.end annotation


# instance fields
.field private final aL:Landroid/accounts/Account;

.field private final dT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final tN:Lcom/google/android/gms/common/internal/zzg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 16

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzm;->zzce(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzm;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzm;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzm;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 19

    .prologue
    .line 0
    .line 1000
    if-nez p7, :cond_40

    const/4 v7, 0x0

    .line 2000
    :goto_3
    if-nez p8, :cond_48

    const/4 v8, 0x0

    .line 3000
    :goto_6
    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/google/android/gms/common/internal/zzg;->sb:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 0
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/common/internal/zzd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzm;Lcom/google/android/gms/common/zzc;ILcom/google/android/gms/common/internal/zzd$zzb;Lcom/google/android/gms/common/internal/zzd$zzc;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->tN:Lcom/google/android/gms/common/internal/zzg;

    .line 4000
    move-object/from16 v0, p6

    iget-object v1, v0, Lcom/google/android/gms/common/internal/zzg;->aL:Landroid/accounts/Account;

    .line 0
    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->aL:Landroid/accounts/Account;

    .line 5000
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/google/android/gms/common/internal/zzg;->yj:Ljava/util/Set;

    .line 6000
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1000
    :cond_40
    new-instance v7, Lcom/google/android/gms/common/internal/zzk$1;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Lcom/google/android/gms/common/internal/zzk$1;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_3

    .line 2000
    :cond_48
    new-instance v8, Lcom/google/android/gms/common/internal/zzk$2;

    move-object/from16 v0, p8

    invoke-direct {v8, v0}, Lcom/google/android/gms/common/internal/zzk$2;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_6

    .line 0
    :cond_50
    iput-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->dT:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->aL:Landroid/accounts/Account;

    return-object v0
.end method

.method protected final zzasc()Ljava/util/Set;
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

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk;->dT:Ljava/util/Set;

    return-object v0
.end method
