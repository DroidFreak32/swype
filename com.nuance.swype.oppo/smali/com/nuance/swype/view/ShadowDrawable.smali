.class public final Lcom/nuance/swype/view/ShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ShadowDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;,
        Lcom/nuance/swype/view/ShadowDrawable$ShadowType;
    }
.end annotation


# static fields
.field private static log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private isMutated:Z

.field private myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

.field private shadowEffect:Lcom/nuance/swype/input/ShadowEffect;

.field private shadowTransformMatrix:Landroid/graphics/Matrix;

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "ShadowDrawable"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/ShadowDrawable;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    invoke-direct {v0, v1, v1, v1}, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;-><init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Lcom/nuance/swype/view/ShadowDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Lcom/nuance/swype/input/ShadowProps;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "primaryDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "shadowProps"    # Lcom/nuance/swype/input/ShadowProps;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    invoke-direct {v0, v1, p0, p1}, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;-><init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Lcom/nuance/swype/view/ShadowDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iput-object p2, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iput-object v1, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iput-object p3, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    .line 111
    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    sget-object v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->SHADOW_DYNAMIC:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    iput-object v1, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowType:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    .line 120
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Lcom/nuance/swype/input/ShadowProps;B)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "primaryDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "shadowProps"    # Lcom/nuance/swype/input/ShadowProps;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/view/ShadowDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Lcom/nuance/swype/input/ShadowProps;)V

    .line 125
    return-void
.end method

.method private constructor <init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "orig"    # Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;-><init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Lcom/nuance/swype/view/ShadowDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Landroid/content/res/Resources;B)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;
    .param p2, "x2"    # Landroid/content/res/Resources;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/view/ShadowDrawable;-><init>(Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static addBackgroundShadow(Landroid/content/res/Resources;Landroid/view/View;Lcom/nuance/swype/input/ShadowProps;Z)V
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "props"    # Lcom/nuance/swype/input/ShadowProps;
    .param p3, "mirror"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 161
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nuance/swype/input/ShadowProps;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/nuance/swype/view/ShadowDrawable;

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Lcom/nuance/swype/view/ShadowDrawable;

    invoke-direct {v1, p0, v0, p2, v4}, Lcom/nuance/swype/view/ShadowDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Lcom/nuance/swype/input/ShadowProps;B)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    .end local v0    # "back":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p3, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v5, v1, Lcom/nuance/swype/view/ShadowDrawable;

    if-eqz v5, :cond_2

    check-cast v1, Lcom/nuance/swype/view/ShadowDrawable;

    iget-object v5, v1, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    if-eq v5, v2, :cond_4

    iget-object v5, v1, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iput v2, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    iget-object v5, v1, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    if-ne v2, v3, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v5, v4}, Lcom/nuance/swype/input/ShadowProps;->flipHor(Z)V

    invoke-virtual {v1}, Lcom/nuance/swype/view/ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/view/ShadowDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/nuance/swype/view/ShadowDrawable;->invalidateSelf()V

    :goto_1
    if-eqz v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 168
    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 313
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 314
    .local v0, "isMirrored":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/nuance/swype/view/ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 320
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->shadowTransformMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 322
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->shadowTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->shadowTransformMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_2

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    :goto_1
    if-eqz v0, :cond_3

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 340
    :cond_3
    return-void

    .line 313
    .end local v0    # "isMirrored":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    .restart local v0    # "isMirrored":Z
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->shadowEffect:Lcom/nuance/swype/input/ShadowEffect;

    if-eqz v1, :cond_6

    .line 332
    new-instance v1, Lcom/nuance/swype/input/ShadowEffect;

    iget-object v2, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/ShadowEffect;-><init>(Lcom/nuance/swype/input/ShadowProps;)V

    iput-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->shadowEffect:Lcom/nuance/swype/input/ShadowEffect;

    .line 334
    :cond_6
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->shadowEffect:Lcom/nuance/swype/input/ShadowEffect;

    iget-object v2, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v2}, Lcom/nuance/swype/input/ShadowEffect;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public final getChangingConfigurations()I
    .locals 3

    .prologue
    .line 344
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget v2, v2, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->changingConfigurationsMask:I

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int v0, v1, v2

    .line 347
    .local v0, "mask":I
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    .line 350
    :cond_0
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {p0}, Lcom/nuance/swype/view/ShadowDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->changingConfigurationsMask:I

    .line 526
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    .line 528
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIntrinsicHeight()I
    .locals 3

    .prologue
    .line 517
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetTop()F

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetBottom()F

    move-result v2

    add-float v0, v1, v2

    .line 519
    .local v0, "shadowHeight":F
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    float-to-int v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public final getIntrinsicWidth()I
    .locals 3

    .prologue
    .line 510
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetLeft()F

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetRight()F

    move-result v2

    add-float v0, v1, v2

    .line 512
    .local v0, "shadowWidth":F
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    float-to-int v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 392
    const/4 v0, -0x3

    return v0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 420
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 426
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetLeft()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 427
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetRight()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 428
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetTop()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 429
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetBottom()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 431
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    if-eqz v1, :cond_0

    .line 433
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 434
    .local v0, "oldLeft":I
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 435
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 439
    .end local v0    # "oldLeft":I
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 272
    sget-object v5, Lcom/nuance/swype/input/R$styleable;->ShadowDrawable:[I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/nuance/swype/input/R$styleable;->ShadowDrawable_primaryDrawable:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 275
    .local v2, "residPrimaryDrawable":I
    sget v5, Lcom/nuance/swype/input/R$styleable;->ShadowDrawable_shadowDrawable:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 277
    .local v3, "residShadowDrawable":I
    sget v5, Lcom/nuance/swype/input/R$styleable;->ShadowDrawable_shadowProps:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 278
    .local v4, "residShadowStyle":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 279
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 280
    .local v1, "props":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_0

    .line 281
    iget-object v5, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    new-instance v6, Lcom/nuance/swype/input/ShadowProps;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1}, Lcom/nuance/swype/input/ShadowProps;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    iput-object v6, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    .line 282
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 287
    .end local v1    # "props":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    sget v6, Lcom/nuance/swype/input/R$styleable;->ShadowDrawable_mirrorState:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->mirrorState:I

    .line 289
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 291
    if-eqz v2, :cond_3

    .line 292
    iget-object v5, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 293
    iget-object v5, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 294
    iget-object v5, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 299
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 300
    iget-object v5, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v5, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 302
    iget-object v5, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 306
    :cond_2
    return-void

    .line 297
    :cond_3
    sget-object v5, Lcom/nuance/swype/view/ShadowDrawable;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v6, "No primary drawable specified for <shadowed>"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/nuance/swype/view/ShadowDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 228
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    :cond_0
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->isMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->isMutated:Z

    .line 537
    :cond_0
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 477
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 480
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v7, v7, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v7}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetLeft()F

    move-result v7

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 481
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v7, v7, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v7}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetRight()F

    move-result v7

    sub-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 482
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v7, v7, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v7}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetTop()F

    move-result v7

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 483
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v7, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v7, v7, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v7}, Lcom/nuance/swype/input/ShadowProps;->getForegroundInsetBottom()F

    move-result v7

    sub-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 484
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v3, v3, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 487
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v3, v3, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowType:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    sget-object v4, Lcom/nuance/swype/view/ShadowDrawable$ShadowType;->SHADOW_DYNAMIC:Lcom/nuance/swype/view/ShadowDrawable$ShadowType;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v3, v3, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iput-object v6, v3, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 488
    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/nuance/swype/view/ShadowDrawable;->shadowTransformMatrix:Landroid/graphics/Matrix;

    .line 489
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v3, v3, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 490
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v4, v4, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v4}, Lcom/nuance/swype/input/ShadowProps;->getOffsetX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v5}, Lcom/nuance/swype/input/ShadowProps;->getOffsetY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v3, v4, v5}, Landroid/support/v4/app/ActivityCompatHoneycomb;->moveRectBy(Landroid/graphics/Rect;II)V

    .line 491
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v3, v3, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 493
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 494
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v3, v3, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    invoke-virtual {v3}, Lcom/nuance/swype/input/ShadowProps;->getScale()F

    move-result v0

    .line 495
    .local v0, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    .line 496
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->shadowTransformMatrix:Landroid/graphics/Matrix;

    .line 498
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v1, v3

    .line 499
    .local v1, "xCenter":F
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/nuance/swype/view/ShadowDrawable;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v2, v3

    .line 500
    .local v2, "yCenter":F
    iget-object v3, p0, Lcom/nuance/swype/view/ShadowDrawable;->shadowTransformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 505
    .end local v0    # "scale":F
    .end local v1    # "xCenter":F
    .end local v2    # "yCenter":F
    :cond_1
    return-void

    .line 487
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v8, v4, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowProps:Lcom/nuance/swype/input/ShadowProps;

    iget-object v4, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v4, v4, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v4, v4, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ne v9, v10, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ne v4, v9, :cond_5

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    :cond_3
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    instance-of v9, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_6

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_3
    invoke-virtual {v8}, Lcom/nuance/swype/input/ShadowProps;->getColor()I

    move-result v4

    invoke-virtual {v8}, Lcom/nuance/swype/input/ShadowProps;->getRadius()F

    move-result v7

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v5, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    int-to-float v7, v7

    invoke-direct {v4, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {v11, v9, v13, v13, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v6, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iput-object v3, v4, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_0

    :cond_4
    move-object v4, v6

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2

    :cond_6
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-virtual {v3, v5, v5, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v3, v4

    goto :goto_3
.end method

.method protected final onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 404
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 405
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/view/ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/view/ShadowDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 409
    return v0
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/nuance/swype/view/ShadowDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 237
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 240
    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 365
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 368
    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 379
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 382
    :cond_0
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 355
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->primaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 356
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/nuance/swype/view/ShadowDrawable;->myState:Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/nuance/swype/view/ShadowDrawable$ShadowDrawableState;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 359
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/nuance/swype/view/ShadowDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 246
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 249
    :cond_0
    return-void
.end method
