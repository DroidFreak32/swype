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
    .line 4215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4216
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 4260
    sget-object v0, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iput-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 4261
    return-void
.end method

.method restore(Lcom/nuance/swype/input/InputView;)V
    .locals 1
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 4236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/IME$KeyboardState;->restore(Lcom/nuance/swype/input/InputView;Z)V

    .line 4237
    return-void
.end method

.method restore(Lcom/nuance/swype/input/InputView;Z)V
    .locals 2
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;
    .param p2, "isOrChange"    # Z

    .prologue
    .line 4240
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4241
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4257
    :cond_0
    :goto_0
    return-void

    .line 4245
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-eq v0, v1, :cond_0

    .line 4246
    iget-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 4247
    iget-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->LOCKED:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_0

    .line 4254
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/InputView;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    goto :goto_0
.end method

.method save(Lcom/nuance/swype/input/InputView;)V
    .locals 4
    .param p1, "inputView"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 4224
    if-eqz p1, :cond_0

    .line 4225
    sget-object v0, Lcom/nuance/swype/input/IME;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "cursor KeyboardState save"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 4226
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->flushCurrentActiveWord()V

    .line 4227
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevKeyboardLayer:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 4228
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputView;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/IME$KeyboardState;->prevShiftState:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .line 4230
    :cond_0
    return-void
.end method
