.class public Lcom/nuance/swype/widget/PreviewView;
.super Landroid/widget/FrameLayout;
.source "PreviewView.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/nuance/swype/widget/PreviewView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/nuance/swype/widget/PreviewView;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/nuance/swype/widget/PreviewView;->init()V

    .line 24
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/nuance/swype/widget/PreviewView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$layout;->preview_view:I

    invoke-static {v0, v1, p0}, Lcom/nuance/swype/widget/PreviewView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    sget v0, Lcom/nuance/swype/input/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/widget/PreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->imageView:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/nuance/swype/input/R$id;->text:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/widget/PreviewView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0}, Lcom/nuance/swype/widget/PreviewView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->use_software_render_in_preview_n_wcl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 66
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->imageView:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lcom/nuance/swype/widget/PreviewView;->invalidate()V

    .line 74
    return-void

    .line 69
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    invoke-virtual {p0}, Lcom/nuance/swype/widget/PreviewView;->invalidate()V

    .line 62
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    return-void
.end method

.method public setTextSizePixels(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    return-void
.end method
