.class public final Lcom/google/android/gms/internal/zzpg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/zzb$zzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpg$zzb;,
        Lcom/google/android/gms/internal/zzpg$zza;
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static qU:Ljava/lang/Boolean;


# instance fields
.field final qV:Lcom/google/android/gms/internal/zzpg$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->qU:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzpg$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzpg$zza;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpg;-><init>(Lcom/google/android/gms/internal/zzpg$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzpg$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzpg$zza;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpg;-><init>(Lcom/google/android/gms/internal/zzpg$zza;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzpg$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpg$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpg;->qV:Lcom/google/android/gms/internal/zzpg$zza;

    return-void
.end method

.method private static zzd(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 0
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1000
    :cond_8
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpd;->zzm([B)J

    move-result-wide v0

    .line 0
    :goto_1a
    return-wide v0

    :cond_1b
    sget-object v0, Lcom/google/android/gms/internal/zzpg;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpd;->zzm([B)J

    move-result-wide v0

    goto :goto_1a
.end method

.method private static zzgt(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpg$zzb;
    .registers 11

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_8

    move-object v0, v6

    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v1, ""

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_19

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    :cond_19
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gtz v4, :cond_40

    const-string/jumbo v1, "LogSamplerImpl"

    const-string/jumbo v2, "Failed to parse the rule: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_35
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_7

    :cond_3a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_35

    :cond_40
    :try_start_40
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_51} :catch_83

    move-result-wide v4

    cmp-long v0, v2, v8

    if-ltz v0, :cond_5a

    cmp-long v0, v4, v8

    if-gez v0, :cond_a5

    :cond_5a
    const-string/jumbo v0, "LogSamplerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x48

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "negative values not supported: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_7

    :catch_83
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "LogSamplerImpl"

    const-string/jumbo v3, "parseLong() failed while parsing: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9f

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_99
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto/16 :goto_7

    :cond_9f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_99

    :cond_a5
    new-instance v0, Lcom/google/android/gms/internal/zzpg$zzb;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpg$zzb;-><init>(Ljava/lang/String;JJ)V

    goto/16 :goto_7
.end method


# virtual methods
.method public final zzg(Ljava/lang/String;I)Z
    .registers 13

    .prologue
    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    :goto_9
    if-nez p1, :cond_14

    const/4 v0, 0x1

    .line 4000
    :goto_c
    return v0

    .line 0
    :cond_d
    if-ltz p2, :cond_be

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->qV:Lcom/google/android/gms/internal/zzpg$zza;

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_2b

    const-wide/16 v0, 0x0

    .line 0
    :goto_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpg;->qV:Lcom/google/android/gms/internal/zzpg$zza;

    .line 3000
    iget-object v3, v2, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v3, :cond_35

    const/4 v2, 0x0

    .line 0
    :goto_23
    invoke-static {v2}, Lcom/google/android/gms/internal/zzpg;->zzgt(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpg$zzb;

    move-result-object v2

    if-nez v2, :cond_57

    const/4 v0, 0x1

    goto :goto_c

    .line 2000
    :cond_2b
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaeo;->getLong$5e91314b(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1c

    .line 3000
    :cond_35
    iget-object v3, v2, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "gms:playlog:service:sampling_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_51

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4c
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzaeo;->zza$3a3f5217(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_51
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4c

    .line 0
    :cond_57
    iget-object v3, v2, Lcom/google/android/gms/internal/zzpg$zzb;->qW:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/zzpg;->zzd(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzpg$zzb;->qX:J

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzpg$zzb;->qY:J

    .line 4000
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_6d

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_94

    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x48

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "negative values not supported: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_bb

    .line 5000
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_a8

    rem-long/2addr v0, v2

    .line 4000
    :goto_a1
    cmp-long v0, v0, v4

    if-gez v0, :cond_bb

    const/4 v0, 0x1

    goto/16 :goto_c

    .line 5000
    :cond_a8
    const-wide v6, 0x7fffffffffffffffL

    rem-long/2addr v6, v2

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v0, v8

    rem-long/2addr v0, v2

    add-long/2addr v0, v6

    rem-long/2addr v0, v2

    goto :goto_a1

    .line 4000
    :cond_bb
    const/4 v0, 0x0

    .line 0
    goto/16 :goto_c

    :cond_be
    move-object p1, v0

    goto/16 :goto_9
.end method
