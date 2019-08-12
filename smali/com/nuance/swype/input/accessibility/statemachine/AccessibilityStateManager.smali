.class public Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;
.super Ljava/lang/Object;
.source "AccessibilityStateManager.java"


# static fields
.field private static sInstance:Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;


# instance fields
.field private currentState:Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

.field private currentView:Lcom/nuance/swype/input/KeyboardViewEx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->sInstance:Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->sInstance:Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;

    .line 20
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->sInstance:Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;

    return-object v0
.end method

.method private setKeyboardAccessibilityState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V
    .locals 0
    .param p1, "state"    # Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->currentState:Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    .line 29
    return-void
.end method


# virtual methods
.method public changeAccessibilityState(Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;)V
    .locals 2
    .param p1, "state"    # Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v0

    .line 38
    .local v0, "currentState":Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->onExit()V

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->currentState:Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    .line 45
    if-eqz p1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->currentView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {p1, v1}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->setCurrentView(Lcom/nuance/swype/input/KeyboardViewEx;)V

    .line 47
    invoke-virtual {p1}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->onEnter()V

    .line 49
    :cond_1
    return-void
.end method

.method public getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->currentState:Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    return-object v0
.end method

.method public setCurrentView(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 0
    .param p1, "view"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/statemachine/AccessibilityStateManager;->currentView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 53
    return-void
.end method
