.class Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;
.super Ljava/lang/Object;
.source "AndroidSpringLooperFactory.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 9
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 113
    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    # getter for: Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mStarted:Z
    invoke-static {v2}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$400(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    iget-object v2, v2, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    if-nez v2, :cond_f

    .line 120
    :cond_e
    :goto_e
    return-void

    .line 116
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 117
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    iget-object v2, v2, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-object v3, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    # getter for: Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J
    invoke-static {v3}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$500(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/rebound/BaseSpringSystem;->loop(D)V

    .line 118
    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    # setter for: Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mLastTime:J
    invoke-static {v2, v0, v1}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$502(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;J)J

    .line 119
    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    # getter for: Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v2}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$700(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    # getter for: Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;
    invoke-static {v3}, Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$600(Lcom/facebook/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_e
.end method
