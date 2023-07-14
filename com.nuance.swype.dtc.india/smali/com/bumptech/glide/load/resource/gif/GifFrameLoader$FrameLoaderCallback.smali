.class final Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;B)V
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    .line 133
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_2

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 135
    .local v0, "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;

    .line 1110
    iget-boolean v4, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    if-eqz v4, :cond_0

    .line 1111
    iget-object v2, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 141
    .end local v0    # "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :goto_0
    return v1

    .line 1115
    .restart local v0    # "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :cond_0
    iget-object v4, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 1116
    iput-object v0, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->current:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 1117
    iget-object v5, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->callback:Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    .line 1146
    iget v6, v0, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    .line 1117
    invoke-interface {v5, v6}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$FrameCallback;->onFrameReady(I)V

    .line 1119
    if-eqz v4, :cond_1

    .line 1120
    iget-object v5, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1123
    :cond_1
    iput-boolean v2, v3, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 1124
    invoke-virtual {v3}, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    goto :goto_0

    .line 137
    .end local v0    # "target":Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_3

    .line 138
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 139
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_3
    move v1, v2

    .line 141
    goto :goto_0
.end method
