.class final Lcom/nuance/android/gif/AnimatedGifView$1;
.super Ljava/lang/Object;
.source "AnimatedGifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/gif/AnimatedGifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/android/gif/AnimatedGifView;


# direct methods
.method constructor <init>(Lcom/nuance/android/gif/AnimatedGifView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/android/gif/AnimatedGifView;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/nuance/android/gif/AnimatedGifView$1;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$1;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->animationCallback:Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;
    invoke-static {v0}, Lcom/nuance/android/gif/AnimatedGifView;->access$200(Lcom/nuance/android/gif/AnimatedGifView;)Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$1;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->frameIndex:I
    invoke-static {v0}, Lcom/nuance/android/gif/AnimatedGifView;->access$000(Lcom/nuance/android/gif/AnimatedGifView;)I

    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$1;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView;->frameCount:I
    invoke-static {v0}, Lcom/nuance/android/gif/AnimatedGifView;->access$100(Lcom/nuance/android/gif/AnimatedGifView;)I

    .line 201
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$1;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-virtual {v0}, Lcom/nuance/android/gif/AnimatedGifView;->invalidate()V

    .line 202
    return-void
.end method
