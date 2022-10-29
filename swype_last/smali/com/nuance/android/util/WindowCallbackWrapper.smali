.class public Lcom/nuance/android/util/WindowCallbackWrapper;
.super Ljava/lang/Object;
.source "WindowCallbackWrapper.java"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field private target:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 80
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 86
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 91
    return-void
.end method

.method public onContentChanged()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 96
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 111
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 126
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 145
    :goto_5
    return-void

    .line 143
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 150
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTarget(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 2
    .param p1, "target"    # Landroid/view/Window$Callback;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    .line 41
    return-object p0
.end method

.method public wraps(Landroid/view/Window$Callback;)Z
    .registers 5
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    const/4 v1, 0x0

    .line 25
    iget-object v0, p0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    .line 26
    .local v0, "current":Landroid/view/Window$Callback;
    :goto_3
    if-eqz v0, :cond_8

    .line 27
    if-ne v0, p1, :cond_9

    .line 28
    const/4 v1, 0x1

    .line 36
    :cond_8
    return v1

    .line 30
    :cond_9
    instance-of v2, v0, Lcom/nuance/android/util/WindowCallbackWrapper;

    if-eqz v2, :cond_8

    .line 31
    check-cast v0, Lcom/nuance/android/util/WindowCallbackWrapper;

    .end local v0    # "current":Landroid/view/Window$Callback;
    iget-object v0, v0, Lcom/nuance/android/util/WindowCallbackWrapper;->target:Landroid/view/Window$Callback;

    .restart local v0    # "current":Landroid/view/Window$Callback;
    goto :goto_3
.end method
