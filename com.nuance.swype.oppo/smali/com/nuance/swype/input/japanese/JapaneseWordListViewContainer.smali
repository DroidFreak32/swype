.class public Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;
.super Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;
.source "JapaneseWordListViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static final TAG:Ljava/lang/String; = "XT9IME.JapaneseWordListViewContainer"


# instance fields
.field private mPhraseButtonLeft:Landroid/view/View;

.field private mPhraseButtonRight:Landroid/view/View;

.field private mPhraseLayout:Landroid/view/View;

.field private mShowLeftArrow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mShowLeftArrow:Z

    .line 29
    return-void
.end method


# virtual methods
.method public clearPhraseListView()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mShowLeftArrow:Z

    .line 58
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->requestLayout()V

    .line 59
    return-void
.end method

.method public final getRightPhraseImageButtonWidth()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->initViews()V

    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 35
    sget v0, Lcom/nuance/swype/input/R$id;->phrase_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseLayout:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseLayout:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->phrase_candidate_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    :cond_0
    sget v0, Lcom/nuance/swype/input/R$id;->phrase_candidate_right:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 90
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto :goto_0
.end method

.method public setHorizontalLayout(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "width"    # I

    .prologue
    .line 62
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    if-lez p2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 64
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 65
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    .local v1, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 67
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 70
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method public showLeftArrow(Z)V
    .locals 0
    .param p1, "showLeftArrow"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mShowLeftArrow:Z

    .line 95
    return-void
.end method

.method public updateScrollArrowVisibility()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isShowingSwypeTooltip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mShowLeftArrow:Z

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;ZLandroid/view/View;Landroid/view/View;)V

    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->invalidate()V

    .line 78
    :cond_0
    return-void
.end method
