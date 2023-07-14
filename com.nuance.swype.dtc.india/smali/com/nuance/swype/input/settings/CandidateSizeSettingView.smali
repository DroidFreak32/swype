.class public Lcom/nuance/swype/input/settings/CandidateSizeSettingView;
.super Lcom/nuance/swype/input/WordCandidatesListView;
.source "CandidateSizeSettingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/WordCandidatesListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method public setDisplayText(Ljava/lang/String;)V
    .locals 2
    .param p1, "inString"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TAP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 18
    .local v0, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    new-instance v1, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-direct {v1, p1}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 19
    sget-object v1, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setSuggestions(Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)Lcom/nuance/input/swypecorelib/Candidates;

    .line 20
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setCandidateSize(F)V

    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    :cond_0
    return-void
.end method
