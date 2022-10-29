.class public Lcom/nuance/swype/input/EmojiCandidatesListView;
.super Lcom/nuance/swype/input/CandidatesListView;
.source "EmojiCandidatesListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/CandidatesListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method getMinCandidateWidth(Landroid/content/Context;)I
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method setColor(Landroid/graphics/Paint;I)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "color"    # I

    .prologue
    .line 33
    return-void
.end method

.method setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 38
    return-void
.end method

.method public updateCandidatesSize()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 41
    iget-object v1, p0, Lcom/nuance/swype/input/EmojiCandidatesListView;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_24

    .line 42
    invoke-virtual {p0}, Lcom/nuance/swype/input/EmojiCandidatesListView;->getCandidateSize()V

    .line 43
    invoke-virtual {p0}, Lcom/nuance/swype/input/EmojiCandidatesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$fraction;->ecl_scale_factor:I

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 44
    .local v0, "scaleFactor":F
    iget-object v1, p0, Lcom/nuance/swype/input/EmojiCandidatesListView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nuance/swype/input/EmojiCandidatesListView;->mTextSize:I

    iget v3, p0, Lcom/nuance/swype/input/EmojiCandidatesListView;->mTextSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    .end local v0    # "scaleFactor":F
    :cond_24
    return-void
.end method
