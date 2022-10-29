.class public Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;
.super Lcom/nuance/swype/input/AbstractHandWritingContainer;
.source "KoreanHandWritingContainerView.java"


# instance fields
.field private mDefaultHandwritingHeight:I

.field private mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

.field private mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

.field private mHandwritingAreaFrame:Landroid/widget/FrameLayout;

.field private mKeyboardAreaFrame:Landroid/widget/FrameLayout;

.field private mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

.field private mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getExactHeight(I)I
    .registers 5
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 161
    .local v0, "h":I
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-eqz v1, :cond_e

    .line 162
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    .line 164
    :cond_e
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2e

    .line 165
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 166
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int v0, v1, v2

    .line 168
    :cond_2e
    return v0
.end method

.method public getExactWidth(I)I
    .registers 4
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 152
    .local v0, "w":I
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-eqz v1, :cond_e

    .line 153
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getMeasuredWidth()I

    move-result v0

    .line 155
    :cond_e
    return v0
.end method

.method public getInputView()Lcom/nuance/swype/input/InputView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-nez v0, :cond_7

    .line 44
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->initViews()V

    .line 46
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    return-object v0
.end method

.method public hideFullScreenHandWritingFrame()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    .line 130
    :cond_14
    return-void
.end method

.method public hideHWFrameAndCharacterList()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 99
    return-void
.end method

.method public initViews()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 53
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-nez v1, :cond_a0

    .line 55
    sget v1, Lcom/nuance/swype/input/R$id;->korean_handwriting_area:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 56
    sget v1, Lcom/nuance/swype/input/R$id;->korean_handwriting_key_area:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    .line 57
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mDefaultHandwritingHeight:I

    .line 58
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->updateHandwritingPadSize()V

    .line 60
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 63
    sget v1, Lcom/nuance/swype/input/R$layout;->korean_handwriting_input:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .line 67
    sget v1, Lcom/nuance/swype/input/R$layout;->korean_writing_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .line 69
    sget v1, Lcom/nuance/swype/input/R$layout;->korean_full_screen_writing_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iput-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V

    .line 81
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .line 82
    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V

    .line 83
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 84
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setSelectionAreaListener(Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;)V

    .line 85
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setContainerView(Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;)V

    .line 86
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 87
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 89
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_a0
    return-void
.end method

.method public onBeginDrag()V
    .registers 3

    .prologue
    const/16 v1, 0x7f

    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 174
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 175
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onBeginDrag()V

    .line 176
    return-void
.end method

.method public onEndDrag()V
    .registers 3

    .prologue
    const/16 v1, 0xff

    .line 180
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 182
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onEndDrag()V

    .line 183
    return-void
.end method

.method public onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onMeasure(II)V

    .line 145
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    .line 146
    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->getMeasuredHeight()I

    move-result v2

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->measure(II)V

    .line 147
    return-void
.end method

.method public setFullScreenHandWritingFrame()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

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

    if-nez v0, :cond_20

    .line 108
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    .line 112
    :cond_20
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$attr;->keyboardBackgroundHwr:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method public setNormalHandScreenWritingFrame()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->updateKeyboardDockMode()V

    .line 118
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mWritingPadView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 119
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->hideFullScreenHandWritingFrame()V

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 122
    invoke-virtual {p0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$attr;->keyboardBackgroundHwrContainer:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method

.method public showFullScreenHandWritingFrame(IIII)V
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_62

    .line 134
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_62

    .line 135
    sget-object v0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "showFullScreenHandWritingFrame...x: "

    aput-object v2, v1, v4

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

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandwritingView:Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    invoke-virtual {v0, p3, p4}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->measure(II)V

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4, v4, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 138
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mFullScreenHandWritingPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mKeyboardView:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 140
    :cond_62
    return-void
.end method

.method public updateHandwritingPadSize()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->mDefaultHandwritingHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->updateHandwritingAreaSize(Landroid/view/View;I)V

    .line 95
    :cond_b
    return-void
.end method
