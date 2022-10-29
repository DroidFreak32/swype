.class public final Lcom/google/android/gms/common/util/zzo;
.super Ljava/lang/Object;


# direct methods
.method public static zza$40f06453$1ade7318(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v2, v0, [B

    const-wide/16 v0, 0x0

    :goto_6
    const/4 v3, 0x0

    const/16 v4, 0x400

    :try_start_9
    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    int-to-long v4, v3

    add-long/2addr v0, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_6

    :catchall_17
    move-exception v0

    invoke-static {p0}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v0

    :cond_1f
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    return-wide v0
.end method

.method public static zzb(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method
