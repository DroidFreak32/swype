.class public Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;
.super Lcom/nuance/swype/input/AbstractHandWritingContainer;
.source "JapaneseHandWritingContainerView.java"


# instance fields
.field private candidateListViewHeight:I

.field private mDefaultHandwritingPadHeight:I

.field protected mHandwritingAreaFrame:Landroid/widget/FrameLayout;

.field protected mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

.field protected mKeyboardAreadFrame:Landroid/widget/FrameLayout;

.field protected mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->candidateListViewHeight:I

    .line 35
    return-void
.end method


# virtual methods
.method public getExactHeight(I)I
    .locals 2
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 144
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 145
    .local v0, "h":I
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->candidateListViewHeight:I

    if-eqz v1, :cond_2

    .line 152
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->candidateListViewHeight:I

    add-int/2addr v0, v1

    .line 154
    :cond_2
    return v0
.end method

.method public getExactWidth(I)I
    .locals 2
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 135
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 136
    .local v0, "w":I
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getMeasuredWidth()I

    move-result v0

    .line 139
    :cond_0
    return v0
.end method

.method public getInputView()Lcom/nuance/swype/input/InputView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->initViews()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    return-object v0
.end method

.method public hideContextWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "aContextWindow"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->removeView(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 82
    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->candidateListViewHeight:I

    .line 83
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->requestLayout()V

    .line 85
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 42
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    sget v1, Lcom/nuance/swype/input/R$id;->japanese_handwriting_area:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 48
    sget v1, Lcom/nuance/swype/input/R$id;->japanese_handwriting_key_area:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    .line 50
    sget v1, Lcom/nuance/swype/input/R$layout;->japanese_writing_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 52
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mDefaultHandwritingPadHeight:I

    .line 53
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->updateHandwritingPadSize()V

    .line 55
    sget v1, Lcom/nuance/swype/input/R$layout;->japanese_handwriting_input:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iput-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .line 58
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setContainerView(Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;)V

    .line 65
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V

    .line 66
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 67
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 69
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public onBeginDrag()V
    .locals 2

    .prologue
    const/16 v1, 0x7f

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 161
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onBeginDrag()V

    .line 162
    return-void
.end method

.method public onDrag(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onDrag(II)V

    .line 167
    return-void
.end method

.method public onEndDrag()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 173
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onEndDrag()V

    .line 174
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
    .line 121
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->refreshHandwritingPadWidth()V

    .line 122
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onLayout(ZIIII)V

    .line 123
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onMeasure(II)V

    .line 115
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->measure(II)V

    .line 117
    return-void
.end method

.method public refreshHandwritingPadWidth()V
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 129
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setWidth(I)V

    .line 130
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->clearArcs()V

    .line 131
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public showContextWindow(Landroid/view/View;I)V
    .locals 2
    .param p1, "aContextWindow"    # Landroid/view/View;
    .param p2, "candidateListHeight"    # I

    .prologue
    const/16 v1, 0x8

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->addView(Landroid/view/View;)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iput p2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->candidateListViewHeight:I

    .line 94
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->bringChildToFront(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->requestLayout()V

    .line 97
    :cond_0
    return-void
.end method

.method public updateHandwritingPadSize()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mDefaultHandwritingPadHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->updateHandwritingAreaSize(Landroid/view/View;I)V

    .line 75
    :cond_0
    return-void
.end method
