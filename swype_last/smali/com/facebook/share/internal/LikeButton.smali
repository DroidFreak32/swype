.class public Lcom/facebook/share/internal/LikeButton;
.super Lcom/facebook/FacebookButtonBase;
.source "LikeButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isLiked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 36
    const/4 v2, 0x0

    const-string/jumbo v5, "fb_like_button_create"

    const-string/jumbo v6, "fb_like_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 39
    return-void
.end method

.method private updateForLikeStatus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 70
    sget v0, Lcom/facebook/R$drawable;->com_facebook_button_like_icon_selected:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/facebook/share/internal/LikeButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 72
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->com_facebook_like_button_liked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeButton;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_19
    return-void

    .line 74
    :cond_1a
    sget v0, Lcom/facebook/R$drawable;->com_facebook_button_icon:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/facebook/share/internal/LikeButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/R$string;->com_facebook_like_button_not_liked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method


# virtual methods
.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeButton;->updateForLikeStatus()V

    .line 55
    return-void
.end method

.method protected getDefaultRequestCode()I
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultStyleResource()I
    .registers 2

    .prologue
    .line 64
    sget v0, Lcom/facebook/R$style;->com_facebook_button_like:I

    return v0
.end method

.method public setSelected(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->setSelected(Z)V

    .line 44
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeButton;->updateForLikeStatus()V

    .line 45
    return-void
.end method
