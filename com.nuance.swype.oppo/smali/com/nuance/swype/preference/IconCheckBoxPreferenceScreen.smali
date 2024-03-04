.class public Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;
.super Landroid/preference/CheckBoxPreference;
.source "IconCheckBoxPreferenceScreen.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget v0, Lcom/nuance/swype/input/R$layout;->checkbox_icon_preference:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->setLayoutResource(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-object p1, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->ctx:Landroid/content/Context;

    .line 49
    sget-object v1, Lcom/nuance/swype/input/R$styleable;->IconPreferenceScreen:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/nuance/swype/input/R$styleable;->IconPreferenceScreen_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 70
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, -0x2

    .line 57
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 58
    .local v1, "v":Landroid/view/ViewGroup;
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    const/4 v2, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iput-object v1, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->view:Landroid/view/View;

    .line 64
    .end local v0    # "image":Landroid/widget/ImageView;
    :cond_0
    return-object v1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v1, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->view:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/nuance/swype/preference/IconCheckBoxPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
