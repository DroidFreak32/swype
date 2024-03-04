.class public Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;
.super Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
.source "LongPressState.java"

# interfaces
.implements Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;


# static fields
.field private static instance:Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;


# instance fields
.field private cancelStr:Ljava/lang/String;

.field private choiceStr:Ljava/lang/String;

.field private currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private currentKeyIndex:I

.field private firstTime:Z

.field private isCurrentChoiceCancel:Z

.field private selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->choiceStr:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->cancelStr:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ScrubGestureStrategy;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;

    .line 38
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;

    return-object v0
.end method

.method private getPopupChoices(Lcom/nuance/swype/input/KeyboardViewEx;)Ljava/util/List;
    .locals 1
    .param p1, "keyboardViewEx"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/KeyboardViewEx;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyListInSlideSelectPopup()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private initDiacriticList()V
    .locals 6

    .prologue
    .line 155
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->setChoices(Ljava/util/List;)V

    .line 157
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getKeyboardModel()Lcom/nuance/swype/input/accessibility/KeyboardModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->getPointer()Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getKeyboardModel()Lcom/nuance/swype/input/accessibility/KeyboardModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->setCurrentKeyFromPoint(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyIndex:I

    .line 158
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    iget v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$Key;

    iput-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 160
    iget v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 162
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getPopupChoices(Lcom/nuance/swype/input/KeyboardViewEx;)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "choices":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    invoke-interface {v3, v0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->setChoices(Ljava/util/List;)V

    .line 164
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    invoke-interface {v3}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->addCancel()V

    .line 165
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    invoke-interface {v3, p0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->setSelectionChangeListener(Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;)V

    .line 166
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getDefaultKeyInSlideSelectPopup()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "startIndexOffset":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 169
    const/4 v2, -0x1

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getKeyboardModel()Lcom/nuance/swype/input/accessibility/KeyboardModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->getPointer()Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->setStartPoint(Landroid/graphics/Point;I)V

    .line 173
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->redrawKeyboard()V

    .line 175
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->firstTime:Z

    .line 177
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;)V

    .line 179
    .end local v0    # "choices":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "startIndexOffset":I
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelSelection()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->closePopup()V

    .line 133
    return-void
.end method

.method public handleActionCancel(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    return-void
.end method

.method public handleActionDown(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    return-void
.end method

.method public handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->handleMove(Landroid/graphics/Point;)V

    .line 60
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->isCurrentChoiceCancel:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setCurrentKeyInSlideSelectPopupManager(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setCurrentKeyInSlideSelectPopupManager(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_0
.end method

.method public handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->closePopup()V

    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 74
    :cond_0
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 75
    return-void
.end method

.method public onEnter()V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v0

    .line 145
    .local v0, "currentKeyboardView":Lcom/nuance/swype/input/KeyboardViewEx;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->accessibility_note_Choice:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->choiceStr:Ljava/lang/String;

    .line 147
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->accessibility_note_Cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->cancelStr:Ljava/lang/String;

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->initDiacriticList()V

    .line 150
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public playSoundPlayedOnKeyboardExit()V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->cancelSelection()V

    .line 139
    invoke-super {p0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->playSoundPlayedOnKeyboardExit()V

    .line 140
    return-void
.end method

.method public populateEventData(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_2

    .line 86
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->getAccessibilityLabel()Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    move-result-object v0

    .line 88
    .local v0, "accessibilityLabel":Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    .line 90
    .local v2, "layer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2, v6}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;->getAccessibilityLabel(Lcom/nuance/swype/input/KeyboardEx$Key;Lcom/nuance/input/swypecorelib/Shift$ShiftState;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 96
    .end local v0    # "accessibilityLabel":Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
    .end local v2    # "layer":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->firstTime:Z

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->choiceStr:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    iput-boolean v5, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->firstTime:Z

    .line 100
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->setAccessibilityEventText(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/CharSequence;)V

    .line 101
    return-void

    .line 92
    :cond_2
    iget-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->isCurrentChoiceCancel:Z

    if-eqz v3, :cond_0

    .line 93
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->cancelStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public selectionChanged(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 2
    .param p1, "selection"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->isCurrentChoiceCancel:Z

    .line 111
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 112
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public selectionChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 106
    return-void
.end method

.method public selectionChangedToCancel()V
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->isCurrentChoiceCancel:Z

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 119
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public selectionModeConfirmed()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public selectionOutOfBounds()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v0

    .line 125
    .local v0, "instance":Lcom/nuance/swype/input/accessibility/SoundResources;
    if-eqz v0, :cond_0

    .line 126
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(I)V

    .line 128
    :cond_0
    return-void
.end method
