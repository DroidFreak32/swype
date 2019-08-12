.class public Lcom/nuance/swype/widget/CurrentPageIndicator;
.super Landroid/widget/LinearLayout;
.source "CurrentPageIndicator.java"


# instance fields
.field private context:Landroid/content/Context;

.field private currentPage:I

.field private currentPageDrawable:Landroid/graphics/drawable/Drawable;

.field private drawablePadding:I

.field private mode:I

.field private otherPageDrawable:Landroid/graphics/drawable/Drawable;

.field private totalPages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->mode:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->mode:I

    .line 35
    iput-object p1, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->context:Landroid/content/Context;

    .line 36
    sget v0, Lcom/nuance/swype/input/R$attr;->currentPageIndicatorStyle:I

    invoke-direct {p0, p2, p1, v0}, Lcom/nuance/swype/widget/CurrentPageIndicator;->loadAttributes(Landroid/util/AttributeSet;Landroid/content/Context;I)V

    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/widget/CurrentPageIndicator;->makeView()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->mode:I

    .line 45
    iput-object p1, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->context:Landroid/content/Context;

    .line 46
    invoke-direct {p0, p2, p1, p3}, Lcom/nuance/swype/widget/CurrentPageIndicator;->loadAttributes(Landroid/util/AttributeSet;Landroid/content/Context;I)V

    .line 48
    invoke-direct {p0}, Lcom/nuance/swype/widget/CurrentPageIndicator;->makeView()V

    .line 49
    return-void
.end method

.method private loadAttributes(Landroid/util/AttributeSet;Landroid/content/Context;I)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 70
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 72
    .local v7, "theme":Landroid/content/res/Resources$Theme;
    sget-object v8, Lcom/nuance/swype/input/R$styleable;->CurrentPageIndicatorAppearance:[I

    invoke-virtual {v7, p1, v8, p3, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 75
    .local v1, "appearance":Landroid/content/res/TypedArray;
    sget v8, Lcom/nuance/swype/input/R$styleable;->CurrentPageIndicatorAppearance_indicatorAppearance:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 76
    .local v4, "ia":I
    if-eq v4, v10, :cond_0

    .line 77
    sget-object v8, Lcom/nuance/swype/input/R$styleable;->IndicatorAppearance:[I

    invoke-virtual {v7, v4, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 79
    :cond_0
    if-eqz v1, :cond_5

    .line 80
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    .line 81
    .local v6, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_4

    .line 82
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 83
    .local v5, "index":I
    sget v8, Lcom/nuance/swype/input/R$styleable;->IndicatorAppearance_android_gravity:I

    if-eq v5, v8, :cond_1

    .line 84
    sget v8, Lcom/nuance/swype/input/R$styleable;->IndicatorAppearance_android_layout_margin:I

    if-eq v5, v8, :cond_1

    .line 85
    sget v8, Lcom/nuance/swype/input/R$styleable;->IndicatorAppearance_currentPageDrawable:I

    if-ne v5, v8, :cond_2

    .line 86
    sget v8, Lcom/nuance/swype/input/R$styleable;->IndicatorAppearance_currentPageDrawable:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->currentPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_2
    sget v8, Lcom/nuance/swype/input/R$styleable;->IndicatorAppearance_otherPageDrawable:I

    if-ne v5, v8, :cond_3

    .line 88
    sget v8, Lcom/nuance/swype/input/R$styleable;->IndicatorAppearance_otherPageDrawable:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->otherPageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 89
    :cond_3
    sget v8, Lcom/nuance/swype/input/R$styleable;->IndicatorAppearance_drawablePadding:I

    goto :goto_1

    .line 92
    .end local v5    # "index":I
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    .end local v3    # "i":I
    .end local v6    # "n":I
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    sget-object v8, Lcom/nuance/swype/input/R$styleable;->CurrentPageIndicator:[I

    invoke-virtual {v7, p1, v8, p3, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    .line 98
    .restart local v6    # "n":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v6, :cond_b

    .line 99
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 100
    .local v2, "attr":I
    sget v8, Lcom/nuance/swype/input/R$styleable;->CurrentPageIndicator_currentPage:I

    if-ne v2, v8, :cond_7

    .line 101
    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->currentPage:I

    .line 98
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 102
    :cond_7
    sget v8, Lcom/nuance/swype/input/R$styleable;->CurrentPageIndicator_totalPages:I

    if-ne v2, v8, :cond_8

    .line 103
    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->totalPages:I

    goto :goto_3

    .line 104
    :cond_8
    sget v8, Lcom/nuance/swype/input/R$styleable;->CurrentPageIndicator_currentPageDrawable:I

    if-ne v2, v8, :cond_9

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->currentPageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 106
    :cond_9
    sget v8, Lcom/nuance/swype/input/R$styleable;->CurrentPageIndicator_otherPageDrawable:I

    if-ne v2, v8, :cond_a

    .line 107
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->otherPageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 108
    :cond_a
    sget v8, Lcom/nuance/swype/input/R$styleable;->CurrentPageIndicator_drawablePadding:I

    if-ne v2, v8, :cond_6

    .line 109
    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->drawablePadding:I

    goto :goto_3

    .line 113
    .end local v2    # "attr":I
    :cond_b
    iget-object v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->currentPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->otherPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_c

    .line 114
    const/4 v8, 0x1

    iput v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->mode:I

    .line 117
    :cond_c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    iget v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->currentPage:I

    if-lez v8, :cond_d

    iget v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->totalPages:I

    if-lez v8, :cond_d

    iget v8, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->currentPage:I

    iget v9, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->totalPages:I

    if-le v8, v9, :cond_e

    .line 120
    :cond_d
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 122
    :cond_e
    return-void
.end method

.method private makeView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 52
    iget v4, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->mode:I

    if-ne v4, v8, :cond_1

    .line 53
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->totalPages:I

    if-gt v0, v4, :cond_2

    .line 54
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    .local v3, "view":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/nuance/swype/widget/CurrentPageIndicator;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 56
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->drawablePadding:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 57
    iget v4, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->drawablePadding:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 58
    iget v4, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->currentPage:I

    if-ne v0, v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->currentPageDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/nuance/swype/widget/CurrentPageIndicator;->addView(Landroid/view/View;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->otherPageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 63
    .end local v0    # "i":I
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "view":Landroid/widget/ImageView;
    :cond_1
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    .local v2, "t":Landroid/widget/TextView;
    const-string v4, "(%1$s of %2$s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->currentPage:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget v6, p0, Lcom/nuance/swype/widget/CurrentPageIndicator;->totalPages:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/nuance/swype/widget/CurrentPageIndicator;->addView(Landroid/view/View;)V

    .line 67
    .end local v2    # "t":Landroid/widget/TextView;
    :cond_2
    return-void
.end method
