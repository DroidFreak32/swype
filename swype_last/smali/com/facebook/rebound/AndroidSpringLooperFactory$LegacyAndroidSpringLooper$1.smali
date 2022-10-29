.class Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;
.super Ljava/lang/Object;
.source "AndroidSpringLooperFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;-><init>(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 61
    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    # getter for: Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mStarted:Z
    invoke-static {v2}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->access$000(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    iget-object v2, v2, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    if-nez v2, :cond_f

    .line 67
    :cond_e
    :goto_e
    return-void

    .line 64
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 65
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    iget-object v2, v2, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    iget-object v3, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    # getter for: Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLastTime:J
    invoke-static {v3}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->access$100(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/facebook/rebound/BaseSpringSystem;->loop(D)V

    .line 66
    iget-object v2, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    # getter for: Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->access$300(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper$1;->this$0:Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;

    # getter for: Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->mLooperRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;->access$200(Lcom/facebook/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method
