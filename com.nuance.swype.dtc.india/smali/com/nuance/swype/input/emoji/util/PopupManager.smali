.class public Lcom/nuance/swype/input/emoji/util/PopupManager;
.super Ljava/lang/Object;
.source "PopupManager.java"


# instance fields
.field private host:Landroid/view/View;

.field private overlayView:Lcom/nuance/swype/view/OverlayView;

.field private final popups:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nuance/swype/input/emoji/util/PopupView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/swype/view/OverlayView;Landroid/view/View;)V
    .locals 1
    .param p1, "overlayView"    # Lcom/nuance/swype/view/OverlayView;
    .param p2, "host"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1033
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->popups:Ljava/util/HashSet;

    .line 22
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 23
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->host:Landroid/view/View;

    .line 24
    return-void
.end method

.method private track(Lcom/nuance/swype/input/emoji/util/PopupView;)Z
    .locals 1
    .param p1, "popupView"    # Lcom/nuance/swype/input/emoji/util/PopupView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->popups:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->popups:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private untrack(Lcom/nuance/swype/input/emoji/util/PopupView;)Z
    .locals 1
    .param p1, "popupView"    # Lcom/nuance/swype/input/emoji/util/PopupView;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->popups:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->popups:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPopup(Lcom/nuance/swype/input/emoji/util/PopupView;)Z
    .locals 1
    .param p1, "popupView"    # Lcom/nuance/swype/input/emoji/util/PopupView;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/util/PopupManager;->track(Lcom/nuance/swype/input/emoji/util/PopupView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/OverlayView;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/util/PopupView;->onAdded()V

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public confineContentToOverlay([IIII)V
    .locals 7
    .param p1, "pos"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "padding"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/util/PopupManager;->mapContentToOverlay([I)V

    .line 31
    aget v1, p1, v5

    .line 32
    .local v1, "x":I
    aget v2, p1, v6

    .line 33
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, v1, p2

    add-int v4, v2, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    .local v0, "rc":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 1120
    invoke-virtual {v3}, Lcom/nuance/swype/view/OverlayView;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v0, v3, p4}, Lcom/nuance/swype/util/GeomUtil;->confine(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    .line 35
    iget v3, v0, Landroid/graphics/Rect;->left:I

    aput v3, p1, v5

    .line 36
    iget v3, v0, Landroid/graphics/Rect;->top:I

    aput v3, p1, v6

    .line 37
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/util/PopupManager;->mapOverlayToContent([I)V

    .line 38
    return-void
.end method

.method public getOffsetFromAnchorPos(Lcom/nuance/swype/input/emoji/util/PopupView;II)[I
    .locals 1
    .param p1, "popupView"    # Lcom/nuance/swype/input/emoji/util/PopupView;
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/emoji/util/PopupManager;->mapContentToOverlay(II)[I

    move-result-object v0

    .line 90
    .local v0, "pos":[I
    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/emoji/util/PopupView;->mapRelativeToAnchorPos([I)V

    .line 91
    return-object v0
.end method

.method public hideAll()V
    .locals 3

    .prologue
    .line 99
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->popups:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/nuance/swype/input/emoji/util/PopupView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/util/PopupView;

    .line 102
    .local v1, "popupView":Lcom/nuance/swype/input/emoji/util/PopupView;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 103
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v2, v1}, Lcom/nuance/swype/view/OverlayView;->removeView(Landroid/view/View;)V

    .line 104
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/util/PopupView;->onRemoved()V

    goto :goto_0

    .line 106
    .end local v1    # "popupView":Lcom/nuance/swype/input/emoji/util/PopupView;
    :cond_0
    return-void
.end method

.method protected mapContentToOverlay([I)V
    .locals 3
    .param p1, "pos"    # [I

    .prologue
    .line 57
    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->host:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 58
    const/4 v0, 0x1

    aget v1, p1, v0

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->host:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 59
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/util/PopupManager;->mapViewToOverlay([I)V

    .line 60
    return-void
.end method

.method public mapContentToOverlay(II)[I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 47
    invoke-static {p1, p2}, Lcom/nuance/swype/util/CoordUtils;->newInstance(II)[I

    move-result-object v0

    .line 49
    .local v0, "out":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->host:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 50
    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->host:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 51
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/util/PopupManager;->mapViewToOverlay([I)V

    .line 52
    return-object v0
.end method

.method protected mapOverlayToContent([I)V
    .locals 3
    .param p1, "pos"    # [I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/util/PopupManager;->mapOverlayToView([I)V

    .line 79
    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->host:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, p1, v0

    .line 80
    const/4 v0, 0x1

    aget v1, p1, v0

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->host:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, p1, v0

    .line 81
    return-void
.end method

.method protected mapOverlayToView([I)V
    .locals 5
    .param p1, "pos"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->host:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/view/OverlayView;->getOverlayPos(Landroid/view/View;)[I

    move-result-object v0

    .line 72
    .local v0, "offset":[I
    aget v1, p1, v3

    aget v2, v0, v3

    sub-int/2addr v1, v2

    aput v1, p1, v3

    .line 73
    aget v1, p1, v4

    aget v2, v0, v4

    sub-int/2addr v1, v2

    aput v1, p1, v4

    .line 74
    return-void
.end method

.method protected mapViewToOverlay([I)V
    .locals 5
    .param p1, "pos"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->host:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/view/OverlayView;->getOverlayPos(Landroid/view/View;)[I

    move-result-object v0

    .line 65
    .local v0, "offset":[I
    aget v1, p1, v3

    aget v2, v0, v3

    add-int/2addr v1, v2

    aput v1, p1, v3

    .line 66
    aget v1, p1, v4

    aget v2, v0, v4

    add-int/2addr v1, v2

    aput v1, p1, v4

    .line 67
    return-void
.end method

.method protected mapViewToOverlay(II)[I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 41
    invoke-static {p1, p2}, Lcom/nuance/swype/util/CoordUtils;->newInstance(II)[I

    move-result-object v0

    .line 42
    .local v0, "out":[I
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/util/PopupManager;->mapViewToOverlay([I)V

    .line 43
    return-object v0
.end method

.method onDetachedFromWindow(Lcom/nuance/swype/input/emoji/util/PopupView;)V
    .locals 1
    .param p1, "popupView"    # Lcom/nuance/swype/input/emoji/util/PopupView;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/util/PopupManager;->untrack(Lcom/nuance/swype/input/emoji/util/PopupView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/util/PopupView;->onRemoved()V

    .line 146
    :cond_0
    return-void
.end method

.method public removePopup(Lcom/nuance/swype/input/emoji/util/PopupView;)Z
    .locals 1
    .param p1, "popupView"    # Lcom/nuance/swype/input/emoji/util/PopupView;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/util/PopupManager;->untrack(Lcom/nuance/swype/input/emoji/util/PopupView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/OverlayView;->removeView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/util/PopupView;->onRemoved()V

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
