.class public final Lcom/google/android/gms/common/internal/zza;
.super Lcom/google/android/gms/common/internal/zzq$zza;


# instance fields
.field xi:I


# direct methods
.method public static zza(Lcom/google/android/gms/common/internal/zzq;)Landroid/accounts/Account;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_7
    invoke-interface {p0}, Lcom/google/android/gms/common/internal/zzq;->getAccount()Landroid/accounts/Account;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_f
    .catchall {:try_start_7 .. :try_end_a} :catchall_1d

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_e
    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    :try_start_10
    const-string/jumbo v1, "AccountAccessor"

    const-string/jumbo v4, "Remote account accessor probably died"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    :catchall_1d
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    instance-of v0, p1, Lcom/google/android/gms/common/internal/zza;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final getAccount()Landroid/accounts/Account;
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/internal/zza;->xi:I

    if-ne v0, v1, :cond_a

    :goto_9
    return-object v2

    :cond_a
    invoke-static {v2, v0}, Lcom/google/android/gms/common/zze;->zze(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_13

    iput v0, p0, Lcom/google/android/gms/common/internal/zza;->xi:I

    goto :goto_9

    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller is not GooglePlayServices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
