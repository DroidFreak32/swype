.class public Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
.super Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;
.source "SpellPhraseViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private candidateContainer:Landroid/view/View;

.field private mFunctionBarLayout:Landroid/view/View;

.field private mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

.field private mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/KeyboardViewEx;",
            ">;"
        }
    .end annotation
.end field

.field private mPhraseButtonLeft:Landroid/view/View;

.field private mPhraseButtonRight:Landroid/view/View;

.field private mPhraseLayout:Landroid/view/View;

.field private mShowLeftArrow:Z

.field private spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

.field private spellPrefixSuffixLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "screen"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mShowLeftArrow:Z

    .line 34
    return-void
.end method

.method private getKeyboardView()Lcom/nuance/swype/input/KeyboardViewEx;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 178
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardViewEx;

    .line 180
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static updateScrollArrowVisibility(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;ZLandroid/view/View;Landroid/view/View;)V
    .registers 12
    .param p0, "lv"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .param p1, "alwaysShowLeftArrow"    # Z
    .param p2, "scrollLeft"    # Landroid/view/View;
    .param p3, "scrollRight"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->computeHorizontalScrollRange()I

    move-result v2

    .line 137
    .local v2, "neededWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getMeasuredWidth()I

    move-result v0

    .line 138
    .local v0, "candidateWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getScrollX()I

    move-result v4

    .line 140
    .local v4, "x":I
    if-nez p1, :cond_14

    if-lez v4, :cond_3b

    .line 141
    :cond_14
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v5

    if-nez v5, :cond_3b

    move v1, v3

    .line 142
    .local v1, "leftVisible":Z
    :goto_1b
    add-int v5, v4, v0

    if-lt v5, v2, :cond_25

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isScrolling()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 143
    :cond_25
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->getAltCharacterConverted()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 145
    .local v3, "rightVisible":Z
    :goto_2b
    if-eqz p2, :cond_33

    .line 146
    if-eqz v1, :cond_3f

    move v5, v6

    :goto_30
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_33
    if-eqz p3, :cond_3a

    .line 149
    if-eqz v3, :cond_41

    :goto_37
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_3a
    return-void

    .end local v1    # "leftVisible":Z
    .end local v3    # "rightVisible":Z
    :cond_3b
    move v1, v6

    .line 141
    goto :goto_1b

    .restart local v1    # "leftVisible":Z
    :cond_3d
    move v3, v6

    .line 143
    goto :goto_2b

    .restart local v3    # "rightVisible":Z
    :cond_3f
    move v5, v7

    .line 146
    goto :goto_30

    :cond_41
    move v6, v7

    .line 149
    goto :goto_37
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->clear()V

    .line 82
    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_12

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 85
    :cond_12
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-eqz v0, :cond_1b

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->clear()V

    .line 88
    :cond_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mShowLeftArrow:Z

    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->requestLayout()V

    .line 90
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->invalidate()V

    .line 91
    return-void
.end method

.method public getFunctionBarListView()Landroid/view/View;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    return-object v0
.end method

.method public getSpellPrefixSuffixWordListView()Landroid/view/View;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    return-object v0
.end method

.method public hideFunctionBarListView()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 123
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public hidePhraseListView()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public hideSpellPrefixSuffixList()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 118
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public initViews()V
    .registers 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->initViews()V

    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->candidateContainer:Landroid/view/View;

    if-nez v0, :cond_f

    .line 41
    sget v0, Lcom/nuance/swype/input/R$id;->candidate_container:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->candidateContainer:Landroid/view/View;

    .line 44
    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    if-nez v0, :cond_3c

    .line 45
    sget v0, Lcom/nuance/swype/input/R$id;->spell_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_26
    sget v0, Lcom/nuance/swype/input/R$id;->spell_candidates:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/SpellListView;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    .line 51
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    sget v1, Lcom/nuance/swype/input/R$style;->WordListView:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->readStyles(I)V

    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->init()V

    .line 55
    :cond_3c
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    if-nez v0, :cond_6c

    .line 56
    sget v0, Lcom/nuance/swype/input/R$id;->phrase_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->phrase_candidate_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_5b

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    :cond_5b
    sget v0, Lcom/nuance/swype/input/R$id;->phrase_candidate_right:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_6c

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    :cond_6c
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    if-nez v0, :cond_82

    .line 69
    sget v0, Lcom/nuance/swype/input/R$id;->functionbar_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarLayout:Landroid/view/View;

    .line 70
    sget v0, Lcom/nuance/swype/input/R$id;->functionbar:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/FunctionBarListView;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    .line 72
    :cond_82
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    .line 187
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_11

    .line 188
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 194
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_11
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_f

    .line 190
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto :goto_f
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    if-eqz v0, :cond_25

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->getListSize()I

    move-result v0

    if-lez v0, :cond_25

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getKeyboardView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 169
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->getKeyboardView()Lcom/nuance/swype/input/KeyboardViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->clearKeyOffsets()V

    .line 173
    :cond_25
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->requestLayout()V

    .line 174
    return-void
.end method

.method public setKeyboardViewEx(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .registers 3
    .param p1, "keyboardView"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 76
    return-void
.end method

.method public showFunctionBarListView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mFunctionBarListView:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/FunctionBarListView;->setVisibility(I)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public showLeftArrow(Z)V
    .registers 2
    .param p1, "showLeftArrow"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mShowLeftArrow:Z

    .line 199
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility()V

    .line 200
    return-void
.end method

.method public showPhraseListView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->setVisibility(I)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public showSpellPrefixSuffixList()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideFunctionBarListView()V

    .line 111
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hidePhraseListView()V

    .line 112
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->spellPrefixSuffixCandidates:Lcom/nuance/swype/input/chinese/SpellListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/SpellListView;->setVisibility(I)V

    .line 114
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public updateScrollArrowVisibility()V
    .registers 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-boolean v1, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mShowLeftArrow:Z

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;ZLandroid/view/View;Landroid/view/View;)V

    .line 160
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->invalidate()V

    .line 161
    return-void
.end method
