.class public Lcom/nuance/swype/input/accessibility/KeyboardModel;
.super Ljava/lang/Object;
.source "KeyboardModel.java"


# static fields
.field private static instance:Lcom/nuance/swype/input/accessibility/KeyboardModel;


# instance fields
.field private accessibilityLabel:Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

.field private currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private keyboardContext:Lcom/nuance/swype/input/KeyboardViewEx;

.field private motionEvent:Landroid/view/MotionEvent;

.field private pointer:Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

.field private wordChoiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nuance/swype/input/accessibility/KeyboardModel;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->instance:Lcom/nuance/swype/input/accessibility/KeyboardModel;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/nuance/swype/input/accessibility/KeyboardModel;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/KeyboardModel;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->instance:Lcom/nuance/swype/input/accessibility/KeyboardModel;

    .line 36
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->instance:Lcom/nuance/swype/input/accessibility/KeyboardModel;

    return-object v0
.end method


# virtual methods
.method checkAccessibilityLabelInitialization()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->keyboardContext:Lcom/nuance/swype/input/KeyboardViewEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->accessibilityLabel:Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->keyboardContext:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->accessibilityLabel:Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    .line 88
    :cond_0
    return-void
.end method

.method public getAccessibilityLabel()Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->checkAccessibilityLabelInitialization()V

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->accessibilityLabel:Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    return-object v0
.end method

.method public getCurrentKey()Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method public getKeyboardContext()Lcom/nuance/swype/input/KeyboardViewEx;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->keyboardContext:Lcom/nuance/swype/input/KeyboardViewEx;

    return-object v0
.end method

.method public getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    .locals 4

    .prologue
    .line 96
    sget-object v2, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_INVALID:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    .line 97
    .local v2, "layerType":Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->keyboardContext:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 98
    .local v1, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 100
    .local v0, "currentView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    .line 104
    .end local v0    # "currentView":Lcom/nuance/swype/input/InputView;
    :cond_0
    return-object v2
.end method

.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->motionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getPointer()Lcom/nuance/swype/input/KeyboardViewEx$Pointer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->pointer:Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    return-object v0
.end method

.method public getWordChoiceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->wordChoiceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isInShiftState()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->keyboardContext:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getShiftState()Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 0
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 70
    return-void
.end method

.method public setKeyboardContext(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 0
    .param p1, "keyboardContext"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->keyboardContext:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 61
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/KeyboardModel;->checkAccessibilityLabelInitialization()V

    .line 62
    return-void
.end method

.method public setMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->motionEvent:Landroid/view/MotionEvent;

    .line 51
    return-void
.end method

.method public setPointer(Lcom/nuance/swype/input/KeyboardViewEx$Pointer;)V
    .locals 0
    .param p1, "pointer"    # Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->pointer:Lcom/nuance/swype/input/KeyboardViewEx$Pointer;

    .line 42
    return-void
.end method

.method public setWordChoiceList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "wordChoiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/KeyboardModel;->wordChoiceList:Ljava/util/ArrayList;

    .line 82
    return-void
.end method
