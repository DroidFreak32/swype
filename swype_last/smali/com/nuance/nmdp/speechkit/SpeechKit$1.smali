.class Lcom/nuance/nmdp/speechkit/SpeechKit$1;
.super Ljava/lang/Object;
.source "SpeechKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/SpeechKit;->defineAudioPrompt(Landroid/content/res/AssetFileDescriptor;)Lcom/nuance/nmdp/speechkit/Prompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/SpeechKit;

.field final synthetic val$audio:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

.field final synthetic val$file:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKit;Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;Landroid/content/res/AssetFileDescriptor;)V
    .registers 4

    .prologue
    .line 891
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$1;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKit;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$1;->val$audio:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$1;->val$file:Landroid/content/res/AssetFileDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 894
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$1;->val$audio:Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/SpeechKit$1;->val$file:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemAudioPrompt;->init(Landroid/content/res/AssetFileDescriptor;)V

    .line 895
    return-void
.end method
