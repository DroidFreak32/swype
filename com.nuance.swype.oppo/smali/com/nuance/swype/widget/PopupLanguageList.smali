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
.field private inflater:Landroid/view/LayoutInflater;

.field private final languageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

.field private final moreLanguages:Landroid/widget/TextView;

.field private originalDelegate:Landroid/view/TouchDelegate;

.field private final outLocation:[I

.field private parentView:Landroid/view/View;

.field private final themeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/lang/String;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 76
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    .line 73
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->outLocation:[I

    .line 79
    iput-object p1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->inflater:Landroid/view/LayoutInflater;

    .line 80
    iput-object p2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->themeId:Ljava/lang/String;

    .line 83
    sget v1, Lcom/nuance/swype/input/R$layout;->popup_language_list:I

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    .local v0, "view":Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/widget/PopupLanguageList;->setContentView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    sget v1, Lcom/nuance/swype/input/R$id;->more_languages:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/nuance/swype/widget/PopupLanguageList;->setPopupColorText(Landroid/widget/TextView;)V

    .line 94
    invoke-virtual {p0, v2, v2}, Lcom/nuance/swype/widget/PopupLanguageList;->setWindowLayoutMode(II)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/nuance/swype/widget/PopupLanguageList;->setWidth(I)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/nuance/swype/widget/PopupLanguageList;->setHeight(I)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/nuance/swype/widget/PopupLanguageList;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/widget/PopupLanguageList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/widget/PopupLanguageList;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    return-object v0
.end method

.method private detach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    iget-object v1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->originalDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 176
    iput-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    .line 177
    iput-object v2, p0, Lcom/nuance/swype/widget/PopupLanguageList;->originalDelegate:Landroid/view/TouchDelegate;

    .line 179
    :cond_0
    return-void
.end method

.method private distanceToView(Landroid/view/MotionEvent;Landroid/view/View;)I
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->outLocation:[I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 230
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

    .line 231
    .local v0, "distance":I
    if-gez v0, :cond_0

    .line 232
    neg-int v0, v0

    .line 234
    :cond_0
    return v0
.end method

.method private static setPopupColorText(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$color;->color_popup_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 185
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 113
    invoke-direct {p0}, Lcom/nuance/swype/widget/PopupLanguageList;->detach()V

    .line 114
    return-void
.end method

.method public final hasTheme(Ljava/lang/String;)Z
    .locals 1
    .param p1, "themeId"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->themeId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final onHardKeyUp$4765ad2(I)Z
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 239
    const/4 v0, -0x1

    .line 240
    .local v0, "focusedItem":I
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 241
    .local v2, "lanCount":I
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 243
    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 247
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/16 v4, 0x13

    if-ne p1, v4, :cond_5

    .line 253
    if-ne v0, v5, :cond_3

    .line 254
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    .line 255
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setPressed(Z)V

    .line 294
    :cond_2
    :goto_1
    return v6

    .line 257
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 258
    add-int/lit8 v0, v0, -0x1

    .line 259
    if-ltz v0, :cond_4

    .line 260
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 262
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_1

    .line 265
    :cond_5
    const/16 v4, 0x14

    if-ne p1, v4, :cond_8

    .line 266
    if-ne v0, v5, :cond_6

    .line 267
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    .line 268
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_1

    .line 270
    :cond_6
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    .line 272
    if-ge v0, v2, :cond_7

    .line 273
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 275
    :cond_7
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_1

    .line 278
    :cond_8
    const/16 v4, 0x42

    if-eq p1, v4, :cond_9

    const/16 v4, 0x3e

    if-ne p1, v4, :cond_2

    .line 280
    :cond_9
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    if-eqz v4, :cond_a

    .line 281
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 282
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    invoke-interface {v4}, Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;->onMoreLanguages()V

    .line 292
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/nuance/swype/widget/PopupLanguageList;->dismiss()V

    goto :goto_1

    .line 284
    :cond_b
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 285
    .local v3, "langView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 286
    iget-object v4, p0, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;->onHardLangSelected(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 192
    iget-object v5, p0, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    if-eqz v5, :cond_0

    .line 193
    iget-object v5, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    iget-object v5, p0, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    invoke-interface {v5}, Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;->onMoreLanguages()V

    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/widget/PopupLanguageList;->dismiss()V

    .line 223
    :goto_1
    return v7

    .line 196
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 197
    .local v3, "langView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    iget-object v5, p0, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;->onLanguageSelected(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "langView":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    .line 210
    .local v0, "closestView":Landroid/view/View;
    invoke-direct {p0, p2, v0}, Lcom/nuance/swype/widget/PopupLanguageList;->distanceToView(Landroid/view/MotionEvent;Landroid/view/View;)I

    move-result v4

    .line 211
    .local v4, "minDistance":I
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 212
    iget-object v5, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 213
    .restart local v3    # "langView":Landroid/view/View;
    invoke-direct {p0, p2, v3}, Lcom/nuance/swype/widget/PopupLanguageList;->distanceToView(Landroid/view/MotionEvent;Landroid/view/View;)I

    move-result v1

    .line 214
    .local v1, "distance":I
    if-ge v1, v4, :cond_4

    .line 215
    move-object v0, v3

    .line 216
    move v4, v1

    .line 218
    :cond_4
    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 221
    .end local v1    # "distance":I
    .end local v3    # "langView":Landroid/view/View;
    :cond_5
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1
.end method

.method public final setLanguages(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    const/4 v9, 0x1

    .line 118
    invoke-virtual {p0}, Lcom/nuance/swype/widget/PopupLanguageList;->getContentView()Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$id;->language_list:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 121
    .local v4, "languageList":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 122
    iget-object v6, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 130
    .local v5, "lastIndex":I
    move v0, v5

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 135
    .local v1, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v6, p0, Lcom/nuance/swype/widget/PopupLanguageList;->inflater:Landroid/view/LayoutInflater;

    sget v7, Lcom/nuance/swype/input/R$layout;->popup_language_list_item:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "languageItem":Landroid/view/View;
    sget v6, Lcom/nuance/swype/input/R$id;->language_label:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 137
    .local v3, "languageLabel":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {v3}, Lcom/nuance/swype/widget/PopupLanguageList;->setPopupColorText(Landroid/widget/TextView;)V

    .line 141
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 145
    iget-object v6, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 149
    .end local v1    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v2    # "languageItem":Landroid/view/View;
    .end local v3    # "languageLabel":Landroid/widget/TextView;
    :cond_0
    if-ltz v5, :cond_1

    .line 150
    iget-object v6, p0, Lcom/nuance/swype/widget/PopupLanguageList;->languageViews:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setPressed(Z)V

    .line 151
    iget-object v6, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setPressed(Z)V

    .line 155
    :goto_1
    return-void

    .line 153
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/widget/PopupLanguageList;->moreLanguages:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_1
.end method

.method public final setListener(Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->listener:Lcom/nuance/swype/widget/PopupLanguageList$PopupLanguageListener;

    .line 102
    return-void
.end method

.method public final showAtLocation(Landroid/view/View;III)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 107
    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/widget/PopupLanguageList;->detach()V

    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->originalDelegate:Landroid/view/TouchDelegate;

    iget-object v0, p0, Lcom/nuance/swype/widget/PopupLanguageList;->parentView:Landroid/view/View;

    new-instance v1, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;

    invoke-direct {v1, p0}, Lcom/nuance/swype/widget/PopupLanguageList$TouchRedirect;-><init>(Lcom/nuance/swype/widget/PopupLanguageList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 108
    return-void
.end method
