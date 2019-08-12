.class Lcom/nuance/swype/input/IME$KeyboardState;
.super Ljava/lang/Object;
.source "IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyboardState"
.end annotation


# instance fields
.field private prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

.field private prevShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3836
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 3875
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 3876
    return-void
.end method

.method restore(Lcom/nuance/swype/input/InputView;)V
    .locals 1
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 3856
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/IME$KeyboardState;->restore(Lcom/nuance/swype/input/InputView;Z)V

    .line 3857
    return-void
.end method

.method restore(Lcom/nuance/swype/input/InputView;Z)V
    .locals 2
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;
    .param p2, "isOrChange"    # Z

    .prologue
    .line 3860
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_1

    .line 3861
    iget-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 3862
    iget-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_1

    .line 3869
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 3872
    :cond_1
    return-void
.end method

.method save(Lcom/nuance/swype/input/InputView;)V
    .locals 2
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 3844
    if-eqz p1, :cond_0

    .line 3845
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "cursor KeyboardState save"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3846
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 3847
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 3848
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 3850
    :cond_0
    return-void
.end method
