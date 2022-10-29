.class Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;
.super Ljava/lang/Object;
.source "OemAudioPrompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->playerDone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

.field final synthetic val$error:Z


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Z)V
    .registers 3

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    iput-boolean p2, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->val$error:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$000(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_isDisposed:Z
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$100(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 151
    :cond_11
    :goto_11
    return-void

    .line 116
    :cond_12
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->val$error:Z

    if-eqz v0, :cond_5e

    .line 118
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$000(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 119
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # setter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;
    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$002(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 120
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # invokes: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->createPlayer()Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$200(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Landroid/media/MediaPlayer;

    move-result-object v1

    # setter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$002(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 121
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_player:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$000(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_5e

    .line 123
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$300(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 124
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$300(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$400(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # setter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$302(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .line 126
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # setter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$402(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_58
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->dispose()V

    goto :goto_11

    .line 133
    :cond_5e
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_restart:Z
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$500(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 135
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # invokes: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->play()V
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$600(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)V

    goto :goto_11

    .line 138
    :cond_6c
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$300(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 140
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->val$error:Z

    if-eqz v0, :cond_92

    .line 142
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$300(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$400(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    .line 148
    :cond_87
    :goto_87
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # setter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$302(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    .line 149
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # setter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$402(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 145
    :cond_92
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_currentListener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$300(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    # getter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->_context:Ljava/lang/Object;
    invoke-static {v1}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$400(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->stopped(Ljava/lang/Object;)V

    goto :goto_87
.end method
