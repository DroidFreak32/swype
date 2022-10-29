.class public final Lcom/google/android/gms/internal/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzv$zzb;,
        Lcom/google/android/gms/internal/zzv$zza;
    }
.end annotation


# instance fields
.field private final zzbw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzv$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbx:J

.field private final zzby:Ljava/io/File;

.field private final zzbz:I


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    const/high16 v0, 0x500000

    iput v0, p0, Lcom/google/android/gms/internal/zzv;->zzbz:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private declared-synchronized remove(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 0
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;

    if-eqz v0, :cond_1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_1f
    if-nez v1, :cond_34

    const-string/jumbo v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzv;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    :cond_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static zza(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_d
    return v0
.end method

.method static zza(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static zza(Ljava/io/OutputStream;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static zza(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/OutputStream;J)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzv$zza;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    :goto_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iget-wide v4, p2, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    goto :goto_f
.end method

.method private static zza(Ljava/io/InputStream;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_10

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    add-int/2addr v0, v2

    goto :goto_3

    :cond_10
    if-eq v0, p1, :cond_40

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    return-object v1
.end method

.method static zzb(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static zzc(Ljava/io/InputStream;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0xff

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static zzd(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzc(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static zze(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_31
.end method

.method static zze(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzb(Ljava/io/InputStream;)I

    move-result v2

    if-nez v2, :cond_23

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_29

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzv;->zzd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_a

    :cond_29
    return-object v0
.end method

.method private zzf(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzv;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized initialize()V
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "Unable to create cache dir %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzs;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_6b

    :cond_24
    monitor-exit p0

    return-void

    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/google/android/gms/internal/zzv;->zzby:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_24

    array-length v4, v3

    move v2, v0

    :goto_30
    if-ge v2, v4, :cond_24

    aget-object v5, v3, v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_6b

    const/4 v1, 0x0

    :try_start_35
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3f} :catch_55
    .catchall {:try_start_35 .. :try_end_3f} :catchall_64

    :try_start_3f
    invoke-static {v0}, Lcom/google/android/gms/internal/zzv$zza;->zzf(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzv$zza;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    iget-object v6, v1, Lcom/google/android/gms/internal/zzv$zza;->zzcb:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzv$zza;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4e} :catch_77
    .catchall {:try_start_3f .. :try_end_4e} :catchall_72

    :try_start_4e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_6e
    .catchall {:try_start_4e .. :try_end_51} :catchall_6b

    :cond_51
    :goto_51
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_30

    :catch_55
    move-exception v0

    move-object v0, v1

    :goto_57
    if-eqz v5, :cond_5c

    :try_start_59
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_72

    :cond_5c
    if-eqz v0, :cond_51

    :try_start_5e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_6b

    goto :goto_51

    :catch_62
    move-exception v0

    goto :goto_51

    :catchall_64
    move-exception v0

    :goto_65
    if-eqz v1, :cond_6a

    :try_start_67
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_70
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    :cond_6a
    :goto_6a
    :try_start_6a
    throw v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_6e
    move-exception v0

    goto :goto_51

    :catch_70
    move-exception v1

    goto :goto_6a

    :catchall_72
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_65

    :catch_77
    move-exception v1

    goto :goto_57
.end method

.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/internal/zzb$zza;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 0
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_85

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_85

    move-result-object v4

    :try_start_13
    new-instance v3, Lcom/google/android/gms/internal/zzv$zzb;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcom/google/android/gms/internal/zzv$zzb;-><init>(Ljava/io/InputStream;B)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_57
    .catchall {:try_start_13 .. :try_end_1e} :catchall_7d

    :try_start_1e
    invoke-static {v3}, Lcom/google/android/gms/internal/zzv$zza;->zzf(Ljava/io/InputStream;)Lcom/google/android/gms/internal/zzv$zza;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v3}, Lcom/google/android/gms/internal/zzv$zzb;->zza(Lcom/google/android/gms/internal/zzv$zzb;)I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v6, v8

    long-to-int v2, v6

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/io/InputStream;I)[B

    move-result-object v5

    .line 1000
    new-instance v2, Lcom/google/android/gms/internal/zzb$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzb$zza;-><init>()V

    iput-object v5, v2, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    iget-object v5, v0, Lcom/google/android/gms/internal/zzv$zza;->zza:Ljava/lang/String;

    iput-object v5, v2, Lcom/google/android/gms/internal/zzb$zza;->zza:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzv$zza;->zzb:J

    iput-wide v6, v2, Lcom/google/android/gms/internal/zzb$zza;->zzb:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzv$zza;->zzc:J

    iput-wide v6, v2, Lcom/google/android/gms/internal/zzb$zza;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzv$zza;->zzd:J

    iput-wide v6, v2, Lcom/google/android/gms/internal/zzb$zza;->zzd:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/zzv$zza;->zze:J

    iput-wide v6, v2, Lcom/google/android/gms/internal/zzb$zza;->zze:J

    iget-object v0, v0, Lcom/google/android/gms/internal/zzv$zza;->zzf:Ljava/util/Map;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzb$zza;->zzf:Ljava/util/Map;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4f} :catch_90
    .catchall {:try_start_1e .. :try_end_4f} :catchall_8b

    .line 0
    :try_start_4f
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzv$zzb;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_54
    .catchall {:try_start_4f .. :try_end_52} :catchall_85

    move-object v0, v2

    goto :goto_d

    :catch_54
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catch_57
    move-exception v0

    move-object v2, v1

    :goto_59
    :try_start_59
    const-string/jumbo v3, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;->remove(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_59 .. :try_end_73} :catchall_8d

    if-eqz v2, :cond_78

    :try_start_75
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzv$zzb;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_7a
    .catchall {:try_start_75 .. :try_end_78} :catchall_85

    :cond_78
    move-object v0, v1

    goto :goto_d

    :catch_7a
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catchall_7d
    move-exception v0

    move-object v3, v1

    :goto_7f
    if-eqz v3, :cond_84

    :try_start_81
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzv$zzb;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_88
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    :cond_84
    :try_start_84
    throw v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_88
    move-exception v0

    move-object v0, v1

    goto :goto_d

    :catchall_8b
    move-exception v0

    goto :goto_7f

    :catchall_8d
    move-exception v0

    move-object v3, v2

    goto :goto_7f

    :catch_90
    move-exception v0

    move-object v2, v3

    goto :goto_59
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzb$zza;)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 0
    monitor-enter p0

    :try_start_2
    iget-object v0, p2, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    array-length v2, v0

    .line 2000
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/gms/internal/zzv;->zzbz:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_92

    sget-boolean v0, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "Pruning old cache entries."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzv;->zzbw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzv$zza;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzv$zza;->zzcb:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_d8

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzv$zza;->zzca:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v1, 0x1

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    long-to-float v1, v8

    iget v8, p0, Lcom/google/android/gms/internal/zzv;->zzbz:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    cmpg-float v1, v1, v8

    if-gez v1, :cond_100

    :goto_67
    sget-boolean v1, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    if-eqz v1, :cond_92

    const-string/jumbo v1, "pruned %d files, %d bytes, %d ms"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzv;->zzbx:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 0
    :cond_92
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzv;->zzf(Ljava/lang/String;)Ljava/io/File;
    :try_end_95
    .catchall {:try_start_2 .. :try_end_95} :catchall_f1

    move-result-object v0

    :try_start_96
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/google/android/gms/internal/zzv$zza;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/zzv$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzb$zza;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzv$zza;->zza(Ljava/io/OutputStream;)Z

    move-result v3

    if-nez v3, :cond_f4

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const-string/jumbo v1, "Failed to write header for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_bf} :catch_bf
    .catchall {:try_start_96 .. :try_end_bf} :catchall_f1

    :catch_bf
    move-exception v1

    :try_start_c0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_d6

    const-string/jumbo v1, "Could not clean up file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d6
    .catchall {:try_start_c0 .. :try_end_d6} :catchall_f1

    :cond_d6
    :goto_d6
    monitor-exit p0

    return-void

    .line 2000
    :cond_d8
    :try_start_d8
    const-string/jumbo v8, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/google/android/gms/internal/zzv$zza;->zzcb:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzv$zza;->zzcb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzv;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ef
    .catchall {:try_start_d8 .. :try_end_ef} :catchall_f1

    goto/16 :goto_52

    .line 0
    :catchall_f1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_f4
    :try_start_f4
    iget-object v3, p2, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/zzv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzv$zza;)V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_ff} :catch_bf
    .catchall {:try_start_f4 .. :try_end_ff} :catchall_f1

    goto :goto_d6

    :cond_100
    move v1, v0

    goto/16 :goto_2d

    :cond_103
    move v0, v1

    goto/16 :goto_67
.end method
