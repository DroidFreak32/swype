.class public Lcom/nuance/swype/input/accessibility/AccessibilityInfo;
.super Ljava/lang/Object;
.source "AccessibilityInfo.java"


# static fields
.field private static sLongPressEnabled:Z

.field private static sLongPressTimeout:I

.field private static sShortLongPressTimeout:I


# instance fields
.field private accessibilityLabel:Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

.field private final isAccessibilityEnabledInBuild:Z

.field private mCapsOnLongPressEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mDeviceExploreByTouchEnabled:Z

.field private mLanguangeSupported:Z

.field private mPhysicalKeyboardOn:Z

.field private mgrRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    invoke-direct {v0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityLabel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->accessibilityLabel:Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->accessibility_keyboard_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isAccessibilityEnabledInBuild:Z

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->accessibility_caps_on_long_press:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mCapsOnLongPressEnabled:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->accessibility_long_press:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->sLongPressEnabled:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$integer;->accessibility_short_press_timeout_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->sShortLongPressTimeout:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$integer;->accessibility_long_press_timeout_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->sLongPressTimeout:I

    .line 55
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->syncWithDeviceAccessiblityState()V

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->setLanguageSupported(Z)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->setPhysicalKeyboardEnabled(Z)V

    .line 58
    return-void
.end method

.method public static getLongPressTimeoutValue()I
    .registers 1

    .prologue
    .line 137
    sget v0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->sLongPressTimeout:I

    return v0
.end method

.method public static getShortLongPressTimeoutValue()I
    .registers 1

    .prologue
    .line 133
    sget v0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->sShortLongPressTimeout:I

    return v0
.end method

.method public static isExploreByTouchOn()Z
    .registers 1

    .prologue
    .line 90
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->isExploreByTouchOn()Z

    move-result v0

    return v0
.end method

.method public static isLongPressAllowed()Z
    .registers 1

    .prologue
    .line 141
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isLongPressEnabled()Z

    move-result v0

    return v0
.end method

.method public static isLongPressEnabled()Z
    .registers 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->sLongPressEnabled:Z

    return v0
.end method

.method private setLanguageSupported(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mLanguangeSupported:Z

    .line 168
    return-void
.end method


# virtual methods
.method public getAccessibilityLabel()Lcom/nuance/swype/input/accessibility/AccessibilityLabel;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->accessibilityLabel:Lcom/nuance/swype/input/accessibility/AccessibilityLabel;

    return-object v0
.end method

.method public interruptTalkback()V
    .registers 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mgrRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_17

    .line 113
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 114
    .local v0, "mgr":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_17

    invoke-static {v0}, Lcom/nuance/android/compat/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 115
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 118
    .end local v0    # "mgr":Landroid/view/accessibility/AccessibilityManager;
    :cond_17
    return-void
.end method

.method public isAccessibilitySupportEnabled()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mDeviceExploreByTouchEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mLanguangeSupported:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mPhysicalKeyboardOn:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isCapsOnLongPressEnabled()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mCapsOnLongPressEnabled:Z

    return v0
.end method

.method public isDeviceExploreByTouchEnabled()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mDeviceExploreByTouchEnabled:Z

    return v0
.end method

.method public isTalkBackOn()Z
    .registers 4

    .prologue
    .line 189
    iget-boolean v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isAccessibilityEnabledInBuild:Z

    if-eqz v1, :cond_33

    .line 197
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mgrRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .local v0, "mgr":Landroid/view/accessibility/AccessibilityManager;
    if-nez v0, :cond_26

    .line 198
    .end local v0    # "mgr":Landroid/view/accessibility/AccessibilityManager;
    :cond_12
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 199
    .restart local v0    # "mgr":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_26

    .line 200
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mgrRef:Ljava/lang/ref/WeakReference;

    .line 204
    :cond_26
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 205
    invoke-static {v0}, Lcom/nuance/android/compat/AccessibilityManagerCompat;->isTalkBackEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v1

    .line 208
    .end local v0    # "mgr":Landroid/view/accessibility/AccessibilityManager;
    :goto_32
    return v1

    :cond_33
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public requestSendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 100
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 101
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 103
    :cond_16
    return-void
.end method

.method public setExploreByTouch(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mDeviceExploreByTouchEnabled:Z

    .line 180
    return-void
.end method

.method public setPhysicalKeyboardEnabled(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mPhysicalKeyboardOn:Z

    .line 176
    return-void
.end method

.method public syncWithDeviceAccessiblityState()V
    .registers 6

    .prologue
    .line 65
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mDeviceExploreByTouchEnabled:Z

    .line 66
    iget-boolean v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->isAccessibilityEnabledInBuild:Z

    if-eqz v3, :cond_4d

    .line 72
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mgrRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .local v2, "mgr":Landroid/view/accessibility/AccessibilityManager;
    if-nez v2, :cond_29

    .line 73
    .end local v2    # "mgr":Landroid/view/accessibility/AccessibilityManager;
    :cond_15
    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 74
    .restart local v2    # "mgr":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v2, :cond_29

    .line 75
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mgrRef:Ljava/lang/ref/WeakReference;

    .line 79
    :cond_29
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 80
    invoke-static {v2}, Lcom/nuance/android/compat/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mDeviceExploreByTouchEnabled:Z

    .line 81
    invoke-static {v2}, Lcom/nuance/android/compat/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    .line 82
    .local v0, "isExploreByTouchEnabled":Z
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->setExploreByTouch(Z)V

    .line 83
    invoke-static {v2}, Lcom/nuance/android/compat/AccessibilityManagerCompat;->isTalkBackEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v1

    .line 84
    .local v1, "isTalkBackEnabled":Z
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->setTalkBack(Z)V

    .line 87
    .end local v0    # "isExploreByTouchEnabled":Z
    .end local v1    # "isTalkBackEnabled":Z
    .end local v2    # "mgr":Landroid/view/accessibility/AccessibilityManager;
    :cond_4d
    return-void
.end method

.method public updateCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 3
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->mLanguangeSupported:Z

    .line 172
    return-void

    .line 171
    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method
