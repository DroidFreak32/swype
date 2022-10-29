.class public final Lcom/google/android/gms/common/util/zzy;
.super Ljava/lang/Object;


# direct methods
.method public static zze(Landroid/content/Context;I)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    const-string/jumbo v2, "com.google.android.gms"

    .line 1000
    invoke-static {p0}, Lcom/google/android/gms/internal/zzrp;->zzcq(Landroid/content/Context;)Lcom/google/android/gms/internal/zzro;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/zzro;->zzg(ILjava/lang/String;)Z

    move-result v2

    .line 0
    if-nez v2, :cond_10

    .line 2000
    :cond_f
    :goto_f
    return v0

    .line 0
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_14
    const-string/jumbo v3, "com.google.android.gms"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_1c} :catch_2e

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/common/zzf;->zzbz(Landroid/content/Context;)Lcom/google/android/gms/common/zzf;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2000
    if-eqz v2, :cond_f

    invoke-static {v2, v0}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_37

    move v0, v1

    goto :goto_f

    .line 0
    :catch_2e
    move-exception v1

    const-string/jumbo v1, "UidVerifier"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_f

    .line 2000
    :cond_37
    invoke-static {v2, v1}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v3, Lcom/google/android/gms/common/zzf;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/zze;->zzbu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_47

    move v0, v1

    goto :goto_f

    :cond_47
    const-string/jumbo v1, "GoogleSignatureVerifier"

    const-string/jumbo v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
