.class public Lcom/nuance/swype/view/TintDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TintDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/view/TintDrawable$TintState;,
        Lcom/nuance/swype/view/TintDrawable$FilterInfo;
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field protected colors:Landroid/content/res/ColorStateList;

.field filterInfo:Lcom/nuance/swype/view/TintDrawable$FilterInfo;

.field private isMutated:Z

.field protected mode:Landroid/graphics/PorterDuff$Mode;

.field protected state:Lcom/nuance/swype/view/TintDrawable$TintState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "TintDrawable"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/TintDrawable;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0}, Lcom/nuance/swype/view/TintDrawable;-><init>(Lcom/nuance/swype/view/TintDrawable$TintState;Landroid/content/res/Resources;)V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Drawable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iput-object p1, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 39
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Lcom/nuance/swype/view/TintDrawable$TintState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Lcom/nuance/swype/view/TintDrawable$TintState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 288
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 80
    new-instance v0, Lcom/nuance/swype/view/TintDrawable$FilterInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nuance/swype/view/TintDrawable$FilterInfo;-><init>(Lcom/nuance/swype/view/TintDrawable$1;)V

    iput-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->filterInfo:Lcom/nuance/swype/view/TintDrawable$FilterInfo;

    .line 289
    new-instance v0, Lcom/nuance/swype/view/TintDrawable$TintState;

    invoke-direct {v0, p1, p0, p2}, Lcom/nuance/swype/view/TintDrawable$TintState;-><init>(Lcom/nuance/swype/view/TintDrawable$TintState;Lcom/nuance/swype/view/TintDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    .line 290
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/view/TintDrawable$TintState;Landroid/content/res/Resources;Lcom/nuance/swype/view/TintDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/view/TintDrawable$TintState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Lcom/nuance/swype/view/TintDrawable$1;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/view/TintDrawable;-><init>(Lcom/nuance/swype/view/TintDrawable$TintState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected applyTint()Z
    .locals 5

    .prologue
    .line 86
    iget-object v2, p0, Lcom/nuance/swype/view/TintDrawable;->colors:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/nuance/swype/view/TintDrawable;->colors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawable;->getState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 89
    .local v1, "color":I
    iget-object v2, p0, Lcom/nuance/swype/view/TintDrawable;->filterInfo:Lcom/nuance/swype/view/TintDrawable$FilterInfo;

    iget-object v3, p0, Lcom/nuance/swype/view/TintDrawable;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Lcom/nuance/swype/view/TintDrawable$FilterInfo;->update(ILandroid/graphics/PorterDuff$Mode;)Z

    move-result v0

    .line 94
    .end local v1    # "color":I
    .local v0, "changed":Z
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v2, v2, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/view/TintDrawable;->filterInfo:Lcom/nuance/swype/view/TintDrawable$FilterInfo;

    invoke-virtual {v3}, Lcom/nuance/swype/view/TintDrawable$FilterInfo;->getFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 95
    return v0

    .line 91
    .end local v0    # "changed":Z
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/view/TintDrawable;->filterInfo:Lcom/nuance/swype/view/TintDrawable$FilterInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/view/TintDrawable$FilterInfo;->reset()Z

    move-result v0

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget v1, v1, Lcom/nuance/swype/view/TintDrawable$TintState;->changingConfigurationsMask:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v1, v1, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    invoke-virtual {v0}, Lcom/nuance/swype/view/TintDrawable$TintState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->changingConfigurationsMask:I

    .line 224
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getWrappedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 110
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->colors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->colors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/nuance/swype/view/TintDrawable;->isMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/view/TintDrawable;->isMutated:Z

    .line 235
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 208
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 200
    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/view/TintDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 201
    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawable;->invalidateSelf()V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 7
    .param p1, "state"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    sget-object v4, Lcom/nuance/swype/view/TintDrawable;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "onStateChange(): "

    aput-object v6, v5, v2

    aput-object p1, v5, v3

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "drawableChanged":Z
    iget-object v4, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v4, v4, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v4, v4, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawable;->applyTint()Z

    move-result v1

    .line 193
    .local v1, "filterChanged":Z
    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/view/TintDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 194
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 122
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 125
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 164
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 105
    return-void
.end method

.method public setTintParams(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nuance/swype/view/TintDrawable;->colors:Landroid/content/res/ColorStateList;

    .line 49
    iput-object p2, p0, Lcom/nuance/swype/view/TintDrawable;->mode:Landroid/graphics/PorterDuff$Mode;

    .line 50
    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawable;->applyTint()Z

    .line 51
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable;->state:Lcom/nuance/swype/view/TintDrawable$TintState;

    iget-object v0, v0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 158
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/nuance/swype/view/TintDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 129
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void
.end method
