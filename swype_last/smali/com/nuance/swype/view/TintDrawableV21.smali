.class public Lcom/nuance/swype/view/TintDrawableV21;
.super Lcom/nuance/swype/view/TintDrawable;
.source "TintDrawableV21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/nuance/swype/view/TintDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected applyTint()Z
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawableV21;->colors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/view/TintDrawableV21;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawableV21;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/view/TintDrawableV21;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 25
    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawableV21;->invalidateSelf()V

    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawableV21;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method protected onStateChange([I)Z
    .registers 4
    .param p1, "state"    # [I

    .prologue
    .line 32
    iget-object v1, p0, Lcom/nuance/swype/view/TintDrawableV21;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v1, v1, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 34
    .local v0, "drawableChanged":Z
    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawableV21;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/view/TintDrawableV21;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 35
    return v0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawableV21;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawableV21;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 46
    return-void
.end method
