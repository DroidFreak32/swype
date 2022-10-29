.class final Lcom/nuance/swype/view/TintDrawable$TintState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "TintDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/view/TintDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TintState"
.end annotation


# instance fields
.field changingConfigurationsMask:I

.field drawable:Landroid/graphics/drawable/Drawable;

.field private mCanConstantState:Z

.field private mCheckedConstantState:Z

.field useIntrinsicSizeAsMin:Z


# direct methods
.method constructor <init>(Lcom/nuance/swype/view/TintDrawable$TintState;Lcom/nuance/swype/view/TintDrawable;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "orig"    # Lcom/nuance/swype/view/TintDrawable$TintState;
    .param p2, "owner"    # Lcom/nuance/swype/view/TintDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 250
    if-eqz p1, :cond_21

    .line 251
    if-eqz p3, :cond_22

    .line 252
    iget-object v0, p1, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 257
    :goto_13
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 258
    iget-boolean v0, p1, Lcom/nuance/swype/view/TintDrawable$TintState;->useIntrinsicSizeAsMin:Z

    iput-boolean v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->useIntrinsicSizeAsMin:Z

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->mCanConstantState:Z

    iput-boolean v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->mCheckedConstantState:Z

    .line 261
    :cond_21
    return-void

    .line 254
    :cond_22
    iget-object v0, p1, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_13
.end method


# virtual methods
.method final canConstantState()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 279
    iget-boolean v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->mCheckedConstantState:Z

    if-nez v0, :cond_12

    .line 280
    iget-object v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->mCanConstantState:Z

    .line 281
    iput-boolean v1, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->mCheckedConstantState:Z

    .line 284
    :cond_12
    iget-boolean v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->mCanConstantState:Z

    return v0

    .line 280
    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final getChangingConfigurations()I
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lcom/nuance/swype/view/TintDrawable$TintState;->changingConfigurationsMask:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 265
    new-instance v0, Lcom/nuance/swype/view/TintDrawable;

    invoke-direct {v0, p0, v1, v1}, Lcom/nuance/swype/view/TintDrawable;-><init>(Lcom/nuance/swype/view/TintDrawable$TintState;Landroid/content/res/Resources;Lcom/nuance/swype/view/TintDrawable$1;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 270
    new-instance v0, Lcom/nuance/swype/view/TintDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nuance/swype/view/TintDrawable;-><init>(Lcom/nuance/swype/view/TintDrawable$TintState;Landroid/content/res/Resources;Lcom/nuance/swype/view/TintDrawable$1;)V

    return-object v0
.end method
