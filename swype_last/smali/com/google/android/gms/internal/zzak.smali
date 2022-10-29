.class final Lcom/google/android/gms/internal/zzak;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzak$zza;
    }
.end annotation


# static fields
.field static zzxe:Z

.field private static zzxf:Ljava/security/MessageDigest;

.field private static final zzxg:Ljava/lang/Object;

.field private static final zzxh:Ljava/lang/Object;

.field static zzxi:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzak;->zzxe:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzak;->zzxf:Ljava/security/MessageDigest;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzak;->zzxg:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzak;->zzxh:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/zzak;->zzxi:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/zzae$zza;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzapv;->zzf(Lcom/google/android/gms/internal/zzapv;)[B

    move-result-object v3

    .line 1000
    if-eqz p2, :cond_11

    .line 2000
    invoke-static {v3, p1, v8}, Lcom/google/android/gms/internal/zzak;->zzb([BLjava/lang/String;Z)[B

    move-result-object v0

    .line 1000
    :goto_c
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/zzaj;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    .line 0
    return-object v0

    .line 3000
    :cond_11
    invoke-static {v3}, Lcom/google/android/gms/internal/zzak;->zza$113108e5([B)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_2a

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/zzak;->zzb$5a50df73()Lcom/google/android/gms/internal/zzae$zza;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapv;->zzf(Lcom/google/android/gms/internal/zzapv;)[B

    move-result-object v0

    .line 4000
    invoke-static {v0, p1, v8}, Lcom/google/android/gms/internal/zzak;->zzb([BLjava/lang/String;Z)[B

    move-result-object v0

    goto :goto_c

    .line 3000
    :cond_2a
    new-instance v4, Lcom/google/android/gms/internal/zzae$zzf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzae$zzf;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [[B

    iput-object v1, v4, Lcom/google/android/gms/internal/zzae$zzf;->zzey:[[B

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/zzak;->zzb([BLjava/lang/String;Z)[B

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/zzae$zzf;->zzey:[[B

    add-int/lit8 v0, v1, 0x1

    aput-object v6, v7, v1

    move v1, v0

    goto :goto_3c

    :cond_54
    invoke-static {v3}, Lcom/google/android/gms/internal/zzak;->zzg([B)[B

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/zzae$zzf;->zzet:[B

    invoke-static {v4}, Lcom/google/android/gms/internal/zzapv;->zzf(Lcom/google/android/gms/internal/zzapv;)[B

    move-result-object v0

    goto :goto_c
.end method

.method static synthetic zza(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/zzak;->zzxf:Ljava/security/MessageDigest;

    return-object p0
.end method

.method private static zza$113108e5([B)Ljava/util/Vector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-gtz v1, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    array-length v1, p0

    add-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v4, v1, 0xff

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v4, :cond_2e

    mul-int/lit16 v5, v3, 0xff

    :try_start_19
    array-length v2, p0

    sub-int/2addr v2, v5

    const/16 v6, 0xff

    if-le v2, v6, :cond_2c

    add-int/lit16 v2, v5, 0xff

    :goto_21
    invoke-static {p0, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_15

    :cond_2c
    array-length v2, p0
    :try_end_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_2d} :catch_30

    goto :goto_21

    :cond_2e
    move-object v0, v1

    goto :goto_6

    :catch_30
    move-exception v1

    goto :goto_6
.end method

.method static zza$166451eb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzak;->zzb$37a54452(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaj;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method static zzar()V
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/zzak;->zzxh:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/gms/internal/zzak;->zzxe:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zzak;->zzxe:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/internal/zzak$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzak$zza;-><init>(B)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private static zzas()Ljava/security/MessageDigest;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzak;->zzar()V

    const/4 v1, 0x0

    :try_start_5
    sget-object v2, Lcom/google/android/gms/internal/zzak;->zzxi:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_e} :catch_19

    move-result v1

    :goto_f
    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    sget-object v1, Lcom/google/android/gms/internal/zzak;->zzxf:Ljava/security/MessageDigest;

    if-eqz v1, :cond_11

    sget-object v0, Lcom/google/android/gms/internal/zzak;->zzxf:Ljava/security/MessageDigest;

    goto :goto_11

    :catch_19
    move-exception v2

    goto :goto_f
.end method

.method private static zzb([BLjava/lang/String;Z)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x100

    const/16 v3, 0x20

    .line 0
    .line 5000
    if-eqz p2, :cond_7e

    const/16 v0, 0xef

    .line 0
    :goto_8
    array-length v1, p0

    if-le v1, v0, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/zzak;->zzb$5a50df73()Lcom/google/android/gms/internal/zzae$zza;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapv;->zzf(Lcom/google/android/gms/internal/zzapv;)[B

    move-result-object p0

    :cond_13
    array-length v1, p0

    if-ge v1, v0, :cond_81

    array-length v1, p0

    sub-int v1, v0, v1

    new-array v1, v1, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v2, p0

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_3b
    if-eqz p2, :cond_51

    invoke-static {v0}, Lcom/google/android/gms/internal/zzak;->zzg([B)[B

    move-result-object v1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :cond_51
    new-array v1, v4, [B

    new-instance v2, Lcom/google/android/gms/internal/zzal;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzal;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzal;->zzb([B[B)V

    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7d

    .line 6000
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_6e

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_6e
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzaoq;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzaoq;-><init>([B)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzaoq;->zzax([B)V

    .line 0
    :cond_7d
    return-object v1

    .line 5000
    :cond_7e
    const/16 v0, 0xff

    goto :goto_8

    .line 0
    :cond_81
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p0

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_3b
.end method

.method private static zzb$37a54452(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    const/4 v2, 0x3

    new-instance v1, Lcom/google/android/gms/internal/zzae$zzc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzae$zzc;-><init>()V

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_29

    const-string/jumbo v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_13
    iput-object v0, v1, Lcom/google/android/gms/internal/zzae$zzc;->zzer:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_2f

    const-string/jumbo v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_22
    iput-object v0, v1, Lcom/google/android/gms/internal/zzae$zzc;->zzes:[B

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapv;->zzf(Lcom/google/android/gms/internal/zzapv;)[B

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzaj;->zza(Ljava/lang/String;Z)[B

    move-result-object v0

    goto :goto_13

    :cond_2f
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaj;->zza(Ljava/lang/String;Z)[B
    :try_end_33
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_33} :catch_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_22

    :catch_35
    move-exception v0

    :goto_36
    const/4 v0, 0x0

    goto :goto_28

    :catch_38
    move-exception v0

    goto :goto_36
.end method

.method private static zzb$5a50df73()Lcom/google/android/gms/internal/zzae$zza;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzae$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzae$zza;-><init>()V

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzae$zza;->zzdl:Ljava/lang/Long;

    return-object v0
.end method

.method public static zzg([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/zzak;->zzxg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/zzak;->zzas()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v2, "Cannot compute hash"

    invoke-direct {v0, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    :try_start_15
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object v0, Lcom/google/android/gms/internal/zzak;->zzxf:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_12

    return-object v0
.end method
