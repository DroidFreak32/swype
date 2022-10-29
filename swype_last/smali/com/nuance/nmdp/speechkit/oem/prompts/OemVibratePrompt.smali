.class public Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;
.super Ljava/lang/Object;
.source "OemVibratePrompt.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;


# instance fields
.field private final _duration:I

.field private _isDisposed:Z

.field private _vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "duration"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_isDisposed:Z

    .line 19
    iput p1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_duration:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    .line 21
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;
    .param p1, "x1"    # Landroid/os/Vibrator;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    return-object p1
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_isDisposed:Z

    .line 27
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_f

    .line 29
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    .line 32
    :cond_f
    return-void
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_duration:I

    return v0
.end method

.method public isDisposed()Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_isDisposed:Z

    return v0
.end method

.method public start(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;Ljava/lang/Object;)V
    .registers 8
    .param p1, "appContext"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Landroid/content/Context;

    .end local p1    # "appContext":Ljava/lang/Object;
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    .line 43
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_1b

    .line 45
    const-string/jumbo v1, "Unable to get vibrator service"

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p2, p3}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    .line 76
    :goto_1a
    return-void

    .line 48
    :cond_1b
    iget-boolean v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_isDisposed:Z

    if-eqz v1, :cond_29

    .line 49
    const-string/jumbo v1, "Can\'t start disposed vibration prompt."

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p2, p3}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    goto :goto_1a

    .line 56
    :cond_29
    :try_start_29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Starting vibration ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nuance/nmdp/speechkit/util/Logger;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    iget v2, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_duration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_4d} :catch_58

    .line 67
    new-instance v1, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt$1;-><init>(Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;Ljava/lang/Object;)V

    iget v2, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_duration:I

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->addJob(Ljava/lang/Runnable;I)V

    goto :goto_1a

    .line 58
    :catch_58
    move-exception v0

    .line 60
    .local v0, "tr":Ljava/lang/Throwable;
    const-string/jumbo v1, "Unable to vibrate"

    invoke-static {p0, v1, v0}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    invoke-interface {p2, p3}, Lcom/nuance/nmdp/speechkit/util/audio/IPlayerHelperListener;->error(Ljava/lang/Object;)V

    goto :goto_1a
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_5

    .line 84
    :goto_4
    return-void

    .line 82
    :cond_5
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/oem/prompts/OemVibratePrompt;->_vibrator:Landroid/os/Vibrator;

    goto :goto_4
.end method
