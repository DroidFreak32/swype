.class public Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;
.super Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;
.source "SpellPhraseHandWritingViewContainer.java"

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

.field private spellPrefixSuffixButtonLeft:Landroid/view/View;

.field private spellPrefixSuffixButtonRight:Landroid/view/View;

.field private spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

.field private spellPrefixSuffixLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mShowLeftArrow:Z

    .line 34
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->clear()V

    .line 96
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mShowLeftArrow:Z

    .line 97
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->requestLayout()V

    .line 98
    return-void
.end method

.method public clearPhraseListView()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mShowLeftArrow:Z

    .line 111
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->requestLayout()V

    .line 112
    return-void
.end method

.method public clearSpellPrefixSuffixListView()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->requestLayout()V

    .line 105
    return-void
.end method

.method public getFunctionBarListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    return-object v0
.end method

.method public getPhraseWordListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method public final getRightPhraseImageButtonWidth()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRightSpellPrefixSuffixImageButtonWidth()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpellPrefixSuffixWordListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    return-object v0
.end method

.method public hideFunctionBarListView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public hidePhraseListView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 124
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setVisibility(I)V

    .line 126
    return-void
.end method

.method public hideSpellPrefixSuffixList()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public hideTempFunctionBarListView()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->setVisibility(I)V

    .line 160
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->initViews()V

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->candidateContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 42
    sget v0, Lcom/nuance/swype/input/R$id;->candidate_container:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->candidateContainer:Landroid/view/View;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    if-nez v0, :cond_4

    .line 45
    sget v0, Lcom/nuance/swype/input/R$id;->spell_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_1
    sget v0, Lcom/nuance/swype/input/R$id;->spell_candidate_left:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonLeft:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    :cond_2
    sget v0, Lcom/nuance/swype/input/R$id;->spell_candidate_right:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    :cond_3
    sget v0, Lcom/nuance/swype/input/R$id;->spell_candidates:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/SpellListView;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    sget v1, Lcom/nuance/swype/input/R$style;->WordListView:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->readStyles(I)V

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->init()V

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseLayout:Landroid/view/View;

    if-nez v0, :cond_6

    .line 63
    sget v0, Lcom/nuance/swype/input/R$id;->phrase_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseLayout:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseLayout:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->phrase_candidate_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    :cond_5
    sget v0, Lcom/nuance/swype/input/R$id;->phrase_candidate_right:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonRight:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-nez v0, :cond_7

    .line 76
    sget v0, Lcom/nuance/swype/input/R$id;->functionbar_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarLayout:Landroid/view/View;

    .line 77
    sget v0, Lcom/nuance/swype/input/R$id;->functionbar:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/FunctionBarListView;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 79
    :cond_7
    return-void
.end method

.method public isRightPhraseArrowShowable()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRightSpellPrefixSuffixArrowShowable()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->scrollNext()V

    .line 207
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->scrollPrev()V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto :goto_0
.end method

.method public setKeyboardViewEx(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 0
    .param p1, "keyboardView"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 83
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 252
    invoke-super {p0, p1}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->setVisibility(I)V

    .line 253
    return-void
.end method

.method public showFSHandwritingSpellList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->setVisibility(I)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setVisibility(I)V

    .line 145
    return-void
.end method

.method public showFunctionBarListView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->setVisibility(I)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->requestLayout()V

    .line 167
    return-void
.end method

.method public showLeftArrow(Z)V
    .locals 0
    .param p1, "showLeftArrow"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mShowLeftArrow:Z

    .line 212
    return-void
.end method

.method public showPhraseListView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setVisibility(I)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public showSpellPrefixSuffixList()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->hideFunctionBarListView()V

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->setVisibility(I)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->setVisibility(I)V

    .line 139
    return-void
.end method

.method public updateScrollArrowVisibility()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->getListSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonLeft:Landroid/view/View;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;ZLandroid/view/View;Landroid/view/View;)V

    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isShowingSwypeTooltip()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mShowLeftArrow:Z

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;ZLandroid/view/View;Landroid/view/View;)V

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->invalidate()V

    .line 192
    return-void

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonLeft:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseHandWritingViewContainer;->spellPrefixSuffixButtonRight:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
