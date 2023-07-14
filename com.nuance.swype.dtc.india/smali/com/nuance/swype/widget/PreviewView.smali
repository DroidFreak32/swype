.class public Lcom/nuance/swype/widget/PreviewView;
.super Landroid/widget/FrameLayout;
.source "PreviewView.java"


# instance fields
.field imageView:Landroid/widget/ImageView;

.field private mEnabledForAccessibility:Z

.field textView:Lcom/nuance/swype/widget/SimpleTextView;


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
    .locals 2

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

    check-cast v0, Lcom/nuance/swype/widget/SimpleTextView;

    iput-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Lcom/nuance/swype/widget/SimpleTextView;

    .line 40
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Lcom/nuance/swype/widget/SimpleTextView;

    invoke-virtual {v0}, Lcom/nuance/swype/widget/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setEnableAccessibilitySupport(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/nuance/swype/widget/PreviewView;->mEnabledForAccessibility:Z

    .line 78
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 67
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->imageView:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Lcom/nuance/swype/widget/SimpleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/widget/SimpleTextView;->setVisibility(I)V

    .line 74
    return-void

    .line 70
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
    .line 56
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Lcom/nuance/swype/widget/SimpleTextView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/widget/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Lcom/nuance/swype/widget/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/widget/SimpleTextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Lcom/nuance/swype/widget/SimpleTextView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/widget/SimpleTextView;->setTextColor(I)V

    .line 49
    return-void
.end method

.method public setTextSizePixels(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Lcom/nuance/swype/widget/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/widget/SimpleTextView;->setTextSize(IF)V

    .line 45
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/swype/widget/PreviewView;->textView:Lcom/nuance/swype/widget/SimpleTextView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/widget/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 83
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/widget/PreviewView;->mEnabledForAccessibility:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->getInstance()Lcom/nuance/swype/input/accessibility/AccessibilityNotification;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/widget/PreviewView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/widget/PreviewView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/accessibility/AccessibilityNotification;->speak(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    return-void
.end method
