.class public Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;
.super Lcom/nuance/swype/input/AbstractHandWritingContainer;
.source "ChineseFSHandWritingContainerView.java"


# static fields
.field private static final GRID_NUM:I = 0x5

.field private static final WITHOUT_GRID_VIEW:I = 0x1

.field private static final WITH_GRID_VIEW:I = 0x2


# instance fields
.field protected candidatesPopup:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field protected mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

.field protected mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

.field protected mKeyboardAreadFrame:Landroid/widget/FrameLayout;

.field protected mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->candidatesPopup:Landroid/view/View;

    .line 38
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public getExactHeight(I)I
    .registers 5
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 143
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 144
    .local v0, "h":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-eqz v1, :cond_19

    .line 145
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 146
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getHeight()I

    move-result v1

    mul-int/lit8 v0, v1, 0x5

    .line 151
    :cond_19
    :goto_19
    return v0

    .line 148
    :cond_1a
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    goto :goto_19
.end method

.method public getExactWidth(I)I
    .registers 4
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 135
    .local v0, "w":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-eqz v1, :cond_e

    .line 136
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getMeasuredWidth()I

    move-result v0

    .line 138
    :cond_e
    return v0
.end method

.method public getInputView()Lcom/nuance/swype/input/InputView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-nez v0, :cond_7

    .line 44
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->initViews()V

    .line 46
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    return-object v0
.end method

.method public hideFullScreenHandWritingFrame(Z)V
    .registers 3
    .param p1, "aFlag"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_e

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 85
    if-eqz p1, :cond_e

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    .line 89
    :cond_e
    return-void
.end method

.method public hidePopupCandidatesView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .line 106
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getMeasuredHeight()I

    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .line 108
    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getMeasuredWidth()I

    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setContextWindowShowing(Z)V

    .line 112
    :cond_31
    return-void
.end method

.method public initViews()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    sget v1, Lcom/nuance/swype/input/R$id;->chinese_handwriting_key_area:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    .line 54
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 57
    sget v1, Lcom/nuance/swype/input/R$layout;->chinese_full_screen_writing_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 59
    sget v1, Lcom/nuance/swype/input/R$layout;->chinesefs_handwriting_input:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .line 62
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setContainerView(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;)V

    .line 68
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V

    .line 69
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setSelectionAreaListener(Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;)V

    .line 70
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 71
    return-void
.end method

.method public onBeginDrag()V
    .registers 3

    .prologue
    const/16 v1, 0x7f

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 158
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onBeginDrag()V

    .line 159
    return-void
.end method

.method public onDrag(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onDrag(II)V

    .line 164
    return-void
.end method

.method public onEndDrag()V
    .registers 3

    .prologue
    const/16 v1, 0xff

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 169
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 170
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onEndDrag()V

    .line 171
    return-void
.end method

.method public setFullScreenHandWritingFrame()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_14

    .line 76
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    .line 80
    :cond_14
    return-void
.end method

.method public showFullScreenHandWritingFrame(IIII)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 92
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "showFullScreenHandWritingFrame...x: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "..y: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "..w: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "..h: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .line 94
    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->measure(II)V

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 100
    :cond_64
    return-void
.end method

.method public showPopupCandidatesView(Landroid/view/View;)V
    .registers 7
    .param p1, "candidatesView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 115
    if-nez p1, :cond_4

    .line 130
    :cond_3
    :goto_3
    return-void

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 119
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->candidatesPopup:Landroid/view/View;

    .line 120
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getDisplayWidth()I

    move-result v0

    .line 123
    .local v0, "envWidth":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getHeight()I

    move-result v2

    mul-int/lit8 v1, v2, 0x5

    .line 125
    .local v1, "height":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 126
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 127
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setContextWindowShowing(Z)V

    goto :goto_3
.end method
