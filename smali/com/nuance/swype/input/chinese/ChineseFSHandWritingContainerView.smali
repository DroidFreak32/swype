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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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
    .locals 3
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 141
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 142
    .local v0, "h":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 144
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getHeight()I

    move-result v1

    mul-int/lit8 v0, v1, 0x5

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getExactWidth(I)I
    .locals 2
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 133
    .local v0, "w":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getMeasuredWidth()I

    move-result v0

    .line 136
    :cond_0
    return v0
.end method

.method public getInputView()Lcom/nuance/swype/input/InputView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->initViews()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    return-object v0
.end method

.method public hideFullScreenHandWritingFrame(Z)V
    .locals 1
    .param p1, "aFlag"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 85
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    .line 89
    :cond_0
    return-void
.end method

.method public hidePopupCandidatesView()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setVisibility(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
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
    .locals 2

    .prologue
    const/16 v1, 0x7f

    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 155
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 156
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onBeginDrag()V

    .line 157
    return-void
.end method

.method public onDrag(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onDrag(II)V

    .line 162
    return-void
.end method

.method public onEndDrag()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 168
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onEndDrag()V

    .line 169
    return-void
.end method

.method public setFullScreenHandWritingFrame()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    .line 80
    :cond_0
    return-void
.end method

.method public showFullScreenHandWritingFrame(IIII)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 92
    sget-object v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "showFullScreenHandWritingFrame...x: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "..y: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "..w: "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "..h: "

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mHandwritingView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->measure(II)V

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 100
    :cond_0
    return-void
.end method

.method public showPopupCandidatesView(Landroid/view/View;)V
    .locals 4
    .param p1, "candidatesView"    # Landroid/view/View;

    .prologue
    .line 114
    if-nez p1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 118
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->candidatesPopup:Landroid/view/View;

    .line 119
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getDisplayWidth()I

    move-result v0

    .line 122
    .local v0, "envWidth":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->getHeight()I

    move-result v2

    mul-int/lit8 v1, v2, 0x5

    .line 124
    .local v1, "height":I
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 125
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 126
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingContainerView;->candidatesPopup:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
