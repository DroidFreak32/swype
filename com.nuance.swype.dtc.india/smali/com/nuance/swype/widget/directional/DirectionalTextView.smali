.class public Lcom/nuance/swype/widget/directional/DirectionalTextView;
.super Landroid/widget/TextView;
.source "DirectionalTextView.java"

# interfaces
.implements Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;


# static fields
.field private static drawable_end:I

.field private static drawable_start:I


# instance fields
.field private drawableEnd:Landroid/graphics/drawable/Drawable;

.field private drawableStart:Landroid/graphics/drawable/Drawable;

.field private drawable_attr:[I

.field private showingRtl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const v0, 0x1010392

    sput v0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_start:I

    .line 13
    const v0, 0x1010393

    sput v0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_end:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_start:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_end:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_attr:[I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_start:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_end:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_attr:[I

    .line 31
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/widget/directional/DirectionalTextView;->directionalInit(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_start:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_end:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_attr:[I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/widget/directional/DirectionalTextView;->directionalInit(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private directionalInit(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawable_attr:[I

    invoke-virtual {v1, p2, v2, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawableStart:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object v1, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawableEnd:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v1, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->drawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method


# virtual methods
.method public final baseCreateDrawableState(I)[I
    .locals 1
    .param p1, "extraSpace"    # I

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1
    .param p1, "extraSpace"    # I

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->showingRtl:Z

    invoke-static {p0, p1, v0}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->onCreateDrawableState(Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 1065
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v0

    .line 1066
    iget-boolean v1, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->showingRtl:Z

    if-eq v0, v1, :cond_0

    .line 1069
    iput-boolean v0, p0, Lcom/nuance/swype/widget/directional/DirectionalTextView;->showingRtl:Z

    .line 1070
    invoke-virtual {p0}, Lcom/nuance/swype/widget/directional/DirectionalTextView;->refreshDrawableState()V

    .line 48
    :cond_0
    return-void
.end method
