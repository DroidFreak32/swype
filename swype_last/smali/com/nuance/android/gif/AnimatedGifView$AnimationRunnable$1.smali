.class final Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable$1;
.super Ljava/lang/Object;
.source "AnimatedGifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;


# direct methods
.method constructor <init>(Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;)V
    .registers 2
    .param p1, "this$1"    # Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable$1;->this$1:Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable$1;->this$1:Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;

    iget-object v0, v0, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->animationCallback:Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;
    invoke-static {v0}, Lcom/nuance/android/gif/AnimatedGifView;->access$200(Lcom/nuance/android/gif/AnimatedGifView;)Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    .line 343
    return-void
.end method
