.class final Lcom/google/android/gms/internal/zzpw$zzd$1;
.super Lcom/google/android/gms/internal/zzqa$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpw$zzd;->zzb(Lcom/google/android/gms/signin/internal/SignInResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tX:Lcom/google/android/gms/internal/zzpw;

.field final synthetic tY:Lcom/google/android/gms/signin/internal/SignInResponse;

.field final synthetic tZ:Lcom/google/android/gms/internal/zzpw$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpw$zzd;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpw$zzd$1;->tZ:Lcom/google/android/gms/internal/zzpw$zzd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzpw$zzd$1;->tX:Lcom/google/android/gms/internal/zzpw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpw$zzd$1;->tY:Lcom/google/android/gms/signin/internal/SignInResponse;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzqa$zza;-><init>(Lcom/google/android/gms/internal/zzpz;)V

    return-void
.end method


# virtual methods
.method public final zzapl()V
    .registers 7

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpw$zzd$1;->tX:Lcom/google/android/gms/internal/zzpw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpw$zzd$1;->tY:Lcom/google/android/gms/signin/internal/SignInResponse;

    .line 2000
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzpw;->zzfi(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 3000
    iget-object v2, v1, Lcom/google/android/gms/signin/internal/SignInResponse;->rF:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/signin/internal/SignInResponse;->aue:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    .line 5000
    iget-object v2, v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->rF:Lcom/google/android/gms/common/ConnectionResult;

    .line 2000
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_4e

    const-string/jumbo v1, "GoogleApiClientConnecting"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzpw;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzpw;->tJ:Z

    .line 6000
    iget-object v2, v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->xj:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzq$zza;->zzdp(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v2

    .line 2000
    iput-object v2, v0, Lcom/google/android/gms/internal/zzpw;->tK:Lcom/google/android/gms/common/internal/zzq;

    .line 7000
    iget-boolean v2, v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->tL:Z

    .line 2000
    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzpw;->tL:Z

    .line 8000
    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zj:Z

    .line 2000
    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzpw;->tM:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzapn()V

    goto :goto_4d

    :cond_65
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzpw;->zzf(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzapq()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpw;->zzapn()V

    goto :goto_4d

    :cond_72
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzpw;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_4d
.end method
