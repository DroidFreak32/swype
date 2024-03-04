.class public Lcom/nuance/swype/input/chinese/SpellListView;
.super Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
.source "SpellListView.java"


# instance fields
.field mTouchedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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
    .locals 1

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
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTouchedIndex()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTouchedIndex:I

    return v0
.end method

.method public scrollToSelection()V
    .locals 5

    .prologue
    .line 57
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSuggestions:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellListView;->getWidth()I

    move-result v2

    .line 60
    .local v2, "totalWidth":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mWordX:[I

    iget v4, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedIndex:I

    aget v3, v3, v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellListView;->getScrollX()I

    move-result v4

    sub-int v1, v3, v4

    .line 61
    .local v1, "start":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mWordWidth:[I

    iget v4, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedIndex:I

    aget v3, v3, v4

    add-int v0, v1, v3

    .line 62
    .local v0, "end":I
    if-eqz v2, :cond_0

    .line 65
    if-gez v1, :cond_2

    .line 66
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mWordX:[I

    iget v4, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedIndex:I

    aget v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/SpellListView;->updateScrollPosition(I)V

    goto :goto_0

    .line 67
    :cond_2
    if-le v0, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellListView;->getScrollX()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/chinese/SpellListView;->updateScrollPosition(I)V

    goto :goto_0
.end method

.method public touchWord(ILjava/lang/CharSequence;)V
    .locals 0
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
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mOnWordSelectActionListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    iget v1, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTouchedIndex:I

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, p0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;->selectWord(ILjava/lang/CharSequence;Landroid/view/View;)V

    .line 36
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTouchedIndex:I

    if-ltz v0, :cond_1

    .line 37
    iget v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTouchedIndex:I

    iput v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mSelectedIndex:I

    .line 38
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellListView;->scrollToSelection()V

    .line 40
    :cond_1
    return-void
.end method

.method public updateCandidatesSize()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/SpellListView;->getCandidateSize()V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/chinese/SpellListView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    :cond_0
    return-void
.end method
