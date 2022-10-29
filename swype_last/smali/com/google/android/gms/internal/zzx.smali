.class public final Lcom/google/android/gms/internal/zzx;
.super Ljava/lang/Object;


# direct methods
.method public static zzb(Lcom/google/android/gms/internal/zzi;)Lcom/google/android/gms/internal/zzb$zza;
    .registers 26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzi;->zzz:Ljava/util/Map;

    move-object/from16 v24, v0

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string/jumbo v2, "Date"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2c

    invoke-static {v2}, Lcom/google/android/gms/internal/zzx;->zzg(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    :cond_2c
    const-string/jumbo v2, "Cache-Control"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_11b

    const/4 v12, 0x1

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x0

    move v3, v6

    move-wide v6, v8

    move-wide v8, v10

    :goto_45
    array-length v10, v13

    if-ge v2, v10, :cond_a0

    aget-object v10, v13, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "no-cache"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_60

    const-string/jumbo v11, "no-store"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_62

    :cond_60
    const/4 v2, 0x0

    :goto_61
    return-object v2

    :cond_62
    const-string/jumbo v11, "max-age="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_78

    const/16 v11, 0x8

    :try_start_6d
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_10e

    move-result-wide v8

    :cond_75
    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_78
    const-string/jumbo v11, "stale-while-revalidate="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8c

    const/16 v11, 0x17

    :try_start_83
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8a} :catch_10b

    move-result-wide v6

    goto :goto_75

    :cond_8c
    const-string/jumbo v11, "must-revalidate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9e

    const-string/jumbo v11, "proxy-revalidate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    :cond_9e
    const/4 v3, 0x1

    goto :goto_75

    :cond_a0
    move-wide v10, v8

    move-wide v8, v6

    move v6, v12

    :goto_a3
    const-string/jumbo v2, "Expires"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_119

    invoke-static {v2}, Lcom/google/android/gms/internal/zzx;->zzg(Ljava/lang/String;)J

    move-result-wide v12

    :goto_b4
    const-string/jumbo v2, "Last-Modified"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_116

    invoke-static {v2}, Lcom/google/android/gms/internal/zzx;->zzg(Ljava/lang/String;)J

    move-result-wide v14

    :goto_c5
    const-string/jumbo v2, "ETag"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v6, :cond_fb

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v10

    add-long v10, v22, v6

    if-eqz v3, :cond_f6

    move-wide v6, v10

    :goto_da
    new-instance v3, Lcom/google/android/gms/internal/zzb$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzb$zza;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzi;->data:[B

    iput-object v8, v3, Lcom/google/android/gms/internal/zzb$zza;->data:[B

    iput-object v2, v3, Lcom/google/android/gms/internal/zzb$zza;->zza:Ljava/lang/String;

    iput-wide v10, v3, Lcom/google/android/gms/internal/zzb$zza;->zze:J

    iput-wide v6, v3, Lcom/google/android/gms/internal/zzb$zza;->zzd:J

    iput-wide v4, v3, Lcom/google/android/gms/internal/zzb$zza;->zzb:J

    iput-wide v14, v3, Lcom/google/android/gms/internal/zzb$zza;->zzc:J

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/google/android/gms/internal/zzb$zza;->zzf:Ljava/util/Map;

    move-object v2, v3

    goto/16 :goto_61

    :cond_f6
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v6, v10

    goto :goto_da

    :cond_fb
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_111

    cmp-long v3, v12, v4

    if-ltz v3, :cond_111

    sub-long v6, v12, v4

    add-long v6, v6, v22

    move-wide v10, v6

    goto :goto_da

    :catch_10b
    move-exception v10

    goto/16 :goto_75

    :catch_10e
    move-exception v10

    goto/16 :goto_75

    :cond_111
    move-wide/from16 v6, v18

    move-wide/from16 v10, v20

    goto :goto_da

    :cond_116
    move-wide/from16 v14, v16

    goto :goto_c5

    :cond_119
    move-wide v12, v14

    goto :goto_b4

    :cond_11b
    move v3, v6

    move v6, v7

    goto :goto_a3
.end method

.method public static zzb(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x1

    const-string/jumbo v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_36

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_14
    array-length v3, v2

    if-ge v0, v3, :cond_36

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_37

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string/jumbo v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    aget-object p1, v3, v1

    :cond_36
    return-object p1

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method private static zzg(Ljava/lang/String;)J
    .registers 3

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_7
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v0

    :goto_8
    return-wide v0

    :catch_9
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_8
.end method
