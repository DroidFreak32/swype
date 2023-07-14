.class Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$2;
.super Ljava/lang/Object;
.source "OemAudioPrompt.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$2;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    .line 189
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$2;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error during audio prompt: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt$2;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    invoke-static {v0, v3}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->access$700(Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Z)V

    .line 191
    return v3
.end method
