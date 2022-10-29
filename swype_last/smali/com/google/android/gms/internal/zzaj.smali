.class public final Lcom/google/android/gms/internal/zzaj;
.super Ljava/lang/Object;


# direct methods
.method public static zza([BZ)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_9

    const/16 v0, 0xb

    :goto_4
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x2

    goto :goto_4
.end method

.method public static zza(Ljava/lang/String;Z)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_28

    const/16 v0, 0xb

    :goto_4
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unable to decode "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    const/4 v0, 0x2

    goto :goto_4

    :cond_2a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :cond_30
    return-object v0
.end method
