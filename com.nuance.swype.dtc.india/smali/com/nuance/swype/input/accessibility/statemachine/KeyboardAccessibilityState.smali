.class public abstract Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
.super Ljava/lang/Object;
.source "KeyboardAccessibilityState.java"


# instance fields
.field protected currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

.field protected hover_exit_adjustment_width_offset:I

.field protected hover_exit_adjustment_width_offset_high:I

.field protected hover_exit_adjustment_width_offset_low:I

.field protected isTooFast:Z

.field protected mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private soundPlayedOnKeyboardExit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->isTooFast:Z

    .line 62
    iput v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->hover_exit_adjustment_width_offset:I

    .line 63
    iput v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->hover_exit_adjustment_width_offset_low:I

    .line 64
    iput v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->hover_exit_adjustment_width_offset_high:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-void
.end method


# virtual methods
.method public changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V
    .locals 1
    .param p1, "newState"    # Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    .prologue
    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->hover_exit_adjustment_width_offset:I

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->changeAccessibilityState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 76
    return-void
.end method

.method public getCurrentState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    return-object v0
.end method

.method public getHoverExitWidthOffset()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->hover_exit_adjustment_width_offset:I

    return v0
.end method

.method protected getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 5

    .prologue
    .line 161
    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 162
    .local v3, "layerType":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v0

    .line 163
    .local v0, "currentKeyboardView":Lcom/nuance/swype/input/KeyboardViewEx;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 165
    .local v2, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 167
    .local v1, "currentView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v3

    .line 172
    .end local v1    # "currentView":Lcom/nuance/swype/input/InputView;
    .end local v2    # "ime":Lcom/nuance/swype/input/IME;
    :cond_0
    return-object v3
.end method

.method public getKeyboardModel()Lcom/nuance/swype/input/accessibility/KeyboardModel;
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->getInstance()Lcom/nuance/swype/input/accessibility/KeyboardModel;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleActionCancel(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V
.end method

.method public abstract handleActionDown(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
.end method

.method public abstract handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
.end method

.method public abstract handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
.end method

.method protected interruptTalkbackIfRequired(Lcom/nuance/swype/input/accessibility/AccessibilityInfo;)V
    .locals 0
    .param p1, "accessibilityInfo"    # Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->interruptTalkback()V

    .line 184
    return-void
.end method

.method protected isInvisiblePasswordField()Z
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    .line 204
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isInvisiblePasswordField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovingTooFast()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->isTooFast:Z

    return v0
.end method

.method public abstract onEnter()V
.end method

.method public abstract onExit()V
.end method

.method public playSoundPlayedOnKeyboardExit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-boolean v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->focused:Z

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-boolean v1, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->pressed:Z

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->soundPlayedOnKeyboardExit:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(I)V

    .line 148
    iput-boolean v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->soundPlayedOnKeyboardExit:Z

    .line 150
    :cond_1
    return-void
.end method

.method public abstract populateEventData(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public resetPlaySoundPlayedOnKeyboardExit()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->soundPlayedOnKeyboardExit:Z

    .line 154
    return-void
.end method

.method protected setAccessibilityEventText(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 109
    if-nez p2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2

    .line 113
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 114
    .local v0, "labelLength":I
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 117
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    .end local v0    # "labelLength":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 125
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_0

    .line 126
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCurrentView(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 0
    .param p1, "currentView"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 84
    return-void
.end method

.method public shouldSpeakForPassword()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->isInvisiblePasswordField()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "speak_password"

    .line 191
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v0, 0x0

    goto :goto_0
.end method
