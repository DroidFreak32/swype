.class public final Lcom/google/android/gms/signin/internal/zzg;
.super Lcom/google/android/gms/common/internal/zzk;

# interfaces
.implements Lcom/google/android/gms/internal/zzvu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/signin/internal/zze;",
        ">;",
        "Lcom/google/android/gms/internal/zzvu;"
    }
.end annotation


# instance fields
.field private final aub:Z

.field private final auc:Landroid/os/Bundle;

.field private final tN:Lcom/google/android/gms/common/internal/zzg;

.field private ym:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 14

    .prologue
    const/4 v3, 0x1

    .line 0
    .line 3000
    iget-object v0, p3, Lcom/google/android/gms/common/internal/zzg;->yl:Lcom/google/android/gms/internal/zzvv;

    .line 4000
    iget-object v1, p3, Lcom/google/android/gms/common/internal/zzg;->ym:Ljava/lang/Integer;

    .line 2000
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 5000
    iget-object v4, p3, Lcom/google/android/gms/common/internal/zzg;->aL:Landroid/accounts/Account;

    .line 2000
    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_1e

    const-string/jumbo v2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1e
    if-eqz v0, :cond_76

    const-string/jumbo v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 6000
    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzvv;->atS:Z

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 7000
    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzvv;->dO:Z

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.serverClientId"

    .line 8000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzvv;->dR:Ljava/lang/String;

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 9000
    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzvv;->dQ:Z

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.hostedDomain"

    .line 10000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzvv;->dS:Ljava/lang/String;

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 11000
    iget-boolean v2, v0, Lcom/google/android/gms/internal/zzvv;->atT:Z

    .line 2000
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzvv;->atU:Ljava/lang/Long;

    .line 2000
    if-eqz v1, :cond_66

    const-string/jumbo v1, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    .line 13000
    iget-object v2, v0, Lcom/google/android/gms/internal/zzvv;->atU:Ljava/lang/Long;

    .line 2000
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14000
    :cond_66
    iget-object v1, v0, Lcom/google/android/gms/internal/zzvv;->atV:Ljava/lang/Long;

    .line 2000
    if-eqz v1, :cond_76

    const-string/jumbo v1, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    .line 15000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzvv;->atV:Ljava/lang/Long;

    .line 2000
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_76
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 0
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/zzg;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/zzg;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/zzg;Landroid/os/Bundle;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 15

    .prologue
    .line 0
    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-boolean p3, p0, Lcom/google/android/gms/signin/internal/zzg;->aub:Z

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/zzg;->tN:Lcom/google/android/gms/common/internal/zzg;

    iput-object p5, p0, Lcom/google/android/gms/signin/internal/zzg;->auc:Landroid/os/Bundle;

    .line 1000
    iget-object v0, p4, Lcom/google/android/gms/common/internal/zzg;->ym:Ljava/lang/Integer;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/signin/internal/zzg;->ym:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final connect()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzd$zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzd$zzi;-><init>(Lcom/google/android/gms/common/internal/zzd;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/internal/zzq;Z)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzg;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zzg;->ym:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/gms/signin/internal/zze;->zza(Lcom/google/android/gms/common/internal/zzq;IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v0, "SignInClientImpl"

    const-string/jumbo v1, "Remote service probably died when saveDefaultAccount is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public final zza(Lcom/google/android/gms/signin/internal/zzd;)V
    .registers 6

    .prologue
    .line 0
    const-string/jumbo v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16000
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzg;->tN:Lcom/google/android/gms/common/internal/zzg;

    .line 17000
    iget-object v1, v0, Lcom/google/android/gms/common/internal/zzg;->aL:Landroid/accounts/Account;

    if-eqz v1, :cond_41

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzg;->aL:Landroid/accounts/Account;

    move-object v1, v0

    .line 16000
    :goto_f
    const/4 v0, 0x0

    const-string/jumbo v2, "<<default account>>"

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzbc(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzk;->zzagj()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    :cond_27
    new-instance v2, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    iget-object v3, p0, Lcom/google/android/gms/signin/internal/zzg;->ym:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzg;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zze;

    new-instance v1, Lcom/google/android/gms/signin/internal/SignInRequest;

    invoke-direct {v1, v2}, Lcom/google/android/gms/signin/internal/SignInRequest;-><init>(Lcom/google/android/gms/common/internal/ResolveAccountRequest;)V

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/signin/internal/zze;->zza(Lcom/google/android/gms/signin/internal/SignInRequest;Lcom/google/android/gms/signin/internal/zzd;)V

    :goto_40
    return-void

    .line 17000
    :cond_41
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "<<default account>>"

    const-string/jumbo v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_4c} :catch_4e

    move-object v1, v0

    goto :goto_f

    .line 0
    :catch_4e
    move-exception v0

    const-string/jumbo v1, "SignInClientImpl"

    const-string/jumbo v2, "Remote service probably died when signIn is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_58
    new-instance v1, Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {v1}, Lcom/google/android/gms/signin/internal/SignInResponse;-><init>()V

    invoke-interface {p1, v1}, Lcom/google/android/gms/signin/internal/zzd;->zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_60} :catch_61

    goto :goto_40

    :catch_61
    move-exception v1

    const-string/jumbo v1, "SignInClientImpl"

    const-string/jumbo v2, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method

.method protected final zzaeu()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzg;->tN:Lcom/google/android/gms/common/internal/zzg;

    .line 18000
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzg;->bX:Ljava/lang/String;

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzg;->auc:Landroid/os/Bundle;

    const-string/jumbo v1, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/zzg;->tN:Lcom/google/android/gms/common/internal/zzg;

    .line 19000
    iget-object v2, v2, Lcom/google/android/gms/common/internal/zzg;->bX:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/zzg;->auc:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzafk()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/signin/internal/zzg;->aub:Z

    return v0
.end method

.method protected final synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    .prologue
    .line 0
    .line 20000
    invoke-static {p1}, Lcom/google/android/gms/signin/internal/zze$zza;->zzkv(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final zzbzo()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zzg;->zzasa()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/zzg;->ym:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/signin/internal/zze;->zzza(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v0, "SignInClientImpl"

    const-string/jumbo v1, "Remote service probably died when clearAccountFromSessionStore is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method protected final zzqz()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method protected final zzra()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method
