.class public Lcom/nuance/swype/input/chinese/SpellListView;
.super Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
.source "SpellListView.java"


# instance fields
.field mTouchedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTouchedIndex:I

    .line 22
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTouchedIndex:I

    .line 46
    return-void
.end method

.method public getListSize()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public scrollToSelection()V
    .registers 6

    .prologue
    .line 53
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSuggestions:Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 66
    :cond_c
    :goto_c
    return-void

    .line 55
    :cond_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellListView;->getWidth()I

    move-result v2

    .line 56
    .local v2, "totalWidth":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mWordX:[I

    iget v4, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedIndex:I

    aget v3, v3, v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellListView;->getScrollX()I

    move-result v4

    sub-int v1, v3, v4

    .line 57
    .local v1, "start":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mWordWidth:[I

    iget v4, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedIndex:I

    aget v3, v3, v4

    add-int v0, v1, v3

    .line 58
    .local v0, "end":I
    if-eqz v2, :cond_c

    .line 61
    if-gez v1, :cond_33

    .line 62
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mWordX:[I

    iget v4, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedIndex:I

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/SpellListView;->updateScrollPosition(I)V

    goto :goto_c

    .line 63
    :cond_33
    if-le v0, v2, :cond_c

    .line 64
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellListView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/SpellListView;->updateScrollPosition(I)V

    goto :goto_c
.end method

.method public touchWord(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "i"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 26
    iput p1, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTouchedIndex:I

    .line 27
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    .line 28
    return-void
.end method

.method protected trySelect()V
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d

    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTouchedIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 36
    :cond_d
    iget v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTouchedIndex:I

    if-ltz v0, :cond_18

    .line 37
    iget v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTouchedIndex:I

    iput v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedIndex:I

    .line 38
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellListView;->scrollToSelection()V

    .line 40
    :cond_18
    return-void
.end method

.method public updateCandidatesSize()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_f

    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellListView;->getCandidateSize()V

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    :cond_f
    return-void
.end method
