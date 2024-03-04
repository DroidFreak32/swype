.class public Lcom/nuance/swype/input/TapDetectorWindow;
.super Lcom/nuance/swype/input/AbstractTapDetector;
.source "TapDetectorWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/TapDetectorWindow$1;,
        Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;
    }
.end annotation


# static fields
.field private static callback:Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;


# instance fields
.field private mContextWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>([Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;Landroid/view/Window;)V
    .locals 3
    .param p1, "tapHandlers"    # [Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AbstractTapDetector;-><init>([Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;)V

    .line 40
    const/high16 v1, 0x40000

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 41
    sget-object v1, Lcom/nuance/swype/input/TapDetectorWindow;->callback:Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;-><init>(Lcom/nuance/swype/input/TapDetectorWindow$1;)V

    sput-object v1, Lcom/nuance/swype/input/TapDetectorWindow;->callback:Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 45
    .local v0, "target":Landroid/view/Window$Callback;
    sget-object v1, Lcom/nuance/swype/input/TapDetectorWindow;->callback:Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/nuance/swype/input/TapDetectorWindow;->callback:Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;->wraps(Landroid/view/Window$Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    sget-object v1, Lcom/nuance/swype/input/TapDetectorWindow;->callback:Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;->update(Landroid/view/Window$Callback;)V

    .line 47
    sget-object v1, Lcom/nuance/swype/input/TapDetectorWindow;->callback:Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;

    invoke-virtual {p2, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 49
    :cond_1
    iput-object p2, p0, Lcom/nuance/swype/input/TapDetectorWindow;->mContextWindow:Landroid/view/Window;

    .line 50
    return-void
.end method


# virtual methods
.method public onShowInputRequested(IZ)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 53
    sget-object v3, Lcom/nuance/swype/input/TapDetectorWindow;->callback:Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;

    iget-boolean v3, v3, Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;->touchedOutside:Z

    if-eqz v3, :cond_2

    .line 57
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 58
    .local v1, "userRequested":Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v1, :cond_1

    .line 59
    iget-object v3, p0, Lcom/nuance/swype/input/TapDetectorWindow;->mContextWindow:Landroid/view/Window;

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/nuance/swype/input/TapDetectorWindow;->mContextWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getSpeechWrapper()Lcom/nuance/swype/input/SpeechWrapper;

    move-result-object v0

    .line 62
    .local v0, "spw":Lcom/nuance/swype/input/SpeechWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isSpeechViewShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->cancelSpeech()V

    .line 66
    .end local v0    # "spw":Lcom/nuance/swype/input/SpeechWrapper;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/TapDetectorWindow;->onTap()Z

    .line 68
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/TapDetectorWindow;->callback:Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;

    iput-boolean v2, v3, Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;->touchedOutside:Z

    .line 70
    .end local v1    # "userRequested":Z
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 57
    goto :goto_0
.end method
