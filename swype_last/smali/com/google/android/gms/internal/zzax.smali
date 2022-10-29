.class public Lcom/google/android/gms/internal/zzax;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final zzagr:Ljava/lang/Object;

.field private static zzagt:Lcom/google/android/gms/common/zzc;


# instance fields
.field private volatile zzafn:Z

.field protected zzagf:Landroid/content/Context;

.field zzagg:Ljava/util/concurrent/ExecutorService;

.field zzagh:Ldalvik/system/DexClassLoader;

.field zzagi:Lcom/google/android/gms/internal/zzau;

.field zzagj:[B

.field private volatile zzagk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private zzagl:Ljava/util/concurrent/Future;

.field volatile zzagm:Lcom/google/android/gms/internal/zzae$zza;

.field zzagn:Ljava/util/concurrent/Future;

.field zzago:Lcom/google/android/gms/internal/zzam;

.field zzagp:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected zzagq:Z

.field protected zzags:Z

.field protected zzagu:Z

.field private zzagv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/zzbo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzax;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzax;->zzagr:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzax;->zzagt:Lcom/google/android/gms/common/zzc;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzax;->zzafn:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagl:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagm:Lcom/google/android/gms/internal/zzae$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagn:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagp:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzax;->zzagq:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzax;->zzags:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzax;->zzagu:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagv:Ljava/util/Map;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzax;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzax;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzax;-><init>(Landroid/content/Context;)V

    :try_start_5
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzax;->zzc(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_8
    .catch Lcom/google/android/gms/internal/zzaw; {:try_start_5 .. :try_end_8} :catch_9

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static zza(Ljava/io/File;)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "File %s not found. No need for deletion"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_16
.end method

.method private zza(Ljava/io/File;Ljava/lang/String;)V
    .registers 12

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v0, "%s/%s.tmp"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    new-instance v3, Ljava/io/File;

    const-string/jumbo v0, "%s/%s.dex"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1b

    long-to-int v0, v4

    new-array v4, v0, [B

    :try_start_42
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_c0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_42 .. :try_end_47} :catch_bb
    .catch Lcom/google/android/gms/internal/zzau$zza; {:try_start_42 .. :try_end_47} :catch_96
    .catchall {:try_start_42 .. :try_end_47} :catchall_a2

    :try_start_47
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_c3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_4a} :catch_be
    .catch Lcom/google/android/gms/internal/zzau$zza; {:try_start_47 .. :try_end_4a} :catch_b9
    .catchall {:try_start_47 .. :try_end_4a} :catchall_b4

    move-result v1

    if-gtz v1, :cond_54

    :try_start_4d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_ac

    :goto_50
    invoke-static {v3}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;)V

    goto :goto_1b

    :cond_54
    :try_start_54
    new-instance v1, Lcom/google/android/gms/internal/zzae$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzae$zzd;-><init>()V

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/zzae$zzd;->zzev:[B

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/zzae$zzd;->zzeu:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzax;->zzagi:Lcom/google/android/gms/internal/zzau;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzax;->zzagj:[B

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/zzau;->zzd([B[B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/zzae$zzd;->data:[B

    invoke-static {v4}, Lcom/google/android/gms/internal/zzak;->zzg([B)[B

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/zzae$zzd;->zzet:[B

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapv;->zzf(Lcom/google/android/gms/internal/zzapv;)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v5, v1

    invoke-virtual {v4, v1, v2, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_8f} :catch_c3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_54 .. :try_end_8f} :catch_be
    .catch Lcom/google/android/gms/internal/zzau$zza; {:try_start_54 .. :try_end_8f} :catch_b9
    .catchall {:try_start_54 .. :try_end_8f} :catchall_b4

    :try_start_8f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_ae

    :goto_92
    invoke-static {v3}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;)V

    goto :goto_1b

    :catch_96
    move-exception v0

    move-object v0, v1

    :goto_98
    if-eqz v0, :cond_9d

    :try_start_9a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_b0

    :cond_9d
    :goto_9d
    invoke-static {v3}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;)V

    goto/16 :goto_1b

    :catchall_a2
    move-exception v0

    :goto_a3
    if-eqz v1, :cond_a8

    :try_start_a5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_b2

    :cond_a8
    :goto_a8
    invoke-static {v3}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;)V

    throw v0

    :catch_ac
    move-exception v0

    goto :goto_50

    :catch_ae
    move-exception v0

    goto :goto_92

    :catch_b0
    move-exception v0

    goto :goto_9d

    :catch_b2
    move-exception v1

    goto :goto_a8

    :catchall_b4
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_a3

    :catch_b9
    move-exception v1

    goto :goto_98

    :catch_bb
    move-exception v0

    move-object v0, v1

    goto :goto_98

    :catch_be
    move-exception v1

    goto :goto_98

    :catch_c0
    move-exception v0

    move-object v0, v1

    goto :goto_98

    :catch_c3
    move-exception v1

    goto :goto_98
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzax;)V
    .registers 3

    .prologue
    .line 0
    .line 10000
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_10
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_10} :catch_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_18
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v0

    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    goto :goto_10

    :catch_16
    move-exception v0

    goto :goto_12

    :catch_18
    move-exception v0

    goto :goto_12
.end method

.method private zzb(Ljava/io/File;Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v0, "%s/%s.tmp"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v1

    :goto_1c
    return v0

    :cond_1d
    new-instance v4, Ljava/io/File;

    const-string/jumbo v0, "%s/%s.dex"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    goto :goto_1c

    :cond_37
    :try_start_37
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_46

    invoke-static {v3}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;)V

    move v0, v1

    goto :goto_1c

    :cond_46
    long-to-int v0, v6

    new-array v0, v0, [B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_59

    invoke-static {v3}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;)V

    move v0, v1

    goto :goto_1c

    .line 7000
    :cond_59
    new-instance v5, Lcom/google/android/gms/internal/zzae$zzd;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzae$zzd;-><init>()V

    .line 8000
    array-length v6, v0

    invoke-static {v5, v0, v6}, Lcom/google/android/gms/internal/zzapv;->zzb$16844d7a(Lcom/google/android/gms/internal/zzapv;[BI)Lcom/google/android/gms/internal/zzapv;

    move-result-object v0

    .line 7000
    check-cast v0, Lcom/google/android/gms/internal/zzae$zzd;

    .line 0
    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzae$zzd;->zzeu:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8e

    iget-object v5, v0, Lcom/google/android/gms/internal/zzae$zzd;->zzet:[B

    iget-object v6, v0, Lcom/google/android/gms/internal/zzae$zzd;->data:[B

    invoke-static {v6}, Lcom/google/android/gms/internal/zzak;->zzg([B)[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_8e

    iget-object v5, v0, Lcom/google/android/gms/internal/zzae$zzd;->zzev:[B

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_93

    :cond_8e
    invoke-static {v3}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;)V

    move v0, v1

    goto :goto_1c

    :cond_93
    iget-object v3, p0, Lcom/google/android/gms/internal/zzax;->zzagi:Lcom/google/android/gms/internal/zzau;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzax;->zzagj:[B

    new-instance v6, Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzae$zzd;->data:[B

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/zzau;->zzc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_b2} :catch_bb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_37 .. :try_end_b2} :catch_b9
    .catch Lcom/google/android/gms/internal/zzau$zza; {:try_start_37 .. :try_end_b2} :catch_b5

    move v0, v2

    goto/16 :goto_1c

    :catch_b5
    move-exception v0

    :goto_b6
    move v0, v1

    goto/16 :goto_1c

    :catch_b9
    move-exception v0

    goto :goto_b6

    :catch_bb
    move-exception v0

    goto :goto_b6
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzax;)V
    .registers 5

    .prologue
    .line 0
    .line 11000
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzags:Z

    if-eqz v0, :cond_2e

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 12000
    new-instance v3, Lcom/google/android/gms/gass/internal/zza$zza;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/gass/internal/zza$zza;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13000
    invoke-virtual {v3}, Lcom/google/android/gms/gass/internal/zza$zza;->zzsi$1d3d48d2()Lcom/google/android/gms/internal/zzae$zza;

    move-result-object v0

    .line 11000
    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagm:Lcom/google/android/gms/internal/zzae$zza;
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    goto :goto_2e
.end method

.method private zzc(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaw;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagg:Ljava/util/concurrent/ExecutorService;

    .line 1000
    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzax;->zzafn:Z

    if-eqz p3, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagg:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/google/android/gms/internal/zzax$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzax$1;-><init>(Lcom/google/android/gms/internal/zzax;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagl:Ljava/util/concurrent/Future;

    .line 2000
    :cond_19
    invoke-static {}, Lcom/google/android/gms/common/zzc;->zzang()Lcom/google/android/gms/common/zzc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzax;->zzagt:Lcom/google/android/gms/common/zzc;

    sget-object v0, Lcom/google/android/gms/internal/zzax;->zzagt:Lcom/google/android/gms/common/zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzc;->zzbn(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_92

    move v0, v1

    :goto_2a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzagq:Z

    sget-object v0, Lcom/google/android/gms/internal/zzax;->zzagt:Lcom/google/android/gms/common/zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/zzc;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_37

    move v2, v1

    :cond_37
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzax;->zzags:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_54

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/clearcut/zzb;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagp:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdc;->initialize(Landroid/content/Context;)V

    .line 3000
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbbu:Lcom/google/android/gms/internal/zzcy;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzdb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzdb;->zzd(Lcom/google/android/gms/internal/zzcy;)Ljava/lang/Object;

    move-result-object v0

    .line 3000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagg:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/zzax$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzax$2;-><init>(Lcom/google/android/gms/internal/zzax;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagn:Ljava/util/concurrent/Future;

    .line 0
    :cond_78
    new-instance v0, Lcom/google/android/gms/internal/zzau;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzau;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagi:Lcom/google/android/gms/internal/zzau;

    :try_start_7f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagi:Lcom/google/android/gms/internal/zzau;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzau;->zzl(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagj:[B
    :try_end_87
    .catch Lcom/google/android/gms/internal/zzau$zza; {:try_start_7f .. :try_end_87} :catch_94

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzax;->zzm(Ljava/lang/String;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzam;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzam;-><init>(Lcom/google/android/gms/internal/zzax;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzago:Lcom/google/android/gms/internal/zzam;

    return v1

    :cond_92
    move v0, v2

    .line 2000
    goto :goto_2a

    .line 0
    :catch_94
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private zzm(Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzaw;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    const-string/jumbo v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_22

    new-instance v0, Lcom/google/android/gms/internal/zzaw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaw;-><init>()V

    throw v0
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_a7
    .catch Lcom/google/android/gms/internal/zzau$zza; {:try_start_1 .. :try_end_1b} :catch_ae
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1b} :catch_b5

    :catch_1b
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_22
    move-object v1, v0

    .line 5000
    :try_start_23
    const-string/jumbo v2, "1460683162801"

    .line 6000
    new-instance v3, Ljava/io/File;

    const-string/jumbo v0, "%s/%s.jar"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagi:Lcom/google/android/gms/internal/zzau;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzax;->zzagj:[B

    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/zzau;->zzc([BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 0
    :cond_59
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzax;->zzb(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_5c} :catch_1b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_5c} :catch_a7
    .catch Lcom/google/android/gms/internal/zzau$zza; {:try_start_23 .. :try_end_5c} :catch_ae
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_5c} :catch_b5

    :try_start_5c
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v4, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagh:Ldalvik/system/DexClassLoader;
    :try_end_72
    .catchall {:try_start_5c .. :try_end_72} :catchall_8c

    :try_start_72
    invoke-static {v3}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v0, "%s/%s.dex"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzax;->zzn(Ljava/lang/String;)V

    return v8

    :catchall_8c
    move-exception v0

    invoke-static {v3}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "%s/%s.dex"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzax;->zzn(Ljava/lang/String;)V

    throw v0
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_a7} :catch_1b
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_a7} :catch_a7
    .catch Lcom/google/android/gms/internal/zzau$zza; {:try_start_72 .. :try_end_a7} :catch_ae
    .catch Ljava/lang/NullPointerException; {:try_start_72 .. :try_end_a7} :catch_b5

    :catch_a7
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_ae
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_b5
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzaw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzaw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzn(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzax;->zza(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagf:Landroid/content/Context;

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagv:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagv:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbo;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbo;-><init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final zzat()I
    .registers 3

    .prologue
    .line 0
    const/high16 v0, -0x80000000

    .line 9000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzax;->zzago:Lcom/google/android/gms/internal/zzam;

    .line 0
    if-eqz v1, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/zzam;->zzat()I

    move-result v0

    :cond_a
    return v0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagv:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbo;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbo;->zzcz()Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_10
.end method

.method public final zzci()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzagq:Z

    return v0
.end method

.method public final zzcj()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzagu:Z

    return v0
.end method

.method public final zzcr()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzax;->zzafn:Z

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagl:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1d

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagl:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagl:Ljava/util/concurrent/Future;
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1d} :catch_2a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_1d} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_1d} :catch_20

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagk:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    goto :goto_5

    :catch_20
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagl:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1d

    :catch_28
    move-exception v0

    goto :goto_1d

    :catch_2a
    move-exception v0

    goto :goto_1d
.end method

.method public final zzcs()V
    .registers 3

    sget-object v1, Lcom/google/android/gms/internal/zzax;->zzagr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzagu:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzags:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagp:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagp:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzagu:Z

    :goto_19
    monitor-exit v1

    goto :goto_8

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    const/4 v0, 0x0

    :try_start_1f
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzagu:Z
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_1b

    goto :goto_19
.end method

.method public final zzct()V
    .registers 3

    sget-object v1, Lcom/google/android/gms/internal/zzax;->zzagr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzagu:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagp:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/zzax;->zzagp:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzax;->zzagu:Z

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method
