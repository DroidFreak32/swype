.class Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$3;
.super Ljava/lang/Object;
.source "OemAudioPrompt.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->createPlayer()Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$3;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$3;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    const-string/jumbo v1, "Audio prompt completed"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$3;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    const/4 v1, 0x0

    # invokes: Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->playerDone(Z)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$700(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Z)V

    .line 205
    return-void
.end method
