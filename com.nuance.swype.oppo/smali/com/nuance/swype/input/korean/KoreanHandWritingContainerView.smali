.class public Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;
.super Lcom/nuance/swype/input/AbstractHandWritingContainer;
.source "KoreanHandWritingContainerView.java"


# instance fields
.field private mDefaultHandwritingHeight:I

.field protected mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

.field public mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

.field private mHandwritingAreaFrame:Landroid/widget/FrameLayout;

.field private mKeyboardAreaFrame:Landroid/widget/FrameLayout;

.field private mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

.field private mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getExactHeight(I)I
    .locals 3
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 170
    .local v0, "h":I
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 174
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int v0, v1, v2

    .line 177
    :cond_1
    return v0
.end method

.method public getExactWidth(I)I
    .locals 2
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 161
    .local v0, "w":I
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getMeasuredWidth()I

    move-result v0

    .line 164
    :cond_0
    return v0
.end method

.method public getInputView()Lcom/nuance/swype/input/InputView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->initViews()V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    return-object v0
.end method

.method public hideFullScreenHandWritingFrame()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    .line 125
    :cond_0
    return-void
.end method

.method public hideHWFrameAndCharacterList()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public initViews()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 54
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 56
    sget v1, Lcom/nuance/swype/input/R$id;->korean_handwriting_area:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 57
    sget v1, Lcom/nuance/swype/input/R$id;->korean_handwriting_key_area:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    .line 58
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mDefaultHandwritingHeight:I

    .line 59
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->updateHandwritingPadSize()V

    .line 61
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 62
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    sget v1, Lcom/nuance/swype/input/R$layout;->korean_handwriting_input:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .line 68
    sget v1, Lcom/nuance/swype/input/R$layout;->korean_writing_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .line 70
    sget v1, Lcom/nuance/swype/input/R$layout;->korean_full_screen_writing_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .line 72
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V

    .line 82
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V

    .line 84
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 85
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setSelectionAreaListener(Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;)V

    .line 86
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setContainerView(Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;)V

    .line 87
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 88
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 90
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public onBeginDrag()V
    .locals 2

    .prologue
    const/16 v1, 0x7f

    .line 182
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 184
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onBeginDrag()V

    .line 185
    return-void
.end method

.method public onDrag(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onDrag(II)V

    .line 190
    return-void
.end method

.method public onEndDrag()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 194
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 195
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 196
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onEndDrag()V

    .line 197
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->refreshHandwritingPadWidth()V

    .line 147
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onLayout(ZIIII)V

    .line 148
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onMeasure(II)V

    .line 140
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->measure(II)V

    .line 142
    return-void
.end method

.method public refreshHandwritingPadWidth()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 154
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setWidth(I)V

    .line 155
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->clearArcs()V

    .line 156
    return-void
.end method

.method public setFullScreenHandWritingFrame()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateKeyboardDockMode()V

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    .line 111
    :cond_0
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateKeyboardDockMode()V

    .line 115
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 116
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public showFullScreenHandWritingFrame(IIII)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v9, 0x0

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

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

    .line 131
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->measure(II)V

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9, v9, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v0, v1, v9, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 135
    :cond_0
    return-void
.end method

.method public updateHandwritingPadSize()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mDefaultHandwritingHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->updateHandwritingAreaSize(Landroid/view/View;I)V

    .line 96
    :cond_0
    return-void
.end method
