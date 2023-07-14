.class public abstract Lcom/nuance/swype/input/emoji/util/PopupView;
.super Landroid/view/View;
.source "PopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/util/PopupView$Mode;
    }
.end annotation


# instance fields
.field private final anchorPos:[I

.field private popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/util/PopupManager;Lcom/nuance/swype/input/emoji/util/PopupView$Mode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popupManager"    # Lcom/nuance/swype/input/emoji/util/PopupManager;
    .param p3, "mode"    # Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupView;->anchorPos:[I

    .line 33
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/util/PopupView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    .line 34
    sget-object v0, Lcom/nuance/swype/input/emoji/util/PopupView$1;->$SwitchMap$com$nuance$swype$input$emoji$util$PopupView$Mode:[I

    invoke-virtual {p3}, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 36
    :pswitch_0
    invoke-static {p0}, Lcom/nuance/android/compat/ViewCompat;->disableHardwareAccel(Landroid/view/View;)V

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-static {p0}, Lcom/nuance/android/compat/ViewCompat;->enableHardwareLayer(Landroid/view/View;)V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setGeometry([III)V
    .locals 2
    .param p1, "pos"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-static {p0, v0, v1, p2, p3}, Lcom/nuance/swype/view/OverlayView;->setGeometry(Landroid/view/View;IIII)V

    .line 54
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/emoji/util/PopupManager;->removePopup(Lcom/nuance/swype/input/emoji/util/PopupView;)Z

    .line 85
    return-void
.end method

.method public mapRelativeToAnchorPos([I)V
    .locals 1
    .param p1, "pos"    # [I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupView;->anchorPos:[I

    invoke-static {p1, v0, p1}, Lcom/nuance/swype/util/CoordUtils;->subtract([I[I[I)V

    .line 109
    return-void
.end method

.method protected onAdded()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/util/PopupView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/emoji/util/PopupManager;->onDetachedFromWindow(Lcom/nuance/swype/input/emoji/util/PopupView;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onRemoved()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public setAnchor(II)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PopupView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/emoji/util/PopupManager;->mapContentToOverlay(II)[I

    move-result-object v0

    .line 61
    .local v0, "pos":[I
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/util/PopupView;->anchorPos:[I

    .line 1102
    aget v2, v0, v3

    aput v2, v1, v3

    .line 1103
    aget v2, v0, v4

    aput v2, v1, v4

    .line 62
    return-void
.end method

.method public show(IIII)Z
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 70
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PopupView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    invoke-virtual {v2, p1, p2}, Lcom/nuance/swype/input/emoji/util/PopupManager;->mapContentToOverlay(II)[I

    move-result-object v1

    .line 73
    .local v1, "pos":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/util/PopupView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 74
    const/4 v2, 0x1

    aget v3, v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/util/PopupView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 75
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/util/PopupView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/util/PopupView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/util/PopupView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/util/PopupView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p4, v2

    .line 78
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/util/PopupView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/emoji/util/PopupManager;->addPopup(Lcom/nuance/swype/input/emoji/util/PopupView;)Z

    move-result v0

    .line 79
    .local v0, "added":Z
    invoke-direct {p0, v1, p3, p4}, Lcom/nuance/swype/input/emoji/util/PopupView;->setGeometry([III)V

    .line 80
    return v0
.end method
