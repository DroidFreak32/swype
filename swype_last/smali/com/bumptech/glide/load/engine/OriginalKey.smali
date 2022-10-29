.class final Lcom/bumptech/glide/load/engine/OriginalKey;
.super Ljava/lang/Object;
.source "OriginalKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final id:Ljava/lang/String;

.field private final signature:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "signature"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 19
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    if-ne p0, p1, :cond_5

    .line 39
    :cond_4
    :goto_4
    return v1

    .line 26
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 27
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 30
    check-cast v0, Lcom/bumptech/glide/load/engine/OriginalKey;

    .line 32
    .local v0, "that":Lcom/bumptech/glide/load/engine/OriginalKey;
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    move v1, v2

    .line 33
    goto :goto_4

    .line 35
    :cond_22
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v3, v4}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 36
    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 44
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 45
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v2}, Lcom/bumptech/glide/load/Key;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 46
    return v1
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 4
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 53
    return-void
.end method
