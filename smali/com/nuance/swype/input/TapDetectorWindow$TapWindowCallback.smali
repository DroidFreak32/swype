.class Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;
.super Lcom/nuance/android/util/WindowCallbackWrapper;
.source "TapDetectorWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/TapDetectorWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TapWindowCallback"
.end annotation


# instance fields
.field protected touchedOutside:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nuance/android/util/WindowCallbackWrapper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/TapDetectorWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/TapDetectorWindow$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;->touchedOutside:Z

    .line 28
    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/android/util/WindowCallbackWrapper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "target"    # Landroid/view/Window$Callback;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/TapDetectorWindow$TapWindowCallback;->setTarget(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    .line 21
    return-void
.end method
