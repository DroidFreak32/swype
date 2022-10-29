.class public Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;
.super Landroid/view/View;
.source "AccessibilityScrubGestureView.java"


# instance fields
.field gestureViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/accessibility/IGestureViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private isForVoiceUI:Z

.field private mIme:Lcom/nuance/swype/input/IME;

.field private mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

.field private mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 36
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v0, :cond_f

    .line 37
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mIme:Lcom/nuance/swype/input/IME;

    .line 39
    :cond_f
    return-void
.end method

.method private setUpperScreenScrubGestureFrame()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_b

    .line 70
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;

    .line 72
    :cond_b
    return-void
.end method

.method private showUpperScreenScrubGestureFrame(IIII)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/swype/input/KeyboardViewEx;->measure(II)V

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 91
    :cond_1c
    return-void
.end method


# virtual methods
.method public addGestureViewListener(Lcom/nuance/swype/input/accessibility/IGestureViewListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/input/accessibility/IGestureViewListener;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->gestureViewListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->gestureViewListeners:Ljava/util/List;

    .line 118
    :cond_b
    if-eqz p1, :cond_12

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->gestureViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_12
    return-void
.end method

.method public addUpperScreenScrubGestureFrame()V
    .registers 7

    .prologue
    .line 94
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_37

    .line 95
    :cond_c
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->setUpperScreenScrubGestureFrame()V

    .line 96
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEHandlerManager;->getStatusBarHeight(Lcom/nuance/swype/input/IME;)I

    move-result v1

    .line 97
    .local v1, "status_bar_height":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 98
    .local v0, "display":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 99
    .local v3, "w":I
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 100
    sub-int/2addr v4, v1

    .line 101
    iget-object v5, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v5

    sub-int v2, v4, v5

    .line 102
    .local v2, "upperScreenScrubGestureYOffset":I
    const/4 v4, 0x0

    neg-int v5, v2

    invoke-direct {p0, v4, v5, v3, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->showUpperScreenScrubGestureFrame(IIII)V

    .line 105
    .end local v0    # "display":Landroid/util/DisplayMetrics;
    .end local v1    # "status_bar_height":I
    .end local v2    # "upperScreenScrubGestureYOffset":I
    .end local v3    # "w":I
    :cond_37
    return-void
.end method

.method public hideUpperScreenScrubGestureFrame(Z)V
    .registers 3
    .param p1, "aFlag"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_e

    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 77
    if-eqz p1, :cond_e

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mScrubGestureUpperScreenPopup:Landroid/widget/PopupWindow;

    .line 81
    :cond_e
    return-void
.end method

.method public notifyListenerOfHoverEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->gestureViewListeners:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 138
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->gestureViewListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/accessibility/IGestureViewListener;

    .line 139
    invoke-interface {v0, p1}, Lcom/nuance/swype/input/accessibility/IGestureViewListener;->onGestureViewHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_a

    .line 142
    :cond_1a
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    iget-boolean v6, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->isForVoiceUI:Z

    if-eqz v6, :cond_a

    .line 49
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->notifyListenerOfHoverEvent(Landroid/view/MotionEvent;)V

    .line 65
    :goto_9
    return v5

    .line 53
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_7e

    :pswitch_11
    move v5, v4

    .line 65
    goto :goto_9

    .line 55
    :pswitch_13
    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v6

    if-eqz v6, :cond_71

    iget-object v6, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboardAccessibilityState()Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/accessibility/statemachine/KeyboardAccessibilityState;->getHoverExitWidthOffset()I

    move-result v1

    .line 56
    .local v1, "hover_exit_adjustment_width_offset":I
    :goto_25
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 57
    .local v0, "display":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_73

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_73

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v7, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_73

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v7, v1

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_73

    move v3, v5

    .line 59
    .local v3, "isTouchUp":Z
    :goto_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_75

    move v2, v5

    .line 60
    .local v2, "isExitFromBottom":Z
    :goto_6b
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4, p1, v3, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrubGestureFrameHoverEventExit(Landroid/view/MotionEvent;ZZ)Z

    goto :goto_9

    .end local v0    # "display":Landroid/util/DisplayMetrics;
    .end local v1    # "hover_exit_adjustment_width_offset":I
    .end local v2    # "isExitFromBottom":Z
    .end local v3    # "isTouchUp":Z
    :cond_71
    move v1, v4

    .line 55
    goto :goto_25

    .restart local v0    # "display":Landroid/util/DisplayMetrics;
    .restart local v1    # "hover_exit_adjustment_width_offset":I
    :cond_73
    move v3, v4

    .line 58
    goto :goto_5d

    .restart local v3    # "isTouchUp":Z
    :cond_75
    move v2, v4

    .line 59
    goto :goto_6b

    .line 63
    .end local v0    # "display":Landroid/util/DisplayMetrics;
    .end local v1    # "hover_exit_adjustment_width_offset":I
    .end local v3    # "isTouchUp":Z
    :pswitch_77
    iget-object v4, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleScrubGestureFrameHoverEventMove(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_9

    .line 53
    :pswitch_data_7e
    .packed-switch 0x7
        :pswitch_77
        :pswitch_11
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public removeAllGestureViewListener()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->gestureViewListeners:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 131
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->gestureViewListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->gestureViewListeners:Ljava/util/List;

    .line 134
    :cond_c
    return-void
.end method

.method public removeGestureViewListener(Lcom/nuance/swype/input/accessibility/IGestureViewListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/input/accessibility/IGestureViewListener;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->gestureViewListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->gestureViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    :cond_9
    return-void
.end method

.method public setKeyboardView(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .registers 2
    .param p1, "view"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 43
    return-void
.end method

.method public useForVoiceUI(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/nuance/swype/input/accessibility/AccessibilityScrubGestureView;->isForVoiceUI:Z

    .line 150
    return-void
.end method
