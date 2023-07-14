.class public final Lcom/google/android/gms/auth/api/signin/internal/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/internal/zzc$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->cA:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzd;->zzaga()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "googleSignInStatus"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "googleSignInAccount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "googleSignInAccount"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const-string/jumbo v1, "googleSignInStatus"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/gms/common/api/Status;->sq:Lcom/google/android/gms/common/api/Status;

    :cond_2
    new-instance v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public final revokeAccess(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzbc(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzagl()V

    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzaoe()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzaof()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzc$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$3;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object v0

    return-object v0
.end method

.method public final signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzbc(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzagl()V

    invoke-static {}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzaoe()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzaof()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzc$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzc$2;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object v0

    return-object v0
.end method

.method public final silentSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/OptionalPendingResult",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    .line 1000
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->cA:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zzd;

    .line 2000
    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/internal/zzd;->ee:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3000
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzbc(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzagk()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 4000
    iget-object v0, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->aL:Landroid/accounts/Account;

    .line 5000
    iget-object v6, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->aL:Landroid/accounts/Account;

    .line 6000
    if-nez v0, :cond_2

    if-nez v6, :cond_1

    move v0, v1

    .line 3000
    :goto_0
    if-eqz v0, :cond_4

    .line 7000
    iget-boolean v0, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->dP:Z

    .line 3000
    if-nez v0, :cond_4

    .line 8000
    iget-boolean v0, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->dO:Z

    .line 3000
    if-eqz v0, :cond_0

    .line 9000
    iget-boolean v0, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->dO:Z

    .line 3000
    if-eqz v0, :cond_4

    .line 10000
    iget-object v0, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->dR:Ljava/lang/String;

    .line 11000
    iget-object v6, v5, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->dR:Ljava/lang/String;

    .line 3000
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzafq()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzafq()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzagj()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 12000
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->dA:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iget-wide v8, v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->dF:J

    const-wide/16 v10, 0x12c

    sub-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    move v0, v1

    .line 3000
    :goto_1
    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->sq:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    .line 0
    :goto_2
    if-eqz v0, :cond_5

    .line 13000
    const-string/jumbo v1, "Result must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/common/api/PendingResults$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/PendingResults$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/PendingResults$zzc;->zzc(Lcom/google/android/gms/common/api/Result;)V

    new-instance v0, Lcom/google/android/gms/internal/zzqq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqq;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    .line 0
    :goto_3
    return-object v0

    :cond_1
    move v0, v2

    .line 6000
    goto :goto_0

    :cond_2
    invoke-virtual {v0, v6}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 12000
    goto :goto_1

    .line 3000
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 14000
    :cond_5
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;

    invoke-direct {v0, p0, p1, v3}, Lcom/google/android/gms/auth/api/signin/internal/zzc$1;-><init>(Lcom/google/android/gms/auth/api/signin/internal/zzc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpm$zza;)Lcom/google/android/gms/internal/zzpm$zza;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzqq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzqq;-><init>(Lcom/google/android/gms/common/api/PendingResult;)V

    goto :goto_3
.end method
