.class Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt$1;
.super Ljava/lang/Object;
.source "OemVibratePrompt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->start(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt$1;->val$listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt$1;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;

    const-string/jumbo v1, "Vibration finished"

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt$1;->val$listener:Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt$1;->val$context:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->stopped(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt$1;->this$0:Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->access$002(Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;Landroid/os/Vibrator;)Landroid/os/Vibrator;

    .line 74
    return-void
.end method
