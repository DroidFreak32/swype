.class public Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;
.super Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;
.source "VerCandidatesListContainer.java"


# instance fields
.field private mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "screen"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->clear()V

    .line 77
    return-void
.end method

.method public initViews()V
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-nez v0, :cond_26

    .line 26
    sget v0, Lcom/nuance/swype/input/R$id;->vertical_spell_candidates:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iget v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mStyleResID:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->readStyles(I)V

    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mWordSelectedListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setOnWordSelectActionVerListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->init()V

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setContainer(Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;)V

    .line 32
    :cond_26
    return-void
.end method

.method public requestLayout()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->requestLayout()V

    .line 73
    return-void
.end method

.method public setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V
    .registers 3
    .param p1, "aWordSelectedListener"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;
    .param p2, "aStyleResID"    # I

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V

    .line 21
    return-void
.end method

.method public setCandidates(Ljava/util/List;)V
    .registers 4
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
    .line 41
    .local p1, "aPrefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-nez v0, :cond_5

    .line 48
    :cond_4
    :goto_4
    return-void

    .line 44
    :cond_5
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    goto :goto_4
.end method

.method public setCandidates(Ljava/util/List;IZ)V
    .registers 5
    .param p2, "activePrefixIndex"    # I
    .param p3, "highlightPrefix"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "aPrefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-nez v0, :cond_5

    .line 68
    :cond_4
    :goto_4
    return-void

    .line 55
    :cond_5
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 59
    if-eqz p3, :cond_1a

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->enablePrefixHighlight()V

    .line 66
    :goto_14
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    goto :goto_4

    .line 63
    :cond_1a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->disablePrefixHighlight()V

    goto :goto_14
.end method

.method public setKeyboardHeight(I)V
    .registers 3
    .param p1, "height"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setKeyboardHeight(I)V

    .line 87
    :cond_9
    return-void
.end method

.method public setSpellPrefix(Z)V
    .registers 3
    .param p1, "prefix"    # Z

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_9

    .line 36
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setSpellPrefix(Z)V

    .line 38
    :cond_9
    return-void
.end method

.method public updateCandidatesSize()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->updateCandidatesSize()V

    .line 81
    return-void
.end method
