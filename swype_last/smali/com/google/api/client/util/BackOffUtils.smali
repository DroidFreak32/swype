.class public final Lcom/google/api/client/util/BackOffUtils;
.super Ljava/lang/Object;
.source "BackOffUtils.java"


# direct methods
.method public static next(Lcom/google/api/client/util/Sleeper;Lcom/google/api/client/util/BackOff;)Z
    .registers 6
    .param p0, "sleeper"    # Lcom/google/api/client/util/Sleeper;
    .param p1, "backOff"    # Lcom/google/api/client/util/BackOff;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Lcom/google/api/client/util/BackOff;->nextBackOffMillis()J

    move-result-wide v0

    .line 47
    .local v0, "backOffTime":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    .line 48
    const/4 v2, 0x0

    .line 51
    :goto_b
    return v2

    .line 50
    :cond_c
    invoke-interface {p0, v0, v1}, Lcom/google/api/client/util/Sleeper;->sleep(J)V

    .line 51
    const/4 v2, 0x1

    goto :goto_b
.end method
