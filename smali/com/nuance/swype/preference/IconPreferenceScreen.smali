.class public Lcom/nuance/swype/preference/IconPreferenceScreen;
.super Lcom/nuance/swype/preference/ClassActionPreference;
.source "IconPreferenceScreen.java"


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
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/preference/IconPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/preference/ClassActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object p1, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->ctx:Landroid/content/Context;

    .line 47
    sget-object v1, Lcom/nuance/swype/input/R$styleable;->IconPreferenceScreen:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/nuance/swype/input/R$styleable;->IconPreferenceScreen_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method

.method public static createPreferenceWithIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/preference/Preference;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 30
    new-instance v0, Lcom/nuance/swype/preference/IconPreferenceScreen;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/nuance/swype/preference/IconPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    .local v0, "iconPref":Lcom/nuance/swype/preference/IconPreferenceScreen;
    invoke-virtual {v0, p1}, Lcom/nuance/swype/preference/IconPreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .end local v0    # "iconPref":Lcom/nuance/swype/preference/IconPreferenceScreen;
    :goto_0
    return-object v0

    .line 34
    :cond_0
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    .local v1, "pref":Landroid/preference/Preference;
    invoke-static {v1, p1}, Lcom/nuance/android/compat/PreferenceCompat;->setIcon(Landroid/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 36
    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/nuance/swype/preference/ClassActionPreference;->onBindView(Landroid/view/View;)V

    .line 69
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, -0x2

    .line 56
    invoke-super {p0, p1}, Lcom/nuance/swype/preference/ClassActionPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 57
    .local v1, "v":Landroid/view/ViewGroup;
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 58
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->ctx:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const/4 v2, 0x0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iput-object v1, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->view:Landroid/view/View;

    .line 63
    .end local v0    # "image":Landroid/widget/ImageView;
    :cond_0
    return-object v1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    .line 78
    iget-object v1, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->view:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/nuance/swype/preference/IconPreferenceScreen;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
