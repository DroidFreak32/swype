.class public final Landroid/support/v7/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Landroid/support/v7/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Landroid/support/v7/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final getMaxActionButtons()I
    .registers 10

    .prologue
    const/16 v8, 0x3c0

    const/16 v7, 0x2d0

    const/16 v6, 0x280

    const/16 v5, 0x258

    const/16 v4, 0x1e0

    .line 54
    iget-object v3, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v2

    .line 56
    .local v2, "widthDp":I
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    .line 57
    .local v0, "heightDp":I
    invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v3

    .line 59
    if-gt v3, v5, :cond_28

    if-gt v2, v5, :cond_28

    if-le v2, v8, :cond_24

    if-gt v0, v7, :cond_28

    :cond_24
    if-le v2, v7, :cond_2a

    if-le v0, v8, :cond_2a

    .line 62
    :cond_28
    const/4 v3, 0x5

    .line 71
    :goto_29
    return v3

    .line 63
    :cond_2a
    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_36

    if-le v2, v6, :cond_32

    if-gt v0, v4, :cond_36

    :cond_32
    if-le v2, v4, :cond_38

    if-le v0, v6, :cond_38

    .line 66
    :cond_36
    const/4 v3, 0x4

    goto :goto_29

    .line 67
    :cond_38
    const/16 v3, 0x168

    if-lt v2, v3, :cond_3e

    .line 69
    const/4 v3, 0x3

    goto :goto_29

    .line 71
    :cond_3e
    const/4 v3, 0x2

    goto :goto_29
.end method

.method public final getStackedTabMaxWidth()I
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public final getTabContainerHeight()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 92
    iget-object v3, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 95
    .local v1, "height":I
    iget-object v3, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1088
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v3, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_embed_tabs:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 96
    if-nez v3, :cond_30

    .line 98
    sget v3, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I

    .line 99
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 98
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 101
    :cond_30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    return v1
.end method
