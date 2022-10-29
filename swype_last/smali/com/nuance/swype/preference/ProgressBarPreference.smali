.class public Lcom/nuance/swype/preference/ProgressBarPreference;
.super Landroid/preference/Preference;
.source "ProgressBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field public cancel:Landroid/widget/ImageButton;

.field public cancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

.field private lastReqMax:I

.field private lastReqProgress:I

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string/jumbo v0, "ProgressBarPreference"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/preference/ProgressBarPreference;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqProgress:I

    .line 74
    iput v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqMax:I

    .line 1033
    iput-object p2, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->attrs:Landroid/util/AttributeSet;

    .line 1034
    invoke-virtual {p0}, Lcom/nuance/swype/preference/ProgressBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/nuance/swype/preference/ProgressBarPreference;->createProgressBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/preference/ProgressBarPreference;)Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/preference/ProgressBarPreference;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    return-object v0
.end method

.method private static createProgressBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ProgressBar;
    .registers 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    new-instance v6, Landroid/widget/ProgressBar;

    const v8, 0x103001f

    invoke-direct {v6, p0, p1, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    .local v6, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 44
    .local v7, "res":Landroid/content/res/Resources;
    sget v8, Lcom/nuance/swype/input/R$drawable;->progress_indeterminate_horizontal:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 48
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    instance-of v8, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_47

    move-object v0, v2

    .line 49
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 50
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v3, 0x0

    .local v3, "iFrame":I
    :goto_1a
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v8

    if-ge v3, v8, :cond_47

    .line 51
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 52
    .local v5, "ld":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    .local v4, "iLayer":I
    :goto_27
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v8

    if-ge v4, v8, :cond_44

    .line 53
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 54
    .local v1, "bd":Landroid/graphics/drawable/Drawable;
    instance-of v8, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_41

    .line 56
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 57
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "bd":Landroid/graphics/drawable/Drawable;
    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 52
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 50
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 63
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "iFrame":I
    .end local v4    # "iLayer":I
    .end local v5    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_47
    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 67
    sget v8, Lcom/nuance/swype/input/R$drawable;->progress_bar:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-object v6
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 83
    :try_start_3
    iget-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 84
    .local v3, "oldContainer":Landroid/view/ViewParent;
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 85
    .local v5, "summary":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 87
    .local v2, "newContainer":Landroid/view/ViewGroup;
    if-eq v3, v2, :cond_9f

    .line 91
    if-eqz v3, :cond_26

    .line 92
    invoke-virtual {p0}, Lcom/nuance/swype/preference/ProgressBarPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->attrs:Landroid/util/AttributeSet;

    invoke-static {v6, v7}, Lcom/nuance/swype/preference/ProgressBarPreference;->createProgressBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ProgressBar;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 95
    :cond_26
    new-instance v6, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    .line 96
    iget-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancelListener:Lcom/nuance/swype/preference/ProgressBarPreference$OnCancelListener;

    if-eqz v6, :cond_71

    .line 97
    iget-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 98
    iget-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    sget v7, Lcom/nuance/swype/input/R$drawable;->icon_settings_cancel:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 99
    iget-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    const/16 v7, 0x3e7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setId(I)V

    .line 100
    iget-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    new-instance v7, Lcom/nuance/swype/preference/ProgressBarPreference$1;

    invoke-direct {v7, p0}, Lcom/nuance/swype/preference/ProgressBarPreference$1;-><init>(Lcom/nuance/swype/preference/ProgressBarPreference;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .local v0, "cancelParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    const/4 v6, -0x2

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 112
    const/4 v6, -0x2

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 113
    iget-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .end local v0    # "cancelParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_71
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    .local v4, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, -0x1

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 118
    invoke-virtual {p0}, Lcom/nuance/swype/preference/ProgressBarPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$dimen;->progress_bar_preference_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 120
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->cancel:Landroid/widget/ImageButton;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getId()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    iget-object v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9f} :catch_aa

    .line 1133
    .end local v2    # "newContainer":Landroid/view/ViewGroup;
    .end local v3    # "oldContainer":Landroid/view/ViewParent;
    .end local v4    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "summary":Landroid/view/View;
    :cond_9f
    :goto_9f
    iget v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqProgress:I

    invoke-virtual {p0, v6}, Lcom/nuance/swype/preference/ProgressBarPreference;->setProgress(I)V

    .line 1134
    iget v6, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqMax:I

    invoke-virtual {p0, v6}, Lcom/nuance/swype/preference/ProgressBarPreference;->setMax(I)V

    .line 130
    return-void

    .line 125
    :catch_aa
    move-exception v1

    .line 126
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v6, Lcom/nuance/swype/preference/ProgressBarPreference;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v7, "onBindView"

    invoke-interface {v6, v7, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_9f
.end method

.method public final setMax(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 148
    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1a

    .line 149
    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 150
    .local v0, "savedProgress":I
    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 151
    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 152
    iget-object v1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 154
    .end local v0    # "savedProgress":I
    :cond_1a
    iput p1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqMax:I

    .line 155
    return-void
.end method

.method public final setProgress(I)V
    .registers 4
    .param p1, "value"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_19

    .line 139
    if-lez p1, :cond_14

    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 140
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 142
    :cond_14
    iget-object v0, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 144
    :cond_19
    iput p1, p0, Lcom/nuance/swype/preference/ProgressBarPreference;->lastReqProgress:I

    .line 145
    return-void
.end method
