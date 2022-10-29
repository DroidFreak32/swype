.class public final Lcom/nuance/swype/widget/PopupLanguageList;
.super Landroid/widget/PopupWindow;
.source "PopupLanguageList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;,
        Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;
    }
.end annotation


# instance fields
.field public inflater:Landroid/view/LayoutInflater;

.field public final languageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

.field public final moreLanguages:Landroid/widget/TextView;

.field private originalDelegate:Landroid/view/TouchDelegate;

.field private final outLocation:[I

.field private parentView:Landroid/view/View;

.field private final themeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/lang/String;)V
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 80
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    .line 77
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->outLocation:[I

    .line 83
    iput-object p1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->inflater:Landroid/view/LayoutInflater;

    .line 84
    iput-object p2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->themeId:Ljava/lang/String;

    .line 88
    sget v2, Lcom/nuance/swype/input/R$layout;->popup_language_list:I

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 89
    .local v1, "view":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0, v1}, Lcom/nuance/swype/widget/PopupLanguageList;->setContentView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    sget v2, Lcom/nuance/swype/input/R$id;->more_languages:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/nuance/swype/widget/PopupLanguageList;->setPopupColorText(Landroid/widget/TextView;)V

    .line 98
    iget-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/nuance/swype/widget/PopupLanguageList;->setPopupBackground(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0, v3, v3}, Lcom/nuance/swype/widget/PopupLanguageList;->setWindowLayoutMode(II)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/nuance/swype/widget/PopupLanguageList;->setWidth(I)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/nuance/swype/widget/PopupLanguageList;->setHeight(I)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/nuance/swype/widget/PopupLanguageList;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->popup_language_list_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 106
    .local v0, "padding_in_px":I
    iget-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/widget/PopupLanguageList;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/widget/PopupLanguageList;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    return-object v0
.end method

.method private detach()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 194
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    iget-object v1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->originalDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 195
    iput-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    .line 196
    iput-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->originalDelegate:Landroid/view/TouchDelegate;

    .line 198
    :cond_10
    return-void
.end method

.method private distanceToView(Landroid/view/MotionEvent;Landroid/view/View;)I
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->outLocation:[I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->outLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 253
    .local v0, "distance":I
    if-gez v0, :cond_1b

    .line 254
    neg-int v0, v0

    .line 256
    :cond_1b
    return v0
.end method

.method public static setPopupBackground(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->btn_keyboard_popup_key:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 173
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 174
    return-void
.end method

.method public static setPopupColorText(Landroid/widget/TextView;)V
    .registers 3
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$color;->color_popup_text_menu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 204
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .registers 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 122
    invoke-direct {p0}, Lcom/nuance/swype/widget/PopupLanguageList;->detach()V

    .line 123
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 211
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v6, :cond_43

    .line 214
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    if-eqz v4, :cond_19

    .line 215
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 216
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    invoke-interface {v4}, Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;->onMoreLanguages()V

    .line 226
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/nuance/swype/widget/PopupLanguageList;->dismiss()V

    .line 245
    :goto_1c
    return v6

    .line 218
    :cond_1d
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 219
    .local v2, "langView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 220
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;->onLanguageSelected(Ljava/lang/String;)V

    goto :goto_19

    .line 231
    .end local v2    # "langView":Landroid/view/View;
    :cond_43
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    .line 232
    .local v0, "closestView":Landroid/view/View;
    invoke-direct {p0, p2, v0}, Lcom/nuance/swype/widget/PopupLanguageList;->distanceToView(Landroid/view/MotionEvent;Landroid/view/View;)I

    move-result v3

    .line 233
    .local v3, "minDistance":I
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 234
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 235
    .restart local v2    # "langView":Landroid/view/View;
    invoke-direct {p0, p2, v2}, Lcom/nuance/swype/widget/PopupLanguageList;->distanceToView(Landroid/view/MotionEvent;Landroid/view/View;)I

    move-result v1

    .line 236
    .local v1, "distance":I
    if-ge v1, v3, :cond_66

    .line 237
    move-object v0, v2

    .line 238
    move v3, v1

    .line 240
    :cond_66
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_52

    .line 243
    .end local v1    # "distance":I
    .end local v2    # "langView":Landroid/view/View;
    :cond_6a
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1c
.end method

.method public final showAtLocation(Landroid/view/View;III)V
    .registers 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1182
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1183
    invoke-direct {p0}, Lcom/nuance/swype/widget/PopupLanguageList;->detach()V

    .line 1186
    :cond_a
    iput-object p1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    .line 1187
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->originalDelegate:Landroid/view/TouchDelegate;

    .line 1188
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    new-instance v1, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;

    invoke-direct {v1, p0}, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;-><init>(Lcom/nuance/swype/widget/PopupLanguageList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 117
    return-void
.end method
