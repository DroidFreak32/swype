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

.field isCanConstantState:Z

.field isConstantStateChecked:Z

.field mirrorState:I

.field primaryDrawable:Landroid/graphics/drawable/Drawable;

.field shadowDrawable:Landroid/graphics/drawable/Drawable;

.field shadowProps:Lcom/nuance/swype/input/ShadowProps;

.field shadowType:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;


# direct methods
.method constructor <init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Lcom/nuance/swype/view/ShadowDrawable;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "orig"    # Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;
    .param p2, "owner"    # Lcom/nuance/swype/view/ShadowDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 528
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    .line 515
    sget-object v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->SHADOW_DYNAMIC:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowType:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    .line 529
    if-eqz p1, :cond_29

    .line 530
    iget-object v0, p1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p3, p2}, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->cloneDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/nuance/swype/view/ShadowDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 531
    iget-object v0, p1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p3, p2}, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->cloneDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/nuance/swype/view/ShadowDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    iget v0, p1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    iput v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    .line 533
    iget-object v0, p1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowType:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowType:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->isCanConstantState:Z

    iput-boolean v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->isConstantStateChecked:Z

    .line 537
    :cond_29
    return-void
.end method

.method private static cloneDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lcom/nuance/swype/view/ShadowDrawable;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "owner"    # Lcom/nuance/swype/view/ShadowDrawable;

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 524
    .local v0, "out":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 525
    return-object v0
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .registers 2

    .prologue
    .line 551
    iget v0, p0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->changingConfigurationsMask:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 541
    new-instance v0, Lcom/nuance/swype/view/ShadowDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/swype/view/ShadowDrawable;-><init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Landroid/content/res/Resources;B)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 546
    new-instance v0, Lcom/nuance/swype/view/ShadowDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nuance/swype/view/ShadowDrawable;-><init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Landroid/content/res/Resources;B)V

    return-object v0
.end method
