.class public final Lcom/google/android/gms/auth/api/credentials/internal/zzg;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/auth/api/credentials/internal/zzk;",
        ">;"
    }
.end annotation


# instance fields
.field final do:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 14

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p4, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzg;->do:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    return-void
.end method


# virtual methods
.method protected final zzaeu()Landroid/os/Bundle;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/zzg;->do:Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_a
    return-object v0

    .line 1000
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "consumer_package"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "password_specification"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_a
.end method

.method protected final synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    .prologue
    .line 0
    .line 2000
    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/internal/zzk$zza;->zzce(Landroid/os/IBinder;)Lcom/google/android/gms/auth/api/credentials/internal/zzk;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected final zzqz()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method protected final zzra()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method
