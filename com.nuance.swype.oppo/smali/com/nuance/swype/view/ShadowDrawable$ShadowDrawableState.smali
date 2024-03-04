.class final Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ShadowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/view/ShadowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShadowDrawableState"
.end annotation


# instance fields
.field changingConfigurationsMask:I

.field private isCanConstantState:Z

.field private isConstantStateChecked:Z

.field mirrorState:I

.field primaryDrawable:Landroid/graphics/drawable/Drawable;

.field shadowDrawable:Landroid/graphics/drawable/Drawable;

.field shadowProps:Lcom/nuance/swype/input/ShadowProps;

.field shadowType:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;


# direct methods
.method constructor <init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Lcom/nuance/swype/view/ShadowDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "orig"    # Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;
    .param p2, "owner"    # Lcom/nuance/swype/view/ShadowDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 556
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    .line 562
    sget-object v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->SHADOW_DYNAMIC:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowType:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    .line 576
    if-eqz p1, :cond_0

    .line 577
    iget-object v0, p1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p3, p2}, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->cloneDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/nuance/swype/view/ShadowDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 578
    iget-object v0, p1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p3, p2}, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->cloneDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/nuance/swype/view/ShadowDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 579
    iget v0, p1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    iput v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    .line 580
    iget-object v0, p1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowType:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowType:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->isCanConstantState:Z

    iput-boolean v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->isConstantStateChecked:Z

    .line 584
    :cond_0
    return-void
.end method

.method private static cloneDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/nuance/swype/view/ShadowDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "owner"    # Lcom/nuance/swype/view/ShadowDrawable;

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 571
    .local v0, "out":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 572
    return-object v0
.end method


# virtual methods
.method final canConstantState()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 602
    iget-boolean v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->isConstantStateChecked:Z

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->isCanConstantState:Z

    .line 604
    iput-boolean v1, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->isConstantStateChecked:Z

    .line 607
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->isCanConstantState:Z

    return v0

    .line 603
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChangingConfigurations()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->changingConfigurationsMask:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 588
    new-instance v0, Lcom/nuance/swype/view/ShadowDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/swype/view/ShadowDrawable;-><init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Landroid/content/res/Resources;B)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 593
    new-instance v0, Lcom/nuance/swype/view/ShadowDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nuance/swype/view/ShadowDrawable;-><init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Landroid/content/res/Resources;B)V

    return-object v0
.end method
