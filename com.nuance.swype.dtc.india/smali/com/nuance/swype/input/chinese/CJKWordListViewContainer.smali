.class public Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;
.super Landroid/widget/LinearLayout;
.source "CJKWordListViewContainer.java"


# instance fields
.field public mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

.field protected mStyleResID:I

.field protected mWordSelectedListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 13
    sget v0, Lcom/nuance/swype/input/R$style;->WordListView:I

    iput v0, p0, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->mStyleResID:I

    .line 18
    return-void
.end method


# virtual methods
.method public getCJKCandidatesListView()Lcom/nuance/swype/input/chinese/CJKCandidatesListView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    return-object v0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-nez v0, :cond_0

    .line 28
    sget v0, Lcom/nuance/swype/input/R$id;->cjk_candidates:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget v1, p0, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->mStyleResID:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->readStyles(I)V

    .line 30
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->init()V

    .line 32
    :cond_0
    return-void
.end method

.method public setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V
    .locals 0
    .param p1, "aWordSelectedListener"    # Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;
    .param p2, "aStyleResID"    # I

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->mWordSelectedListener:Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    .line 23
    iput p2, p0, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->mStyleResID:I

    .line 24
    return-void
.end method
