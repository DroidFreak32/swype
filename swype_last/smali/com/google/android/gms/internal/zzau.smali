.class public final Lcom/google/android/gms/internal/zzau;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzau$zza;
    }
.end annotation


# static fields
.field private static zzagb:Ljavax/crypto/Cipher;

.field private static final zzagc:Ljava/lang/Object;

.field private static final zzagd:Ljava/lang/Object;


# instance fields
.field private final zzaga:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzau;->zzagb:Ljavax/crypto/Cipher;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzau;->zzagc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzau;->zzagd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzaga:Ljava/security/SecureRandom;

    return-void
.end method

.method private static getCipher()Ljavax/crypto/Cipher;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/zzau;->zzagd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzau;->zzagb:Ljavax/crypto/Cipher;

    if-nez v0, :cond_10

    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzau;->zzagb:Ljavax/crypto/Cipher;

    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/zzau;->zzagb:Ljavax/crypto/Cipher;

    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public final zzc([BLjava/lang/String;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzau$zza;
        }
    .end annotation

    const/16 v2, 0x10

    array-length v0, p1

    if-eq v0, v2, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzaj;->zza(Ljava/lang/String;Z)[B

    move-result-object v0

    array-length v1, v0

    if-gt v1, v2, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;)V

    throw v0
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_19} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_19} :catch_5f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_c .. :try_end_19} :catch_66
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_19} :catch_6d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_c .. :try_end_19} :catch_74
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_19} :catch_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_19} :catch_82

    :catch_19
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :cond_20
    :try_start_20
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/16 v2, 0x10

    new-array v2, v2, [B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x10

    new-array v0, v0, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/internal/zzau;->zzagc:Ljava/lang/Object;

    monitor-enter v3
    :try_end_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_45} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_20 .. :try_end_45} :catch_5f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_20 .. :try_end_45} :catch_66
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_20 .. :try_end_45} :catch_6d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_20 .. :try_end_45} :catch_74
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_20 .. :try_end_45} :catch_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_45} :catch_82

    :try_start_45
    invoke-static {}, Lcom/google/android/gms/internal/zzau;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v4, v5, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzau;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    monitor-exit v3

    return-object v0

    :catchall_5c
    move-exception v0

    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v0
    :try_end_5f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5e .. :try_end_5f} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_5e .. :try_end_5f} :catch_5f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5e .. :try_end_5f} :catch_66
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5e .. :try_end_5f} :catch_6d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5e .. :try_end_5f} :catch_74
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5e .. :try_end_5f} :catch_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_5f} :catch_82

    :catch_5f
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_66
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_6d
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_74
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_7b
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_82
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzd([B[B)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzau$zza;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;)V

    throw v0

    :cond_b
    :try_start_b
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/zzau;->zzagc:Ljava/lang/Object;

    monitor-enter v1
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_16} :catch_50
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_16} :catch_57
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_16} :catch_5e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_16} :catch_65
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_16} :catch_6c

    :try_start_16
    invoke-static {}, Lcom/google/android/gms/internal/zzau;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzau;->zzaga:Ljava/security/SecureRandom;

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzau;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzau;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_4d

    :try_start_31
    array-length v1, v0

    array-length v3, v2

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-array v0, v1, [B

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaj;->zza([BZ)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_31 .. :try_end_4b} :catch_50
    .catch Ljava/security/InvalidKeyException; {:try_start_31 .. :try_end_4b} :catch_57
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_31 .. :try_end_4b} :catch_5e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_31 .. :try_end_4b} :catch_65
    .catch Ljavax/crypto/BadPaddingException; {:try_start_31 .. :try_end_4b} :catch_6c

    move-result-object v0

    return-object v0

    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v0
    :try_end_50
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4f .. :try_end_50} :catch_50
    .catch Ljava/security/InvalidKeyException; {:try_start_4f .. :try_end_50} :catch_57
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4f .. :try_end_50} :catch_5e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4f .. :try_end_50} :catch_65
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4f .. :try_end_50} :catch_6c

    :catch_50
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_57
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_5e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_65
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_6c
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzl(Ljava/lang/String;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzau$zza;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x10

    .line 0
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzaj;->zza(Ljava/lang/String;Z)[B

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1a

    new-instance v0, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;)V

    throw v0
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_13} :catch_13

    :catch_13
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :cond_1a
    const/4 v2, 0x4

    const/16 v3, 0x10

    :try_start_1d
    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1000
    :goto_28
    if-ge v0, v4, :cond_34

    aget-byte v1, v2, v0

    xor-int/lit8 v1, v1, 0x44

    int-to-byte v1, v1

    aput-byte v1, v2, v0
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_31} :catch_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 0
    :cond_34
    return-object v2
.end method
