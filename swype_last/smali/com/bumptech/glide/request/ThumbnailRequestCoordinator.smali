.class public final Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;
.super Ljava/lang/Object;
.source "ThumbnailRequestCoordinator.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/RequestCoordinator;


# instance fields
.field private coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

.field private full:Lcom/bumptech/glide/request/Request;

.field private thumb:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/request/RequestCoordinator;)V
    .registers 2
    .param p1, "coordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 18
    return-void
.end method


# virtual methods
.method public final begin()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    if-nez v0, :cond_d

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 89
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 92
    :cond_1a
    return-void
.end method

.method public final canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z
    .registers 5
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    .line 1053
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v2, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_e
    move v2, v0

    .line 49
    :goto_f
    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isAnyResourceSet()Z

    move-result v2

    if-nez v2, :cond_22

    :goto_1f
    return v0

    :cond_20
    move v2, v1

    .line 1053
    goto :goto_f

    :cond_22
    move v0, v1

    .line 49
    goto :goto_1f
.end method

.method public final canSetImage(Lcom/bumptech/glide/request/Request;)Z
    .registers 5
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    .line 1038
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v2, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_e
    move v2, v0

    .line 34
    :goto_f
    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v2}, Lcom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v2

    if-nez v2, :cond_24

    :cond_21
    :goto_21
    return v0

    :cond_22
    move v2, v1

    .line 1038
    goto :goto_f

    :cond_24
    move v0, v1

    .line 34
    goto :goto_21
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 107
    return-void
.end method

.method public final isAnyResourceSet()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    .line 1078
    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v2}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v2

    if-eqz v2, :cond_19

    move v2, v1

    .line 58
    :goto_f
    if-nez v2, :cond_17

    invoke-virtual {p0}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->isResourceSet()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    move v0, v1

    :cond_18
    return v0

    :cond_19
    move v2, v0

    .line 1078
    goto :goto_f
.end method

.method public final isCancelled()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isComplete()Z
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final isResourceSet()Z
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isResourceSet()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final isRunning()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final onRequestSuccess(Lcom/bumptech/glide/request/Request;)V
    .registers 3
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    :cond_8
    :goto_8
    return-void

    .line 66
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_12

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->coordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    .line 72
    :cond_12
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v0

    if-nez v0, :cond_8

    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    goto :goto_8
.end method

.method public final pause()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 98
    return-void
.end method

.method public final recycle()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 155
    return-void
.end method

.method public final setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V
    .registers 3
    .param p1, "full"    # Lcom/bumptech/glide/request/Request;
    .param p2, "thumb"    # Lcom/bumptech/glide/request/Request;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->full:Lcom/bumptech/glide/request/Request;

    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->thumb:Lcom/bumptech/glide/request/Request;

    .line 23
    return-void
.end method
