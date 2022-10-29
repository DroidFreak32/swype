.class public final Lcom/google/android/gms/common/internal/zzz;
.super Ljava/lang/Object;


# static fields
.field private static ze:Ljava/lang/String;

.field private static zf:I

.field private static zzamr:Ljava/lang/Object;

.field private static zzbyu:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzz;->zzamr:Ljava/lang/Object;

    return-void
.end method

.method public static zzcg(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 0
    .line 1000
    sget-object v1, Lcom/google/android/gms/common/internal/zzz;->zzamr:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/gms/common/internal/zzz;->zzbyu:Z

    if-eqz v0, :cond_b

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_22

    .line 0
    :goto_8
    sget v0, Lcom/google/android/gms/common/internal/zzz;->zf:I

    return v0

    .line 1000
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    sput-boolean v0, Lcom/google/android/gms/common/internal/zzz;->zzbyu:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrp;->zzcq(Landroid/content/Context;)Lcom/google/android/gms/internal/zzro;
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_22

    move-result-object v2

    const/16 v3, 0x80

    :try_start_18
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzro;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_1e} :catch_39
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    if-nez v0, :cond_25

    :try_start_20
    monitor-exit v1

    goto :goto_8

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    :try_start_25
    const-string/jumbo v2, "com.google.app.id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/common/internal/zzz;->ze:Ljava/lang/String;

    const-string/jumbo v2, "com.google.android.gms.version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/internal/zzz;->zf:I
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_37} :catch_39
    .catchall {:try_start_25 .. :try_end_37} :catchall_22

    :goto_37
    :try_start_37
    monitor-exit v1

    goto :goto_8

    :catch_39
    move-exception v0

    const-string/jumbo v2, "MetadataValueReader"

    const-string/jumbo v3, "This should never happen."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_22

    goto :goto_37
.end method
