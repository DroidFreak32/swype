.class public Lcom/facebook/rebound/AnimationQueue;
.super Ljava/lang/Object;
.source "AnimationQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/AnimationQueue$Callback;
    }
.end annotation


# instance fields
.field private final mAnimationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rebound/AnimationQueue$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mChoreographer:Lcom/facebook/rebound/ChoreographerCompat;

.field private final mChoreographerCallback:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

.field private final mPendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mTempValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    .line 46
    invoke-static {}, Lcom/facebook/rebound/ChoreographerCompat;->getInstance()Lcom/facebook/rebound/ChoreographerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mChoreographer:Lcom/facebook/rebound/ChoreographerCompat;

    .line 47
    new-instance v0, Lcom/facebook/rebound/AnimationQueue$1;

    invoke-direct {v0, p0}, Lcom/facebook/rebound/AnimationQueue$1;-><init>(Lcom/facebook/rebound/AnimationQueue;)V

    iput-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mChoreographerCallback:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rebound/AnimationQueue;J)V
    .registers 4
    .param p0, "x0"    # Lcom/facebook/rebound/AnimationQueue;
    .param p1, "x1"    # J

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/facebook/rebound/AnimationQueue;->onFrame(J)V

    return-void
.end method

.method private onFrame(J)V
    .registers 11
    .param p1, "frameTimeNanos"    # J

    .prologue
    const/4 v7, 0x0

    .line 128
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 131
    .local v3, "nextPendingValue":Ljava/lang/Double;
    if-eqz v3, :cond_4b

    .line 132
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v5, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 133
    const/4 v1, 0x0

    .line 139
    .local v1, "drainingOffset":I
    :goto_11
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_20
    if-ltz v2, :cond_5d

    .line 141
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 142
    .local v4, "val":Ljava/lang/Double;
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    add-int v0, v5, v1

    .line 143
    .local v0, "cbIdx":I
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_48

    .line 144
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/rebound/AnimationQueue$Callback;

    invoke-interface {v5, v4}, Lcom/facebook/rebound/AnimationQueue$Callback;->onFrame(Ljava/lang/Double;)V

    .line 140
    :cond_48
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 135
    .end local v0    # "cbIdx":I
    .end local v1    # "drainingOffset":I
    .end local v2    # "i":I
    .end local v4    # "val":Ljava/lang/Double;
    :cond_4b
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .restart local v1    # "drainingOffset":I
    goto :goto_11

    .line 147
    .restart local v2    # "i":I
    :cond_5d
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mTempValues:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 149
    :goto_62
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_77

    .line 150
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_62

    .line 153
    :cond_77
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mAnimationQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8a

    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 154
    iput-boolean v7, p0, Lcom/facebook/rebound/AnimationQueue;->mRunning:Z

    .line 158
    :goto_89
    return-void

    .line 156
    :cond_8a
    iget-object v5, p0, Lcom/facebook/rebound/AnimationQueue;->mChoreographer:Lcom/facebook/rebound/ChoreographerCompat;

    iget-object v6, p0, Lcom/facebook/rebound/AnimationQueue;->mChoreographerCallback:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

    invoke-virtual {v5, v6}, Lcom/facebook/rebound/ChoreographerCompat;->postFrameCallback(Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;)V

    goto :goto_89
.end method

.method private runIfIdle()V
    .registers 3

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/facebook/rebound/AnimationQueue;->mRunning:Z

    if-nez v0, :cond_e

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/AnimationQueue;->mRunning:Z

    .line 113
    iget-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mChoreographer:Lcom/facebook/rebound/ChoreographerCompat;

    iget-object v1, p0, Lcom/facebook/rebound/AnimationQueue;->mChoreographerCallback:Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/ChoreographerCompat;->postFrameCallback(Lcom/facebook/rebound/ChoreographerCompat$FrameCallback;)V

    .line 115
    :cond_e
    return-void
.end method


# virtual methods
.method public addAllValues(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Double;>;"
    iget-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-direct {p0}, Lcom/facebook/rebound/AnimationQueue;->runIfIdle()V

    .line 73
    return-void
.end method

.method public addCallback(Lcom/facebook/rebound/AnimationQueue$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/facebook/rebound/AnimationQueue$Callback;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public addValue(Ljava/lang/Double;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-direct {p0}, Lcom/facebook/rebound/AnimationQueue;->runIfIdle()V

    .line 64
    return-void
.end method

.method public clearCallbacks()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    return-void
.end method

.method public clearValues()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 80
    return-void
.end method

.method public removeCallback(Lcom/facebook/rebound/AnimationQueue$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/facebook/rebound/AnimationQueue$Callback;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/rebound/AnimationQueue;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method
