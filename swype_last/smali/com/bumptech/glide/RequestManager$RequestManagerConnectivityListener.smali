.class final Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestManagerConnectivityListener"
.end annotation


# instance fields
.field private final requestTracker:Lcom/bumptech/glide/manager/RequestTracker;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/RequestTracker;)V
    .registers 2
    .param p1, "requestTracker"    # Lcom/bumptech/glide/manager/RequestTracker;

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 794
    return-void
.end method


# virtual methods
.method public final onConnectivityChanged(Z)V
    .registers 6
    .param p1, "isConnected"    # Z

    .prologue
    .line 798
    if-eqz p1, :cond_37

    .line 799
    iget-object v1, p0, Lcom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 1103
    iget-object v0, v1, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/Request;

    .line 1104
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1106
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 1107
    iget-boolean v3, v1, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    if-nez v3, :cond_31

    .line 1108
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    goto :goto_e

    .line 1110
    :cond_31
    iget-object v3, v1, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 801
    :cond_37
    return-void
.end method
