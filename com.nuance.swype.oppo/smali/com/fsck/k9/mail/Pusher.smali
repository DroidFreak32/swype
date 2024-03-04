.class public interface abstract Lcom/fsck/k9/mail/Pusher;
.super Ljava/lang/Object;
.source "Pusher.java"


# virtual methods
.method public abstract getLastRefresh()J
.end method

.method public abstract getRefreshInterval()I
.end method

.method public abstract refresh()V
.end method

.method public abstract setLastRefresh(J)V
.end method

.method public abstract start(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
