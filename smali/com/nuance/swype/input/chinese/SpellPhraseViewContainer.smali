.class public Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
.super Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;
.source "SpellPhraseViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private candidateContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFunctionBarLayout:Landroid/view/View;

.field private mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

.field private mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

.field private mPhraseButtonLeft:Landroid/view/View;

.field private mPhraseButtonRight:Landroid/view/View;

.field private mPhraseLayout:Landroid/view/View;

.field private mShowLeftArrow:Z

.field private spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

.field private spellPrefixSuffixLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mShowLeftArrow:Z

    .line 32
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static updateScrollArrowVisibility(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;ZLandroid/view/View;Landroid/view/View;)V
    .locals 8
    .param p0, "lv"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .param p1, "alwaysShowLeftArrow"    # Z
    .param p2, "scrollLeft"    # Landroid/view/View;
    .param p3, "scrollRight"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->computeHorizontalScrollRange()I

    move-result v2

    .line 165
    .local v2, "neededWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMeasuredWidth()I

    move-result v0

    .line 166
    .local v0, "candidateWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v4

    .line 168
    .local v4, "x":I
    if-nez p1, :cond_0

    if-lez v4, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v3

    .line 170
    .local v1, "leftVisible":Z
    :goto_0
    add-int v5, v4, v0

    if-lt v5, v2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isScrolling()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v5

    if-nez v5, :cond_5

    .line 173
    .local v3, "rightVisible":Z
    :goto_1
    if-eqz p2, :cond_2

    .line 174
    if-eqz v1, :cond_6

    move v5, v6

    :goto_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_2
    if-eqz p3, :cond_3

    .line 177
    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_3
    return-void

    .end local v1    # "leftVisible":Z
    .end local v3    # "rightVisible":Z
    :cond_4
    move v1, v6

    .line 168
    goto :goto_0

    .restart local v1    # "leftVisible":Z
    :cond_5
    move v3, v6

    .line 170
    goto :goto_1

    .restart local v3    # "rightVisible":Z
    :cond_6
    move v5, v7

    .line 174
    goto :goto_2

    :cond_7
    move v6, v7

    .line 177
    goto :goto_3
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->clear()V

    .line 87
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mShowLeftArrow:Z

    .line 88
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->requestLayout()V

    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->invalidate()V

    .line 90
    return-void
.end method

.method public clearPhraseListView()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mShowLeftArrow:Z

    .line 103
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->invalidate()V

    .line 104
    return-void
.end method

.method public clearSpellPrefixSuffixListView()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->invalidate()V

    .line 97
    return-void
.end method

.method public getFunctionBarListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    return-object v0
.end method

.method public getPhraseWordListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method public getSpellPrefixSuffixWordListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    return-object v0
.end method

.method public hideFunctionBarListView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 146
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->setVisibility(I)V

    .line 148
    return-void
.end method

.method public hidePhraseListView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setVisibility(I)V

    .line 118
    return-void
.end method

.method public hideSpellPrefixSuffixList()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 141
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public hideTempFunctionBarListView()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->setVisibility(I)V

    .line 153
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->initViews()V

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->candidateContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 40
    sget v0, Lcom/nuance/swype/input/R$id;->candidate_container:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->candidateContainer:Landroid/view/View;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    if-nez v0, :cond_2

    .line 44
    sget v0, Lcom/nuance/swype/input/R$id;->spell_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_1
    sget v0, Lcom/nuance/swype/input/R$id;->spell_candidates:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/SpellListView;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    sget v1, Lcom/nuance/swype/input/R$style;->WordListView:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->readStyles(I)V

    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->init()V

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    if-nez v0, :cond_4

    .line 55
    sget v0, Lcom/nuance/swype/input/R$id;->phrase_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->phrase_candidate_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    :cond_3
    sget v0, Lcom/nuance/swype/input/R$id;->phrase_candidate_right:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-nez v0, :cond_5

    .line 68
    sget v0, Lcom/nuance/swype/input/R$id;->functionbar_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarLayout:Landroid/view/View;

    .line 69
    sget v0, Lcom/nuance/swype/input/R$id;->functionbar:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/FunctionBarListView;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 71
    :cond_5
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 205
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 213
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->getListSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyOffsets()V

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->requestLayout()V

    .line 202
    return-void
.end method

.method public setKeyboardViewEx(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 0
    .param p1, "keyboardView"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 75
    return-void
.end method

.method public showFSHandwritingSpellList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->setVisibility(I)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    .line 138
    return-void
.end method

.method public showFunctionBarListView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->setVisibility(I)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public showLeftArrow(Z)V
    .locals 0
    .param p1, "showLeftArrow"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mShowLeftArrow:Z

    .line 218
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility()V

    .line 219
    return-void
.end method

.method public showPhraseListView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setVisibility(I)V

    .line 123
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public showSpellPrefixSuffixList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 128
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->setVisibility(I)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public updateScrollArrowVisibility()V
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mShowLeftArrow:Z

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;ZLandroid/view/View;Landroid/view/View;)V

    .line 188
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->invalidate()V

    .line 189
    return-void
.end method
