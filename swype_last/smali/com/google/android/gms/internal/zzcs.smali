.class public final Lcom/google/android/gms/internal/zzcs;
.super Lcom/google/android/gms/internal/zzcp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation


# instance fields
.field private zzath:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;)[B
    .registers 11

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 0
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1000
    array-length v0, v4

    if-ne v0, v8, :cond_35

    aget-object v0, v4, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcr;->zzac(Ljava/lang/String;)I

    move-result v0

    .line 2000
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 0
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcs;->zzie()Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzath:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcs;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcs;->zzath:Ljava/security/MessageDigest;

    if-nez v2, :cond_97

    const/4 v0, 0x0

    new-array v0, v0, [B

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_b5

    :goto_34
    return-object v0

    .line 1000
    :cond_35
    array-length v0, v4

    const/4 v2, 0x5

    if-ge v0, v2, :cond_70

    array-length v0, v4

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    move v0, v1

    :goto_3f
    array-length v5, v4

    if-ge v0, v5, :cond_6e

    aget-object v5, v4, v0

    invoke-static {v5}, Lcom/google/android/gms/internal/zzcr;->zzac(Ljava/lang/String;)I

    move-result v5

    .line 3000
    const v6, 0xffff

    and-int/2addr v6, v5

    const/high16 v7, -0x10000

    and-int/2addr v5, v7

    shr-int/lit8 v5, v5, 0x10

    xor-int/2addr v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [B

    int-to-byte v7, v5

    aput-byte v7, v6, v1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v6, v8

    .line 1000
    mul-int/lit8 v5, v0, 0x2

    aget-byte v7, v6, v1

    aput-byte v7, v2, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v6, v6, v8

    aput-byte v6, v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_6e
    move-object v0, v2

    goto :goto_23

    :cond_70
    array-length v0, v4

    new-array v0, v0, [B

    :goto_73
    array-length v2, v4

    if-ge v1, v2, :cond_23

    aget-object v2, v4, v1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcr;->zzac(Ljava/lang/String;)I

    move-result v2

    .line 4000
    and-int/lit16 v5, v2, 0xff

    const v6, 0xff00

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x8

    xor-int/2addr v5, v6

    const/high16 v6, 0xff0000

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x10

    xor-int/2addr v5, v6

    const/high16 v6, -0x1000000

    and-int/2addr v2, v6

    shr-int/lit8 v2, v2, 0x18

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    .line 1000
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 0
    :cond_97
    :try_start_97
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcs;->zzath:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcs;->zzath:Ljava/security/MessageDigest;

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcs;->zzath:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v0, v2

    if-le v0, v3, :cond_b8

    move v0, v3

    :goto_ab
    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v1

    goto :goto_34

    :catchall_b5
    move-exception v0

    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_97 .. :try_end_b7} :catchall_b5

    throw v0

    :cond_b8
    :try_start_b8
    array-length v0, v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b5

    goto :goto_ab
.end method
