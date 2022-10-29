.class final Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# instance fields
.field private final loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/bumptech/glide/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/bumptech/glide/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    return-void
.end method


# virtual methods
.method public final getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 19
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    monitor-enter v3

    .line 20
    :try_start_3
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    .local v1, "safeKey":Ljava/lang/String;
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2a

    .line 22
    if-nez v1, :cond_29

    .line 24
    :try_start_e
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 25
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 26
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/util/Util;->sha256BytesToHex([B)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_1f} :catch_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_1f} :catch_32

    move-result-object v1

    .line 32
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :goto_20
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    monitor-enter v3

    .line 33
    :try_start_23
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v2, p1, v1}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_37

    .line 36
    :cond_29
    return-object v1

    .line 21
    .end local v1    # "safeKey":Ljava/lang/String;
    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v2

    .line 28
    .restart local v1    # "safeKey":Ljava/lang/String;
    :catch_2d
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_20

    .line 30
    :catch_32
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_20

    .line 34
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2
.end method
