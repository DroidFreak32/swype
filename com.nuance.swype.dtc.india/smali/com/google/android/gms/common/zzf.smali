.class public Lcom/google/android/gms/common/zzf;
.super Ljava/lang/Object;


# static fields
.field private static rx:Lcom/google/android/gms/common/zzf;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/zzf;->mContext:Landroid/content/Context;

    return-void
.end method

.method static varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const-string/jumbo v0, "GoogleSignatureVerifier"

    const-string/jumbo v2, "Package has more than one signature."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/common/zzd$zzb;

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzd$zzb;-><init>([B)V

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    aget-object v3, p1, v0

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/zzd$zza;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v0, p1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/android/gms/common/zzd$zzd;->ro:[Lcom/google/android/gms/common/zzd$zza;

    invoke-static {p0, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    new-array v2, v0, [Lcom/google/android/gms/common/zzd$zza;

    sget-object v3, Lcom/google/android/gms/common/zzd$zzd;->ro:[Lcom/google/android/gms/common/zzd$zza;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static zzbz(Landroid/content/Context;)Lcom/google/android/gms/common/zzf;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/google/android/gms/common/zzf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/zzf;->rx:Lcom/google/android/gms/common/zzf;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/zzd;->zzbq(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/common/zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/zzf;->rx:Lcom/google/android/gms/common/zzf;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/zzf;->rx:Lcom/google/android/gms/common/zzf;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
