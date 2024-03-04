.class public Lcom/nuance/android/compat/AccessibilityEventCompat;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static initTextEvent(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-static {p0}, Lcom/nuance/android/compat/AccessibilityEventCompat;->obtainTextEvent(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 47
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 49
    .local v2, "labelLength":I
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 50
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 52
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 53
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 56
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 69
    .end local v2    # "labelLength":I
    :goto_0
    return-object v1

    .line 58
    :cond_0
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 59
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 60
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 62
    .local v3, "view":Lcom/nuance/swype/input/InputView;
    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/InputView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 66
    .end local v3    # "view":Lcom/nuance/swype/input/InputView;
    :cond_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 67
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static notifyHoverEnter(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 75
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 76
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 77
    .local v1, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 79
    .local v3, "view":Lcom/nuance/swype/input/InputView;
    if-eqz v3, :cond_0

    .line 80
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/AppPreferences;->getAccessibilityInfo()Lcom/nuance/swype/input/accessibility/AccessibilityInfo;

    move-result-object v0

    .line 81
    .local v0, "accessibilityInfo":Lcom/nuance/swype/input/accessibility/AccessibilityInfo;
    const/16 v4, 0x80

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 82
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/InputView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 83
    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityInfo;->requestSendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 87
    .end local v0    # "accessibilityInfo":Lcom/nuance/swype/input/accessibility/AccessibilityInfo;
    .end local v1    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "view":Lcom/nuance/swype/input/InputView;
    :cond_0
    return-void
.end method

.method public static obtainTextEvent(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 29
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 30
    .local v0, "info":Lcom/nuance/swype/input/BuildInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isAmazonBuild()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const/16 v1, 0x8

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 36
    .end local v0    # "info":Lcom/nuance/swype/input/BuildInfo;
    :goto_0
    return-object v1

    .line 33
    .restart local v0    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_0
    const/16 v1, 0x2000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    goto :goto_0

    .line 35
    .end local v0    # "info":Lcom/nuance/swype/input/BuildInfo;
    :cond_1
    invoke-static {p0}, Lcom/nuance/android/compat/AccessibilityEventCompat;->notifyHoverEnter(Landroid/content/Context;)V

    .line 36
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    goto :goto_0
.end method
