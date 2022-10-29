.class final Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzi([B)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcdc:Ljava/io/OutputStream;

.field final synthetic zzcdd:[B

.field final synthetic zzcde:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/io/OutputStream;[B)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcde:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdc:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdd:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdc:Ljava/io/OutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_17
    .catchall {:try_start_1 .. :try_end_8} :catchall_33

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdd:[B

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdd:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_43
    .catchall {:try_start_8 .. :try_end_13} :catchall_41

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    :goto_16
    return-void

    :catch_17
    move-exception v0

    move-object v1, v2

    :goto_19
    :try_start_19
    const-string/jumbo v2, "Error transporting the ad response"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkd;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_41

    if-nez v1, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdc:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    goto :goto_16

    :cond_2f
    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    goto :goto_16

    :catchall_33
    move-exception v0

    move-object v1, v2

    :goto_35
    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdc:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    :goto_3c
    throw v0

    :cond_3d
    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    goto :goto_3c

    :catchall_41
    move-exception v0

    goto :goto_35

    :catch_43
    move-exception v0

    goto :goto_19
.end method
