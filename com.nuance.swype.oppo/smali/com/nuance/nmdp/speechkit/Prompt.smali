.class public final Lcom/nuance/nmdp/speechkit/Prompt;
.super Ljava/lang/Object;
.source "Prompt.java"


# instance fields
.field private final _prompt:Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

.field private final _speechKit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V
    .locals 0
    .param p1, "prompt"    # Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .param p2, "speechKit"    # Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/Prompt;->_prompt:Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    .line 21
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/Prompt;->_speechKit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/Prompt;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/Prompt;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/Prompt;->_speechKit:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    return-object v0
.end method

.method public static vibration(I)Lcom/nuance/nmdp/speechkit/Prompt;
    .locals 3
    .param p0, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 54
    if-gtz p0, :cond_0

    .line 60
    :goto_0
    return-object v1

    .line 59
    :cond_0
    new-instance v0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;-><init>(I)V

    .line 60
    .local v0, "vibrate":Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;
    new-instance v2, Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-direct {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/Prompt;-><init>(Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method final getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/Prompt;->_prompt:Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    return-object v0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/nuance/nmdp/speechkit/Prompt$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/Prompt$1;-><init>(Lcom/nuance/nmdp/speechkit/Prompt;)V

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method
