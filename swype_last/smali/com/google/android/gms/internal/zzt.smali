.class public final Lcom/google/android/gms/internal/zzt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzf;


# static fields
.field protected static final DEBUG:Z

.field private static zzbn:I

.field private static zzbo:I


# instance fields
.field protected final zzbp:Lcom/google/android/gms/internal/zzy;

.field protected final zzbq:Lcom/google/android/gms/internal/zzu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzs;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/gms/internal/zzt;->DEBUG:Z

    const/16 v0, 0xbb8

    sput v0, Lcom/google/android/gms/internal/zzt;->zzbn:I

    const/16 v0, 0x1000

    sput v0, Lcom/google/android/gms/internal/zzt;->zzbo:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzy;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzu;

    sget v1, Lcom/google/android/gms/internal/zzt;->zzbo:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzu;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzt;-><init>(Lcom/google/android/gms/internal/zzy;Lcom/google/android/gms/internal/zzu;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzy;Lcom/google/android/gms/internal/zzu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzt;->zzbp:Lcom/google/android/gms/internal/zzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzt;->zzbq:Lcom/google/android/gms/internal/zzu;

    return-void
.end method

.method private static zza([Lorg/apache/http/Header;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    return-object v1
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;",
            "Lcom/google/android/gms/internal/zzr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzr;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 0
    .line 8000
    iget-object v0, p1, Lcom/google/android/gms/internal/zzk;->zzan:Lcom/google/android/gms/internal/zzo;

    .line 0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzk;->zzs()I

    move-result v1

    :try_start_9
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzo;->zza(Lcom/google/android/gms/internal/zzr;)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/zzr; {:try_start_9 .. :try_end_c} :catch_21

    const-string/jumbo v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    return-void

    :catch_21
    move-exception v0

    const-string/jumbo v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzk;->zzc(Ljava/lang/String;)V

    throw v0
.end method

.method private zza(Lorg/apache/http/HttpEntity;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/internal/zzp;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v2, Lcom/google/android/gms/internal/zzaa;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt;->zzbq:Lcom/google/android/gms/internal/zzu;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzaa;-><init>(Lcom/google/android/gms/internal/zzu;I)V

    const/4 v1, 0x0

    :try_start_e
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v0, Lcom/google/android/gms/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzp;-><init>()V

    throw v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    :try_start_1b
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_55

    :goto_1e
    iget-object v3, p0, Lcom/google/android/gms/internal/zzt;->zzbq:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzu;->zza([B)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaa;->close()V

    throw v0

    :cond_27
    :try_start_27
    iget-object v3, p0, Lcom/google/android/gms/internal/zzt;->zzbq:Lcom/google/android/gms/internal/zzu;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzu;->zzb(I)[B

    move-result-object v1

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3b

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/google/android/gms/internal/zzaa;->write([BII)V

    goto :goto_2f

    :cond_3b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaa;->toByteArray()[B
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_1a

    move-result-object v0

    :try_start_3f
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4b

    :goto_42
    iget-object v3, p0, Lcom/google/android/gms/internal/zzt;->zzbq:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzu;->zza([B)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaa;->close()V

    return-object v0

    :catch_4b
    move-exception v3

    const-string/jumbo v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    :catch_55
    move-exception v3

    const-string/jumbo v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzs;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzi;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzk",
            "<*>;)",
            "Lcom/google/android/gms/internal/zzi;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzr;
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    :goto_4
    const/4 v3, 0x0

    const/4 v14, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    :try_start_a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1000
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/zzk;->zzao:Lcom/google/android/gms/internal/zzb$zza;

    .line 2000
    if-eqz v4, :cond_3a

    iget-object v5, v4, Lcom/google/android/gms/internal/zzb$zza;->zza:Ljava/lang/String;

    if-eqz v5, :cond_21

    const-string/jumbo v5, "If-None-Match"

    iget-object v7, v4, Lcom/google/android/gms/internal/zzb$zza;->zza:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget-wide v8, v4, Lcom/google/android/gms/internal/zzb$zza;->zzc:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_3a

    new-instance v5, Ljava/util/Date;

    iget-wide v8, v4, Lcom/google/android/gms/internal/zzb$zza;->zzc:J

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v4, "If-Modified-Since"

    invoke-static {v5}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzt;->zzbp:Lcom/google/android/gms/internal/zzy;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v2}, Lcom/google/android/gms/internal/zzy;->zza(Lcom/google/android/gms/internal/zzk;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_43
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_43} :catch_ed
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_43} :catch_113
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_43} :catch_123
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_43} :catch_146

    move-result-object v15

    :try_start_44
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzt;->zza([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v6

    const/16 v2, 0x130

    if-ne v4, v2, :cond_87

    .line 3000
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzk;->zzao:Lcom/google/android/gms/internal/zzb$zza;

    .line 0
    if-nez v2, :cond_6e

    new-instance v3, Lcom/google/android/gms/internal/zzi;

    const/16 v4, 0x130

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzi;-><init>(I[BLjava/util/Map;ZJ)V

    :goto_6d
    return-object v3

    :cond_6e
    iget-object v3, v2, Lcom/google/android/gms/internal/zzb$zza;->zzf:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v7, Lcom/google/android/gms/internal/zzi;

    const/16 v8, 0x130

    iget-object v9, v2, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    iget-object v10, v2, Lcom/google/android/gms/internal/zzb$zza;->zzf:Ljava/util/Map;

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v12, v2, v16

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/zzi;-><init>(I[BLjava/util/Map;ZJ)V

    move-object v3, v7

    goto :goto_6d

    :cond_87
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_fd

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzt;->zza(Lorg/apache/http/HttpEntity;)[B
    :try_end_96
    .catch Ljava/net/SocketTimeoutException; {:try_start_44 .. :try_end_96} :catch_ed
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_44 .. :try_end_96} :catch_113
    .catch Ljava/net/MalformedURLException; {:try_start_44 .. :try_end_96} :catch_123
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_96} :catch_1a1

    move-result-object v5

    :goto_97
    :try_start_97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    .line 4000
    sget-boolean v2, Lcom/google/android/gms/internal/zzt;->DEBUG:Z

    if-nez v2, :cond_a8

    sget v2, Lcom/google/android/gms/internal/zzt;->zzbn:I

    int-to-long v10, v2

    cmp-long v2, v8, v10

    if-lez v2, :cond_df

    :cond_a8
    const-string/jumbo v7, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v2, 0x5

    new-array v10, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v10, v2

    const/4 v2, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v2

    const/4 v8, 0x2

    if-eqz v5, :cond_101

    array-length v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_c0
    aput-object v2, v10, v8

    const/4 v2, 0x3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v2, 0x4

    .line 5000
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/zzk;->zzan:Lcom/google/android/gms/internal/zzo;

    .line 4000
    invoke-interface {v3}, Lcom/google/android/gms/internal/zzo;->zzd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {v7, v10}, Lcom/google/android/gms/internal/zzs;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 0
    :cond_df
    const/16 v2, 0xc8

    if-lt v4, v2, :cond_e7

    const/16 v2, 0x12b

    if-le v4, v2, :cond_105

    :cond_e7
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_ed
    .catch Ljava/net/SocketTimeoutException; {:try_start_97 .. :try_end_ed} :catch_ed
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_97 .. :try_end_ed} :catch_113
    .catch Ljava/net/MalformedURLException; {:try_start_97 .. :try_end_ed} :catch_123
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_ed} :catch_1a5

    :catch_ed
    move-exception v2

    const-string/jumbo v2, "socket"

    new-instance v3, Lcom/google/android/gms/internal/zzq;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzq;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V

    goto/16 :goto_4

    :cond_fd
    const/4 v2, 0x0

    :try_start_fe
    new-array v5, v2, [B
    :try_end_100
    .catch Ljava/net/SocketTimeoutException; {:try_start_fe .. :try_end_100} :catch_ed
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_fe .. :try_end_100} :catch_113
    .catch Ljava/net/MalformedURLException; {:try_start_fe .. :try_end_100} :catch_123
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_100} :catch_1a1

    goto :goto_97

    .line 4000
    :cond_101
    :try_start_101
    const-string/jumbo v2, "null"

    goto :goto_c0

    .line 0
    :cond_105
    new-instance v3, Lcom/google/android/gms/internal/zzi;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzi;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_111
    .catch Ljava/net/SocketTimeoutException; {:try_start_101 .. :try_end_111} :catch_ed
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_101 .. :try_end_111} :catch_113
    .catch Ljava/net/MalformedURLException; {:try_start_101 .. :try_end_111} :catch_123
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_111} :catch_1a5

    goto/16 :goto_6d

    :catch_113
    move-exception v2

    const-string/jumbo v2, "connection"

    new-instance v3, Lcom/google/android/gms/internal/zzq;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzq;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V

    goto/16 :goto_4

    :catch_123
    move-exception v2

    move-object v3, v2

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Bad URL "

    .line 6000
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_140

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_13c
    invoke-direct {v4, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_140
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_13c

    :catch_146
    move-exception v2

    move-object v5, v14

    :goto_148
    if-eqz v3, :cond_18e

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const-string/jumbo v2, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    .line 7000
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/gms/internal/zzk;->zzae:Ljava/lang/String;

    .line 0
    aput-object v8, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzs;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_19a

    new-instance v3, Lcom/google/android/gms/internal/zzi;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzi;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v2, 0x191

    if-eq v4, v2, :cond_17f

    const/16 v2, 0x193

    if-ne v4, v2, :cond_194

    :cond_17f
    const-string/jumbo v2, "auth"

    new-instance v4, Lcom/google/android/gms/internal/zza;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/zza;-><init>(Lcom/google/android/gms/internal/zzi;)V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v4}, Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V

    goto/16 :goto_4

    :cond_18e
    new-instance v3, Lcom/google/android/gms/internal/zzj;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/zzj;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_194
    new-instance v2, Lcom/google/android/gms/internal/zzp;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzp;-><init>(Lcom/google/android/gms/internal/zzi;)V

    throw v2

    :cond_19a
    new-instance v2, Lcom/google/android/gms/internal/zzh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzh;-><init>(B)V

    throw v2

    :catch_1a1
    move-exception v2

    move-object v5, v14

    move-object v3, v15

    goto :goto_148

    :catch_1a5
    move-exception v2

    move-object v3, v15

    goto :goto_148
.end method
