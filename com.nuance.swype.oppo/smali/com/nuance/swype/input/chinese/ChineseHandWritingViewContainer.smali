.class public Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;
.super Lcom/nuance/swype/input/AbstractHandWritingContainer;
.source "ChineseHandWritingViewContainer.java"


# static fields
.field public static final NO_GIRD_VIEW:I = 0x2


# instance fields
.field private mCharacterListAreaFrame:Landroid/widget/FrameLayout;

.field private mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

.field private mDefaultCharacterListAraFrameHeight:I

.field private mDefaultHandwritingAreaFrameHeight:I

.field private mHandwritingAreaFrame:Landroid/widget/FrameLayout;

.field private mKeyboardAreaFrame:Landroid/widget/FrameLayout;

.field private mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

.field private mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method public clearCharacterList()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->clear()V

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->requestLayout()V

    .line 165
    :cond_0
    return-void
.end method

.method public getCharacterListWidth()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->getWidth()I

    move-result v0

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExactHeight(I)I
    .locals 3
    .param p1, "heightMeasureSpec"    # I

    .prologue
    const/4 v2, 0x2

    .line 206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 207
    .local v0, "h":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    .line 215
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 216
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 222
    :cond_2
    :goto_1
    return v0

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getCandidateHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 219
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getChildCount()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 220
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public getExactWidth(I)I
    .locals 2
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 197
    .local v0, "w":I
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getMeasuredWidth()I

    move-result v0

    .line 200
    :cond_0
    return v0
.end method

.method public getInputView()Lcom/nuance/swype/input/InputView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->initViews()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    return-object v0
.end method

.method public getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    return-object v0
.end method

.method public hideCandidatesGridView(Landroid/view/View;)V
    .locals 2
    .param p1, "aPopupWindow"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 143
    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->removeView(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public hideCharacterList()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setVisibility(I)V

    .line 135
    return-void
.end method

.method public hideHWFrameAndCharacterList()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 130
    return-void
.end method

.method public initViews()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 50
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    .line 51
    sget v1, Lcom/nuance/swype/input/R$id;->chinese_character_list_area:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    .line 52
    sget v1, Lcom/nuance/swype/input/R$id;->chinese_handwriting_area:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    .line 55
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mDefaultCharacterListAraFrameHeight:I

    .line 56
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mDefaultHandwritingAreaFrameHeight:I

    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->updateHandwritingPadSize()V

    .line 60
    sget v1, Lcom/nuance/swype/input/R$id;->chinese_handwriting_key_area:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    .line 62
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 63
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    sget v1, Lcom/nuance/swype/input/R$layout;->chinese_handwriting_input:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .line 67
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setHWContainer(Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;)V

    .line 69
    sget v1, Lcom/nuance/swype/input/R$layout;->chinese_writing_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    .line 71
    sget v1, Lcom/nuance/swype/input/R$layout;->chinese_ver_hw_candidates_list_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .line 74
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    sget v3, Lcom/nuance/swype/input/R$style;->CHNHWCharacterListView:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V

    .line 76
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->initViews()V

    .line 77
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V

    .line 92
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/HandWritingView;)V

    .line 93
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setMultitouchListener(Lcom/nuance/swype/input/chinese/TwoFingerGestureDetector$OnScrollListener;)V

    .line 95
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public onBeginDrag()V
    .locals 2

    .prologue
    const/16 v1, 0x7f

    .line 238
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 239
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 240
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 241
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onBeginDrag()V

    .line 242
    return-void
.end method

.method public onDrag(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onDrag(II)V

    .line 247
    return-void
.end method

.method public onEndDrag()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 251
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 252
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 253
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 254
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onEndDrag()V

    .line 255
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isMiniKeyboardMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->isDockMiniKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->refreshHandwritingPadWidth()V

    .line 180
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onLayout(ZIIII)V

    .line 181
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onMeasure(II)V

    .line 170
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->measure(II)V

    .line 172
    return-void
.end method

.method public refreshHandwritingPadWidth()V
    .locals 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mWritingPadView:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 190
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void
.end method

.method public setCandidates(Ljava/util/List;)V
    .locals 1
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
    .line 107
    .local p1, "aPrefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setCandidates(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showCandidatesGridView(Landroid/view/View;)V
    .locals 2
    .param p1, "aPopupWindow"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mKeyboardAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->addView(Landroid/view/View;)V

    .line 158
    :cond_0
    return-void
.end method

.method public showCharacterList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public showHWFrameAndCharacterList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->cjk_one_step_candidates_list_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->cjk_one_step_candidates_list_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 121
    return-void
.end method

.method public showHWFrameList()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public updateHandwritingPadSize()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mCharacterListAreaFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mDefaultCharacterListAraFrameHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->updateHandwritingAreaSize(Landroid/view/View;I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mHandwritingAreaFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->mDefaultHandwritingAreaFrameHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->updateHandwritingAreaSize(Landroid/view/View;I)V

    .line 104
    :cond_1
    return-void
.end method
