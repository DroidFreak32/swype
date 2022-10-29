.class public final Lcom/google/android/gms/internal/zzpd;
.super Ljava/lang/Object;


# direct methods
.method private static zza([BIJJ[J)V
    .registers 19

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v2

    add-int/lit8 v4, p1, 0x10

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v4

    add-int/lit8 v6, p1, 0x18

    invoke-static {p0, v6}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v6

    add-long/2addr v0, p2

    add-long v8, p4, v0

    add-long/2addr v8, v6

    const/16 v10, 0x33

    invoke-static {v8, v9, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    add-long/2addr v2, v0

    add-long/2addr v2, v4

    const/16 v4, 0x17

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v4, v8

    const/4 v8, 0x0

    add-long/2addr v2, v6

    aput-wide v2, p6, v8

    const/4 v2, 0x1

    add-long/2addr v0, v4

    aput-wide v0, p6, v2

    return-void
.end method

.method private static zzb([BI)J
    .registers 4

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static zzc(JJ)J
    .registers 12

    const/16 v6, 0x2f

    const-wide v4, -0x395b586ca42e166bL    # -2.0946245025644615E32

    xor-long v0, p2, p0

    mul-long/2addr v0, v4

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    xor-long/2addr v0, p0

    mul-long/2addr v0, v4

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    mul-long/2addr v0, v4

    return-wide v0
.end method

.method public static zzm([B)J
    .registers 24

    .prologue
    .line 0
    move-object/from16 v0, p0

    array-length v2, v0

    const/16 v3, 0x20

    if-gt v2, v3, :cond_b4

    .line 1000
    move-object/from16 v0, p0

    array-length v2, v0

    and-int/lit8 v8, v2, -0x8

    move-object/from16 v0, p0

    array-length v2, v0

    and-int/lit8 v9, v2, 0x7

    const-wide v2, -0x1364611973070723L    # -1.4877559216887398E215

    move-object/from16 v0, p0

    array-length v4, v0

    int-to-long v4, v4

    const-wide v6, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v4, v6

    xor-long/2addr v4, v2

    const/4 v2, 0x0

    move/from16 v22, v2

    move-wide v2, v4

    move/from16 v4, v22

    :goto_27
    if-ge v4, v8, :cond_4c

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v6

    const-wide v10, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v6, v10

    .line 2000
    const/16 v5, 0x2f

    ushr-long v10, v6, v5

    xor-long/2addr v6, v10

    .line 1000
    const-wide v10, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v6, v10

    xor-long/2addr v2, v6

    const-wide v6, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v6, v2

    add-int/lit8 v2, v4, 0x8

    move v4, v2

    move-wide v2, v6

    goto :goto_27

    :cond_4c
    if-eqz v9, :cond_6f

    .line 3000
    const-wide/16 v6, 0x0

    const/16 v4, 0x8

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v4, 0x0

    :goto_57
    if-ge v4, v5, :cond_68

    add-int v9, v8, v4

    aget-byte v9, p0, v9

    int-to-long v10, v9

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    mul-int/lit8 v9, v4, 0x8

    shl-long/2addr v10, v9

    or-long/2addr v6, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 1000
    :cond_68
    xor-long/2addr v2, v6

    const-wide v4, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v2, v4

    .line 4000
    :cond_6f
    const/16 v4, 0x2f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    .line 1000
    const-wide v4, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v2, v4

    .line 5000
    const/16 v4, 0x2f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    .line 0
    :goto_7f
    move-object/from16 v0, p0

    array-length v4, v0

    const/16 v5, 0x8

    if-lt v4, v5, :cond_295

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v4

    :goto_8d
    move-object/from16 v0, p0

    array-length v6, v0

    const/16 v7, 0x9

    if-lt v6, v7, :cond_29c

    move-object/from16 v0, p0

    array-length v6, v0

    add-int/lit8 v6, v6, -0x8

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v6

    :goto_9f
    add-long/2addr v2, v6

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzpd;->zzc(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_b0

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_b3

    :cond_b0
    const-wide/16 v4, -0x2

    add-long/2addr v2, v4

    :cond_b3
    return-wide v2

    :cond_b4
    move-object/from16 v0, p0

    array-length v2, v0

    const/16 v3, 0x40

    if-gt v2, v3, :cond_181

    .line 6000
    move-object/from16 v0, p0

    array-length v2, v0

    const/16 v3, 0x18

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v6

    int-to-long v8, v2

    add-int/lit8 v3, v2, -0x10

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v10

    add-long/2addr v8, v10

    const-wide v10, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long v8, v6, v4

    const/16 v3, 0x34

    invoke-static {v8, v9, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v8

    const/16 v3, 0x25

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v10

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v12

    add-long/2addr v6, v12

    const/4 v3, 0x7

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v12

    add-long/2addr v6, v12

    add-long/2addr v4, v6

    const/16 v3, 0x1f

    invoke-static {v6, v7, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    add-long/2addr v6, v8

    add-long/2addr v6, v10

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v8

    add-int/lit8 v3, v2, -0x20

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v10

    add-long/2addr v8, v10

    add-int/lit8 v3, v2, -0x8

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v10

    add-long v12, v8, v10

    const/16 v3, 0x34

    invoke-static {v12, v13, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v12

    const/16 v3, 0x25

    invoke-static {v8, v9, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v14

    add-int/lit8 v3, v2, -0x18

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v16

    add-long v8, v8, v16

    const/4 v3, 0x7

    invoke-static {v8, v9, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v16

    add-long v14, v14, v16

    add-int/lit8 v2, v2, -0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v2

    add-long/2addr v2, v8

    add-long v8, v2, v10

    const/16 v10, 0x1f

    invoke-static {v2, v3, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v12

    add-long/2addr v2, v14

    add-long/2addr v2, v4

    const-wide v4, -0x3b849161c568f12dL    # -8.096527404817815E21

    mul-long/2addr v2, v4

    add-long v4, v8, v6

    const-wide v8, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    .line 7000
    const/16 v4, 0x2f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    .line 6000
    const-wide v4, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    mul-long/2addr v2, v4

    add-long/2addr v2, v6

    .line 8000
    const/16 v4, 0x2f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    .line 6000
    const-wide v4, -0x3b849161c568f12dL    # -8.096527404817815E21

    mul-long/2addr v2, v4

    .line 0
    goto/16 :goto_7f

    .line 9000
    :cond_181
    move-object/from16 v0, p0

    array-length v9, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v18

    add-int/lit8 v2, v9, -0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v2

    const-wide v4, -0x72a753d9501ed1b9L

    xor-long v6, v2, v4

    add-int/lit8 v2, v9, -0x38

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v2

    const-wide v4, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    xor-long v20, v2, v4

    const/4 v2, 0x2

    new-array v8, v2, [J

    const/4 v2, 0x2

    new-array v0, v2, [J

    move-object/from16 v16, v0

    add-int/lit8 v3, v9, -0x40

    int-to-long v4, v9

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/zzpd;->zza([BIJJ[J)V

    add-int/lit8 v11, v9, -0x20

    int-to-long v2, v9

    const-wide v4, -0x72a753d9501ed1b9L

    mul-long v12, v2, v4

    const-wide v14, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/zzpd;->zza([BIJJ[J)V

    const/4 v2, 0x1

    aget-wide v2, v8, v2

    .line 10000
    const/16 v4, 0x2f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    .line 9000
    const-wide v4, -0x72a753d9501ed1b9L

    mul-long/2addr v2, v4

    add-long v4, v20, v2

    add-long v2, v4, v18

    const/16 v10, 0x27

    invoke-static {v2, v3, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const-wide v10, -0x72a753d9501ed1b9L

    mul-long/2addr v10, v2

    const/16 v2, 0x21

    invoke-static {v6, v7, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const-wide v6, -0x72a753d9501ed1b9L

    mul-long v14, v2, v6

    add-int/lit8 v2, v9, -0x1

    and-int/lit8 v2, v2, -0x40

    const/4 v3, 0x0

    move-wide v6, v10

    move v9, v2

    :goto_1ff
    add-long/2addr v6, v14

    const/4 v2, 0x0

    aget-wide v10, v8, v2

    add-long/2addr v6, v10

    add-int/lit8 v2, v3, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v10

    add-long/2addr v6, v10

    const/16 v2, 0x25

    invoke-static {v6, v7, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v6

    const-wide v10, -0x72a753d9501ed1b9L

    mul-long/2addr v6, v10

    const/4 v2, 0x1

    aget-wide v10, v8, v2

    add-long/2addr v10, v14

    add-int/lit8 v2, v3, 0x30

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzpd;->zzb([BI)J

    move-result-wide v12

    add-long/2addr v10, v12

    const/16 v2, 0x2a

    invoke-static {v10, v11, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v10

    const-wide v12, -0x72a753d9501ed1b9L

    mul-long/2addr v10, v12

    const/4 v2, 0x1

    aget-wide v12, v16, v2

    xor-long v18, v6, v12

    const/4 v2, 0x0

    aget-wide v6, v8, v2

    xor-long v14, v10, v6

    const/4 v2, 0x0

    aget-wide v6, v16, v2

    xor-long/2addr v4, v6

    const/16 v2, 0x21

    invoke-static {v4, v5, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v20

    const/4 v2, 0x1

    aget-wide v4, v8, v2

    const-wide v6, -0x72a753d9501ed1b9L

    mul-long/2addr v4, v6

    const/4 v2, 0x0

    aget-wide v6, v16, v2

    add-long v6, v6, v18

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/zzpd;->zza([BIJJ[J)V

    add-int/lit8 v11, v3, 0x20

    const/4 v2, 0x1

    aget-wide v4, v16, v2

    add-long v12, v20, v4

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/zzpd;->zza([BIJJ[J)V

    add-int/lit8 v3, v3, 0x40

    add-int/lit8 v2, v9, -0x40

    if-nez v2, :cond_2a3

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    const/4 v4, 0x0

    aget-wide v4, v16, v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzpd;->zzc(JJ)J

    move-result-wide v2

    .line 11000
    const/16 v4, 0x2f

    ushr-long v4, v14, v4

    xor-long/2addr v4, v14

    .line 9000
    const-wide v6, -0x72a753d9501ed1b9L

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long v2, v2, v18

    const/4 v4, 0x1

    aget-wide v4, v8, v4

    const/4 v6, 0x1

    aget-wide v6, v16, v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzpd;->zzc(JJ)J

    move-result-wide v4

    add-long v4, v4, v20

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzpd;->zzc(JJ)J

    move-result-wide v2

    goto/16 :goto_7f

    .line 0
    :cond_295
    const-wide v4, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    goto/16 :goto_8d

    :cond_29c
    const-wide v6, -0x5a47a3a1e67127b7L    # -5.623071142144676E-127

    goto/16 :goto_9f

    :cond_2a3
    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move v9, v2

    goto/16 :goto_1ff
.end method
