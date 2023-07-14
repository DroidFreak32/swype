.class final Lcom/nuance/android/gif/AnimatedGifView$2;
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
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/android/gif/AnimatedGifView;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/nuance/android/gif/AnimatedGifView$2;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$2;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v0}, Lcom/nuance/android/gif/AnimatedGifView;->access$200(Lcom/nuance/android/gif/AnimatedGifView;)Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$2;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v0}, Lcom/nuance/android/gif/AnimatedGifView;->access$000(Lcom/nuance/android/gif/AnimatedGifView;)I

    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView$2;->this$0:Lcom/nuance/android/gif/AnimatedGifView;

    invoke-static {v0}, Lcom/nuance/android/gif/AnimatedGifView;->access$100(Lcom/nuance/android/gif/AnimatedGifView;)I

    .line 210
    return-void
.end method
