.class public Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;
.super Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;
.source "JapaneseWordListViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mShowLeftArrow:Z

    .line 27
    return-void
.end method


# virtual methods
.method public clearPhraseListView()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->clear()V

    .line 55
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mShowLeftArrow:Z

    .line 56
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->requestLayout()V

    .line 57
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/nuance/swype/input/chinese/CJKWordListViewContainer;->initViews()V

    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseLayout:Landroid/view/View;

    if-nez v0, :cond_1

    .line 33
    sget v0, Lcom/nuance/swype/input/R$id;->phrase_layout_window:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseLayout:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseLayout:Landroid/view/View;

    sget v1, Lcom/nuance/swype/input/R$id;->phrase_candidate_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    :cond_0
    sget v0, Lcom/nuance/swype/input/R$id;->phrase_candidate_right:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollNext()V

    .line 78
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->scrollPrev()V

    goto :goto_0
.end method

.method public updateScrollArrowVisibility()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->isShowingSwypeTooltip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mCJKCandidates:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    iget-boolean v1, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mShowLeftArrow:Z

    iget-object v2, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonLeft:Landroid/view/View;

    iget-object v3, p0, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->mPhraseButtonRight:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->updateScrollArrowVisibility(Lcom/nuance/swype/input/chinese/CJKCandidatesListView;ZLandroid/view/View;Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordListViewContainer;->invalidate()V

    .line 65
    :cond_0
    return-void
.end method
