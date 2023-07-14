.class public Lcom/nuance/swype/util/drawable/ImageViewWrapper;
.super Landroid/widget/ImageView;
.source "ImageViewWrapper.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private wrapperHeight:I

.field private wrapperWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "ImageViewWrapper"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private changeDrawableState(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isDisplayed"    # Z

    .prologue
    .line 76
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 78
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 79
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .local v2, "z":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 80
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->changeDrawableState(Landroid/graphics/drawable/Drawable;Z)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "z":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getWrapperImageHeight()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->wrapperHeight:I

    return v0
.end method

.method public getWrapperImageWidth()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->wrapperWidth:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 41
    sget-object v0, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDetachedFromWindow"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 44
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 45
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    .local v0, "previousDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->changeDrawableState(Landroid/graphics/drawable/Drawable;Z)V

    .line 66
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->changeDrawableState(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public setWrapperImageHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->wrapperHeight:I

    .line 91
    return-void
.end method

.method public setWrapperImageWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->wrapperWidth:I

    .line 87
    return-void
.end method
