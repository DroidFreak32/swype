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
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->qU:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzpg$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzpg$zza;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpg;-><init>(Lcom/google/android/gms/internal/zzpg$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpg$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzpg$zza;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpg;-><init>(Lcom/google/android/gms/internal/zzpg$zza;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzpg$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpg$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpg;->qV:Lcom/google/android/gms/internal/zzpg$zza;

    return-void
.end method

.method private static zzd(Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    :cond_0
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
    :goto_0
    return-wide v0

    :cond_1
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

    goto :goto_0
.end method

.method private static zzgt(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpg$zzb;
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, ""

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v2, 0x1

    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gtz v4, :cond_3

    const-string/jumbo v1, "LogSamplerImpl"

    const-string/jumbo v2, "Failed to parse the rule: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v0, v2, v8

    if-ltz v0, :cond_4

    cmp-long v0, v4, v8

    if-gez v0, :cond_6

    :cond_4
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

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string/jumbo v2, "LogSamplerImpl"

    const-string/jumbo v3, "parseLong() failed while parsing: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/zzpg$zzb;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpg$zzb;-><init>(Ljava/lang/String;JJ)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final zzg(Ljava/lang/String;I)Z
    .locals 10

    .prologue
    .line 0
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 4000
    :goto_1
    return v0

    .line 0
    :cond_0
    if-ltz p2, :cond_a

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->qV:Lcom/google/android/gms/internal/zzpg$zza;

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_2

    const-wide/16 v0, 0x0

    .line 0
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzpg;->qV:Lcom/google/android/gms/internal/zzpg$zza;

    .line 3000
    iget-object v3, v2, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v3, :cond_3

    const/4 v2, 0x0

    .line 0
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/zzpg;->zzgt(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpg$zzb;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    .line 2000
    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaeo;->getLong$5e91314b(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_2

    .line 3000
    :cond_3
    iget-object v3, v2, Lcom/google/android/gms/internal/zzpg$zza;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "gms:playlog:service:sampling_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzaeo;->zza$3a3f5217(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 0
    :cond_5
    iget-object v3, v2, Lcom/google/android/gms/internal/zzpg$zzb;->qW:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/zzpg;->zzd(Ljava/lang/String;J)J

    move-result-wide v0

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzpg$zzb;->qX:J

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzpg$zzb;->qY:J

    .line 4000
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_7

    :cond_6
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

    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_9

    .line 5000
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_8

    rem-long/2addr v0, v2

    .line 4000
    :goto_5
    cmp-long v0, v0, v4

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto/16 :goto_1

    .line 5000
    :cond_8
    const-wide v6, 0x7fffffffffffffffL

    rem-long/2addr v6, v2

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v0, v8

    rem-long/2addr v0, v2

    add-long/2addr v0, v6

    rem-long/2addr v0, v2

    goto :goto_5

    .line 4000
    :cond_9
    const/4 v0, 0x0

    .line 0
    goto/16 :goto_1

    :cond_a
    move-object p1, v0

    goto/16 :goto_0
.end method
