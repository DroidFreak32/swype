.class public Lcom/nuance/swype/input/WordCandidatesListView;
.super Lcom/nuance/swype/input/CandidatesListView;
.source "WordCandidatesListView.java"


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
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 27
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/nuance/swype/input/WordCandidatesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 28
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 30
    :goto_1f
    return v1

    :cond_20
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_1f
.end method

.method setColor(Landroid/graphics/Paint;I)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "color"    # I

    .prologue
    .line 36
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    return-void
.end method

.method setTypeface(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 41
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    return-void
.end method
