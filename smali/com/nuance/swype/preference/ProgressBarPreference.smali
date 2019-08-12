.class public Lcom/nuance/swype/preference/ProgressBarPreference;
.super Landroid/preference/Preference;
.source "ProgressBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;
    }
.end annotation


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private cancel:Landroid/widget/ImageButton;

.field private cancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

.field private lastReqMax:I

.field private lastReqProgress:I

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqProgress:I

    .line 77
    iput v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqMax:I

    .line 31
    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ProgressBarPreference;->init(Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqProgress:I

    .line 77
    iput v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqMax:I

    .line 36
    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ProgressBarPreference;->init(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/preference/ProgressBarPreference;)Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/preference/ProgressBarPreference;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    return-object v0
.end method

.method private static createProgressBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ProgressBar;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    new-instance v6, Landroid/widget/ProgressBar;

    const v8, 0x103001f

    invoke-direct {v6, p0, p1, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    .local v6, "progBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 49
    .local v7, "res":Landroid/content/res/Resources;
    sget v8, Lcom/nuance/swype/input/R$drawable;->progress_indeterminate_horizontal:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 53
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    instance-of v8, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_2

    move-object v0, v2

    .line 54
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 55
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v3, 0x0

    .local v3, "iFrame":I
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 56
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 57
    .local v5, "ld":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    .local v4, "iLayer":I
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 58
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    .local v1, "bd":Landroid/graphics/drawable/Drawable;
    instance-of v8, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_0

    move-object v8, v1

    .line 61
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 62
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "bd":Landroid/graphics/drawable/Drawable;
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 57
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "iFrame":I
    .end local v4    # "iLayer":I
    .end local v5    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 70
    sget v8, Lcom/nuance/swype/input/R$drawable;->progress_bar:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-object v6
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->attrs:Landroid/util/AttributeSet;

    .line 41
    invoke-virtual {p0}, Lcom/nuance/swype/preference/ProgressBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nuance/swype/preference/ProgressBarPreference;->createProgressBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 42
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 86
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 87
    .local v2, "oldContainer":Landroid/view/ViewParent;
    const v5, 0x1020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 88
    .local v4, "summary":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 90
    .local v1, "newContainer":Landroid/view/ViewGroup;
    if-eq v2, v1, :cond_2

    .line 94
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/nuance/swype/preference/ProgressBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->attrs:Landroid/util/AttributeSet;

    invoke-static {v5, v6}, Lcom/nuance/swype/preference/ProgressBarPreference;->createProgressBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ProgressBar;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 98
    :cond_0
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    .line 99
    iget-object v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    if-eqz v5, :cond_1

    .line 100
    iget-object v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 101
    iget-object v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    sget v6, Lcom/nuance/swype/input/R$drawable;->btn_cancel:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 102
    iget-object v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    const/16 v6, 0x3e7

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setId(I)V

    .line 103
    iget-object v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    new-instance v6, Lcom/nuance/swype/preference/ProgressBarPreference$1;

    invoke-direct {v6, p0}, Lcom/nuance/swype/preference/ProgressBarPreference$1;-><init>(Lcom/nuance/swype/preference/ProgressBarPreference;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .local v0, "cancelParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    const/4 v5, -0x2

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 115
    const/4 v5, -0x2

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 116
    iget-object v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .end local v0    # "cancelParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 120
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, -0x1

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 121
    invoke-virtual {p0}, Lcom/nuance/swype/preference/ProgressBarPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->progress_bar_preference_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 123
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    iget-object v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "newContainer":Landroid/view/ViewGroup;
    .end local v2    # "oldContainer":Landroid/view/ViewParent;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "summary":Landroid/view/View;
    :cond_2
    :goto_0
    iget v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqProgress:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/preference/ProgressBarPreference;->setProgress(I)V

    iget v5, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqMax:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/preference/ProgressBarPreference;->setMax(I)V

    .line 132
    return-void

    .line 128
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public final setCancelListener(Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    .line 162
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    new-instance v1, Lcom/nuance/swype/preference/ProgressBarPreference$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/preference/ProgressBarPreference$2;-><init>(Lcom/nuance/swype/preference/ProgressBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_0
    return-void
.end method

.method public final setMax(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 152
    .local v0, "savedprogress":I
    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 153
    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 154
    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 156
    .end local v0    # "savedprogress":I
    :cond_0
    iput p1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqMax:I

    .line 157
    return-void
.end method

.method public final setProgress(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 141
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 146
    :cond_1
    iput p1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqProgress:I

    .line 147
    return-void
.end method
