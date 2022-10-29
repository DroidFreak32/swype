.class public final Lcom/google/android/gms/internal/zzna;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zznc;",
        ">;"
    }
.end annotation


# instance fields
.field private final dp:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/auth/api/zzb;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 14

    .prologue
    .line 0
    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    if-nez p4, :cond_15

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_12
    iput-object v0, p0, Lcom/google/android/gms/internal/zzna;->dp:Landroid/os/Bundle;

    return-void

    .line 1000
    :cond_15
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_12
.end method


# virtual methods
.method protected final zzaeu()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzna;->dp:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzafk()Z
    .registers 4

    .prologue
    .line 0
    .line 2000
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->tN:Lcom/google/android/gms/common/internal/zzg;

    .line 3000
    iget-object v0, v2, Lcom/google/android/gms/common/internal/zzg;->aL:Landroid/accounts/Account;

    if-eqz v0, :cond_2e

    iget-object v0, v2, Lcom/google/android/gms/common/internal/zzg;->aL:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 0
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/google/android/gms/auth/api/zza;->API:Lcom/google/android/gms/common/api/Api;

    .line 4000
    iget-object v1, v2, Lcom/google/android/gms/common/internal/zzg;->yk:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzg$zza;

    if-eqz v0, :cond_24

    iget-object v1, v0, Lcom/google/android/gms/common/internal/zzg$zza;->dT:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_24
    iget-object v0, v2, Lcom/google/android/gms/common/internal/zzg;->rX:Ljava/util/Set;

    .line 0
    :goto_26
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    :goto_2d
    return v0

    .line 3000
    :cond_2e
    const/4 v0, 0x0

    goto :goto_a

    .line 4000
    :cond_30
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzg;->rX:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzg$zza;->dT:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    goto :goto_26

    .line 0
    :cond_3e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected final synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    .prologue
    .line 0
    .line 5000
    invoke-static {p1}, Lcom/google/android/gms/internal/zznc$zza;->zzch(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznc;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected final zzqz()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method protected final zzra()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method
