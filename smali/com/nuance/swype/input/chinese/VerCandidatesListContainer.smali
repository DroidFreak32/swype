.class public Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;
.super Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;
.source "VerCandidatesListContainer.java"


# static fields
.field static final TAG:Ljava/lang/String; = "XT9IME.VerCandidatesListContainer"


# instance fields
.field private mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "screen"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->clear()V

    .line 79
    return-void
.end method

.method public enablePrefixHighlight()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->enableHighlight()V

    .line 92
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-nez v0, :cond_0

    .line 28
    sget v0, Lcom/nuance/swype/input/R$id;->vertical_spell_candidates:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iget v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mStyleResID:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->readStyles(I)V

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mWordSelectedListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setOnWordSelectActionVerListener(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;)V

    .line 31
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->init()V

    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setContainer(Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;)V

    .line 34
    :cond_0
    return-void
.end method

.method public prefixListIndexChanged()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->getSelectedIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->requestLayout()V

    .line 75
    return-void
.end method

.method public setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V
    .locals 0
    .param p1, "aWordSelectedListener"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;
    .param p2, "aStyleResID"    # I

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V

    .line 23
    return-void
.end method

.method public setCandidates(Ljava/util/List;)V
    .locals 2
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
    .line 43
    .local p1, "aPrefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public setCandidates(Ljava/util/List;IZ)V
    .locals 1
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
    .line 54
    .local p1, "aPrefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    if-eqz p3, :cond_2

    .line 62
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->enablePrefixHighlight()V

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setSuggestions(Ljava/util/List;I)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->disablePrefixHighlight()V

    goto :goto_1
.end method

.method public setKeyboardHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setKeyboardHeight(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public setSpellPrefix(Z)V
    .locals 1
    .param p1, "prefix"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->setSpellPrefix(Z)V

    .line 40
    :cond_0
    return-void
.end method

.method public trySelect()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->trySelect()V

    .line 98
    :cond_0
    return-void
.end method

.method public updateCandidatesSize()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->mCandidates:Lcom/nuance/swype/input/chinese/VerCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListView;->updateCandidatesSize()V

    .line 102
    return-void
.end method
