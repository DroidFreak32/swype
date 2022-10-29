.class public Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;
.super Lcom/nuance/swype/input/AbstractHandWritingContainer;
.source "ChineseHandWritingViewContainer.java"


# static fields
.field public static final NO_GIRD_VIEW:I = 0x2


# instance fields
.field private mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

.field private mDefaultHandwritingAreaFrameHeight:I

.field private mHandwritingAreaFrame:Landroid/widget/FrameLayout;

.field private mKeyboardAreaFrame:Landroid/widget/FrameLayout;

.field private mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

.field private mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public clearCharacterList()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-eqz v0, :cond_e

    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->clear()V

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->requestLayout()V

    .line 155
    :cond_e
    return-void
.end method

.method public getCharacterListWidth()I
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-eqz v0, :cond_b

    .line 198
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->getWidth()I

    move-result v0

    .line 200
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getExactHeight(I)I
    .registers 5
    .param p1, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x2

    .line 177
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 178
    .local v0, "h":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    if-eqz v1, :cond_23

    .line 179
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_4b

    .line 181
    :cond_1d
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    .line 186
    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_53

    .line 187
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 188
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 193
    :cond_4a
    :goto_4a
    return v0

    .line 183
    :cond_4b
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCandidateHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_23

    .line 190
    :cond_53
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getChildCount()I

    move-result v1

    if-eq v1, v2, :cond_4a

    .line 191
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4a
.end method

.method public getExactWidth(I)I
    .registers 4
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 166
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 168
    .local v0, "w":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    if-eqz v1, :cond_e

    .line 169
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getMeasuredWidth()I

    move-result v0

    .line 171
    :cond_e
    return v0
.end method

.method public getInputView()Lcom/nuance/swype/input/InputView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    if-nez v0, :cond_7

    .line 39
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->initViews()V

    .line 41
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    return-object v0
.end method

.method public getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    return-object v0
.end method

.method public hideCandidatesGridView(Landroid/view/View;)V
    .registers 4
    .param p1, "aPopupWindow"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 133
    if-eqz p1, :cond_15

    .line 134
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->removeView(Landroid/view/View;)V

    .line 135
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setContextWindowShowing(Z)V

    .line 139
    :cond_15
    return-void
.end method

.method public hideCharacterList()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setVisibility(I)V

    .line 126
    return-void
.end method

.method public hideHWFrameAndCharacterList()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 122
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
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 47
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-nez v2, :cond_bd

    .line 48
    sget v2, Lcom/nuance/swype/input/R$id;->chinese_handwriting_area:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 51
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mDefaultHandwritingAreaFrameHeight:I

    .line 52
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->updateHandwritingPadSize()V

    .line 55
    sget v2, Lcom/nuance/swype/input/R$id;->chinese_handwriting_key_area:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 58
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 59
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 61
    sget v2, Lcom/nuance/swype/input/R$layout;->chinese_handwriting_input:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .line 63
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setHWContainer(Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;)V

    .line 65
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 66
    sget v2, Lcom/nuance/swype/input/R$layout;->chinese_writing_view:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 68
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 72
    sget v2, Lcom/nuance/swype/input/R$layout;->chinese_ver_hw_candidates_list_container:I

    .line 73
    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .line 75
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 77
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    sget v4, Lcom/nuance/swype/input/R$style;->CHNHWCharacterListView:I

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V

    .line 79
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->initViews()V

    .line 81
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V

    .line 91
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 92
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 94
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_bd
    return-void
.end method

.method public onBeginDrag()V
    .registers 3

    .prologue
    const/16 v1, 0x7f

    .line 209
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 210
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 211
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 212
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onBeginDrag()V

    .line 213
    return-void
.end method

.method public onDrag(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onDrag(II)V

    .line 218
    return-void
.end method

.method public onEndDrag()V
    .registers 3

    .prologue
    const/16 v1, 0xff

    .line 222
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 223
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 224
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 225
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onEndDrag()V

    .line 226
    return-void
.end method

.method public onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onMeasure(II)V

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 161
    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMeasuredHeight()I

    move-result v2

    .line 160
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->measure(II)V

    .line 162
    return-void
.end method

.method public setCandidates(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "aPrefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-nez v0, :cond_5

    .line 108
    :goto_4
    return-void

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setCandidates(Ljava/util/List;)V

    goto :goto_4
.end method

.method public showCandidatesGridView(Landroid/view/View;)V
    .registers 4
    .param p1, "aPopupWindow"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 142
    if-eqz p1, :cond_17

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->addView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setContextWindowShowing(Z)V

    .line 148
    :cond_17
    return-void
.end method

.method public showCharacterList()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setVisibility(I)V

    .line 130
    return-void
.end method

.method public showHWFrameAndCharacterList()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public showHWFrameList()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public updateHandwritingPadSize()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mDefaultHandwritingAreaFrameHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->updateHandwritingAreaSize(Landroid/view/View;I)V

    .line 101
    :cond_b
    return-void
.end method
