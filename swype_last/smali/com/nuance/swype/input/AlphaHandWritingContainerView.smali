.class public Lcom/nuance/swype/input/AlphaHandWritingContainerView;
.super Lcom/nuance/swype/input/AbstractHandWritingContainer;
.source "AlphaHandWritingContainerView.java"


# instance fields
.field private mDefaultHandwritingPadHeight:I

.field protected mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

.field private mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/AlphaHandWritingContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getExactHeight(I)I
    .registers 4
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 65
    .local v0, "h":I
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    if-eqz v1, :cond_e

    .line 66
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getMeasuredHeight()I

    move-result v0

    .line 68
    :cond_e
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v1, :cond_19

    .line 69
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_19
    return v0
.end method

.method public getExactWidth(I)I
    .registers 4
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 55
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 56
    .local v0, "w":I
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    if-eqz v1, :cond_e

    .line 57
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getMeasuredWidth()I

    move-result v0

    .line 59
    :cond_e
    return v0
.end method

.method public getInputView()Lcom/nuance/swype/input/InputView;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    if-nez v0, :cond_7

    .line 41
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->initViews()V

    .line 43
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    return-object v0
.end method

.method public initViews()V
    .registers 3

    .prologue
    .line 23
    sget v0, Lcom/nuance/swype/input/R$id;->keyboardview:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    .line 24
    sget v0, Lcom/nuance/swype/input/R$id;->alpha_handwriting_area:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/AlphaHandWritingView;

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    .line 25
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mDefaultHandwritingPadHeight:I

    .line 26
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->updateHandwritingPadSize()V

    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setContainerView(Lcom/nuance/swype/input/AlphaHandWritingContainerView;)V

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaHandWritingView;->setOnWritingActionListener(Lcom/nuance/swype/input/AlphaHandWritingView$OnWritingAction;)V

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->setHandWritingView(Lcom/nuance/swype/input/AlphaHandWritingView;)V

    .line 30
    return-void
.end method

.method public onBeginDrag()V
    .registers 3

    .prologue
    const/16 v1, 0x7f

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 79
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onBeginDrag()V

    .line 80
    return-void
.end method

.method public onEndDrag()V
    .registers 3

    .prologue
    const/16 v1, 0xff

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 86
    invoke-super {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onEndDrag()V

    .line 87
    return-void
.end method

.method public onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->onMeasure(II)V

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mKeyboardInputView:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    .line 50
    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaHandWritingView;->getMeasuredHeight()I

    move-result v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AlphaHandWritingView;->measure(II)V

    .line 51
    return-void
.end method

.method public updateHandwritingPadSize()V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    if-eqz v0, :cond_b

    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mHandwritingPadView:Lcom/nuance/swype/input/AlphaHandWritingView;

    iget v1, p0, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->mDefaultHandwritingPadHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AlphaHandWritingContainerView;->updateHandwritingAreaSize(Landroid/view/View;I)V

    .line 36
    :cond_b
    return-void
.end method
