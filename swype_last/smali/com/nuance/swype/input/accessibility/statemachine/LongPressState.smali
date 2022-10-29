.class public Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;
.super Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
.source "LongPressState.java"

# interfaces
.implements Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;


# static fields
.field private static instance:Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private cancelStr:Ljava/lang/String;

.field private choiceStr:Ljava/lang/String;

.field private currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private firstTime:Z

.field private isCurrentChoiceCancel:Z

.field private selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string/jumbo v0, "LongPressState"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method constructor <init>()V
    .registers 2

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
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;

    .line 38
    :cond_b
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->instance:Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;

    return-object v0
.end method

.method private getPopupChoices(Lcom/nuance/swype/input/KeyboardViewEx;)Ljava/util/List;
    .registers 3
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
    .registers 5

    .prologue
    .line 163
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->setChoices(Ljava/util/List;)V

    .line 165
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getKeyboardModel()Lcom/nuance/swype/input/accessibility/KeyboardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->getCurrentKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 166
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->mCurrentAccessibilityKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v2, :cond_70

    .line 168
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getPopupChoices(Lcom/nuance/swype/input/KeyboardViewEx;)Ljava/util/List;

    move-result-object v0

    .line 169
    .local v0, "choices":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    invoke-interface {v2, v0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->setChoices(Ljava/util/List;)V

    .line 170
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    invoke-interface {v2}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->addCancel()V

    .line 171
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    invoke-interface {v2, p0}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->setSelectionChangeListener(Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionChangeListener;)V

    .line 172
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getDefaultKeyInSlideSelectPopup()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, "startIndexOffset":I
    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_44

    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_44

    .line 175
    const/4 v1, -0x1

    .line 177
    :cond_44
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getKeyboardModel()Lcom/nuance/swype/input/accessibility/KeyboardModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->getPointer()Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->setStartPoint(Landroid/graphics/Point;I)V

    .line 179
    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->redrawKeyboard()V

    .line 181
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->firstTime:Z

    .line 182
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->shouldSpeakForPassword()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 183
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;)V

    .line 186
    .end local v0    # "choices":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v1    # "startIndexOffset":I
    :cond_70
    return-void
.end method


# virtual methods
.method public cancelSelection()V
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->closePopup()V

    .line 141
    return-void
.end method

.method public handleActionCancel(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V
    .registers 2
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    .line 80
    return-void
.end method

.method public handleActionDown(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 3
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 49
    return-void
.end method

.method public handleActionMove(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 5
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->selectionStrategy:Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;

    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx$Pointer;->getCurrentLocation()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/accessibility/choiceSelection/ISelectionStrategy;->handleMove(Landroid/graphics/Point;)V

    .line 60
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->isCurrentChoiceCancel:Z

    if-nez v0, :cond_15

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setCurrentKeyInSlideSelectPopupManager(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 66
    :goto_14
    return-void

    .line 63
    :cond_15
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->setCurrentKeyInSlideSelectPopupManager(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_14
.end method

.method public handleActionUp(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 4
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v0, :cond_e

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->closePopup()V

    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->dismissSingleAltCharPopup()V

    .line 74
    :cond_e
    invoke-static {}, Lcom/nuance/swype/input/accessibility/statemachine/ExplorationState;->getInstance()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->changeState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V

    .line 75
    return-void
.end method

.method public onEnter()V
    .registers 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->getCurrentView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v0

    .line 153
    .local v0, "currentKeyboardView":Lcom/nuance/swype/input/KeyboardViewEx;
    if-eqz v0, :cond_26

    .line 154
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->accessibility_note_Choice:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->choiceStr:Ljava/lang/String;

    .line 155
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->accessibility_note_Cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->cancelStr:Ljava/lang/String;

    .line 157
    :cond_26
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->initDiacriticList()V

    .line 158
    return-void
.end method

.method public onExit()V
    .registers 1

    .prologue
    .line 193
    return-void
.end method

.method public playSoundPlayedOnKeyboardExit()V
    .registers 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->cancelSelection()V

    .line 147
    invoke-super {p0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->playSoundPlayedOnKeyboardExit()V

    .line 148
    return-void
.end method

.method public populateEventData(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v3, :cond_43

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
    if-eqz v0, :cond_2f

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
    :cond_2f
    :goto_2f
    iget-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->firstTime:Z

    if-eqz v3, :cond_3f

    .line 97
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->choiceStr:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    iput-boolean v5, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->firstTime:Z

    .line 100
    :cond_3f
    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->setAccessibilityEventText(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/CharSequence;)V

    .line 101
    return-void

    .line 92
    :cond_43
    iget-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->isCurrentChoiceCancel:Z

    if-eqz v3, :cond_2f

    .line 93
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->cancelStr:Ljava/lang/String;

    goto :goto_2f
.end method

.method public selectionChanged(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 6
    .param p1, "selection"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v3, 0x0

    .line 110
    iput-boolean v3, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->isCurrentChoiceCancel:Z

    .line 111
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "selectionChanged Key:"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " label:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-ne v0, p1, :cond_25

    .line 119
    :cond_24
    :goto_24
    return-void

    .line 115
    :cond_25
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 116
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->shouldSpeakForPassword()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 117
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;)V

    goto :goto_24
.end method

.method public selectionChanged(Ljava/lang/String;)V
    .registers 2
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 106
    return-void
.end method

.method public selectionChangedToCancel()V
    .registers 3

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->isCurrentChoiceCancel:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentChoiceKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 125
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->shouldSpeakForPassword()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 126
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/LongPressState;->currentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;)V

    .line 128
    :cond_19
    return-void
.end method

.method public selectionModeConfirmed()V
    .registers 1

    .prologue
    .line 200
    return-void
.end method

.method public selectionOutOfBounds()V
    .registers 3

    .prologue
    .line 132
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SoundResources;->getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;

    move-result-object v0

    .line 133
    .local v0, "instance":Lcom/nuance/swype/input/accessibility/SoundResources;
    if-eqz v0, :cond_a

    .line 134
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(I)V

    .line 136
    :cond_a
    return-void
.end method
