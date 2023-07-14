.class public Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "DirectionalRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/nuance/swype/widget/directional/DirectionalRelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/16 v3, 0x14

    const/16 v7, 0x13

    const/16 v6, 0x12

    const/16 v5, 0x11

    const/16 v4, 0x10

    .line 26
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 30
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 31
    .local v1, "rules":[I
    array-length v2, v1

    if-le v2, v3, :cond_0

    aget v2, v1, v3

    if-eqz v2, :cond_0

    .line 32
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 34
    :cond_0
    array-length v2, v1

    const/16 v3, 0x15

    if-le v2, v3, :cond_1

    const/16 v2, 0x15

    aget v2, v1, v2

    if-eqz v2, :cond_1

    .line 35
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 37
    :cond_1
    array-length v2, v1

    if-le v2, v6, :cond_2

    aget v2, v1, v6

    if-eqz v2, :cond_2

    .line 38
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 40
    :cond_2
    array-length v2, v1

    if-le v2, v7, :cond_3

    aget v2, v1, v7

    if-eqz v2, :cond_3

    .line 41
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 43
    :cond_3
    array-length v2, v1

    if-le v2, v4, :cond_4

    aget v2, v1, v4

    if-eqz v2, :cond_4

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 46
    :cond_4
    array-length v2, v1

    if-le v2, v5, :cond_5

    aget v2, v1, v5

    if-eqz v2, :cond_5

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 49
    :cond_5
    return-object v0
.end method
