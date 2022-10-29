.class final Lcom/google/android/gms/internal/zzfo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field final zzaln:Ljava/lang/String;

.field final zzanc:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field final zzbkt:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfo;->zzanc:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfo;->zzaln:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzfo;->zzbkt:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzfm;)V
    .registers 5

    .prologue
    .line 0
    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzfm;->zzbks:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    .line 2000
    iget-object v1, p1, Lcom/google/android/gms/internal/zzfm;->zzaln:Ljava/lang/String;

    .line 3000
    iget v2, p1, Lcom/google/android/gms/internal/zzfm;->zzbkt:I

    .line 0
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzfo;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "\u0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_17

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Incorrect field count for QueueSeed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1c
    aget-object v2, v0, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzfo;->zzaln:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/zzfo;->zzbkt:I

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->CREATOR:Lcom/google/android/gms/ads/internal/client/zzg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzg;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfo;->zzanc:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_51} :catch_55
    .catchall {:try_start_1c .. :try_end_51} :catchall_67

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catch_55
    move-exception v0

    :try_start_56
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzjx;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzjx;->zzb(Ljava/lang/Throwable;Z)V

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Malformed QueueSeed encoding."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method


# virtual methods
.method final zzlx()Ljava/lang/String;
    .registers 8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfo;->zzaln:Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/zzfo;->zzbkt:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfo;->zzanc:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\u0000"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_65
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_65} :catch_6a
    .catchall {:try_start_4 .. :try_end_65} :catchall_78

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :goto_69
    return-object v0

    :catch_6a
    move-exception v0

    :try_start_6b
    const-string/jumbo v0, "QueueSeed encode failed because UTF-8 is not available."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->e(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_78

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    const-string/jumbo v0, ""

    goto :goto_69

    :catchall_78
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
