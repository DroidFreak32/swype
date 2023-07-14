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
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->candidateListViewHeight:I

    .line 32
    return-void
.end method


# virtual methods
.method public getExactHeight(I)I
    .locals 2
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 133
    .local v0, "h":I
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_1
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->candidateListViewHeight:I

    if-eqz v1, :cond_2

    .line 140
    iget v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->candidateListViewHeight:I

    add-int/2addr v0, v1

    .line 142
    :cond_2
    return v0
.end method

.method public getExactWidth(I)I
    .locals 2
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 123
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 124
    .local v0, "w":I
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getMeasuredWidth()I

    move-result v0

    .line 127
    :cond_0
    return v0
.end method

.method public getInputView()Lcom/nuance/swype/input/InputView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->initViews()V

    .line 111
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

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setContextWindowShowing(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 40
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 42
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 43
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 44
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 45
    sget v2, Lcom/nuance/swype/input/R$id;->japanese_handwriting_area:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 46
    sget v2, Lcom/nuance/swype/input/R$id;->japanese_handwriting_key_area:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    .line 48
    sget v2, Lcom/nuance/swype/input/R$layout;->japanese_writing_view:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 50
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 52
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mDefaultHandwritingPadHeight:I

    .line 53
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->updateHandwritingPadSize()V

    .line 55
    sget v2, Lcom/nuance/swype/input/R$layout;->japanese_handwriting_input:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iput-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .line 58
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardAreadFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setContainerView(Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;)V

    .line 65
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V

    .line 66
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 67
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 69
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public onBeginDrag()V
    .locals 2

    .prologue
    const/16 v1, 0x7f

    .line 147
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 149
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onBeginDrag()V

    .line 150
    return-void
.end method

.method public onDrag(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onDrag(II)V

    .line 155
    return-void
.end method

.method public onEndDrag()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 161
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onEndDrag()V

    .line 162
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onMeasure(II)V

    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    .line 118
    invoke-virtual {v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->getMeasuredHeight()I

    move-result v2

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->measure(II)V

    .line 119
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 104
    return-void
.end method

.method public showContextWindow(Landroid/view/View;I)V
    .locals 2
    .param p1, "aContextWindow"    # Landroid/view/View;
    .param p2, "candidateListHeight"    # I

    .prologue
    const/16 v1, 0x8

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->addView(Landroid/view/View;)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iput p2, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->candidateListViewHeight:I

    .line 95
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->bringChildToFront(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->requestLayout()V

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setContextWindowShowing(Z)V

    .line 99
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
