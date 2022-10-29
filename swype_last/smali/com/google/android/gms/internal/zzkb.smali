.class public final Lcom/google/android/gms/internal/zzkb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# static fields
.field private static final zzamr:Ljava/lang/Object;

.field private static zzckj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzkb;->zzamr:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 0
    sget-object v2, Lcom/google/android/gms/internal/zzkb;->zzamr:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    sget-object v1, Lcom/google/android/gms/internal/zzkb;->zzckj:Ljava/lang/String;

    if-nez v1, :cond_4c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_62

    move-result v1

    if-nez v1, :cond_4c

    .line 1000
    const/4 v1, 0x3

    :try_start_f
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string/jumbo v1, "com.google.ads.mediation.MediationAdapter"

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1e} :catch_46
    .catchall {:try_start_f .. :try_end_1e} :catchall_62

    move-result-object v4

    :try_start_1f
    new-instance v1, Ljava/math/BigInteger;

    const/4 v5, 0x1

    new-array v5, v5, [B

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>([B)V

    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v7, v0

    move-object v0, v1

    move v1, v7

    :goto_31
    array-length v6, v5

    if-ge v1, v6, :cond_50

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkh;

    aget-object v6, v5, v1

    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/zzkh;->zza(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :catch_46
    move-exception v0

    const-string/jumbo v0, "err"

    sput-object v0, Lcom/google/android/gms/internal/zzkb;->zzckj:Ljava/lang/String;

    .line 0
    :cond_4c
    :goto_4c
    sget-object v0, Lcom/google/android/gms/internal/zzkb;->zzckj:Ljava/lang/String;

    monitor-exit v2

    return-object v0

    .line 1000
    :cond_50
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzkb;->zzckj:Ljava/lang/String;

    goto :goto_4c

    .line 0
    :catchall_62
    move-exception v0

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_1f .. :try_end_64} :catchall_62

    throw v0
.end method

.method public static zzsy()Ljava/lang/String;
    .registers 2

    sget-object v1, Lcom/google/android/gms/internal/zzkb;->zzamr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzkb;->zzckj:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
