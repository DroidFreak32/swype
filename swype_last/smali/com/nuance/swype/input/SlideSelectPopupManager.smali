.class public Lcom/nuance/swype/input/SlideSelectPopupManager;
.super Ljava/lang/Object;
.source "SlideSelectPopupManager.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private cancelDist:I

.field private cancelDistSquared:I

.field private currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private enableRelativeMovement:Z

.field private movementScaleFactor:F

.field private parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

.field private popupContainerView:Landroid/view/View;

.field private popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

.field private popupPos:Landroid/graphics/Point;

.field private slideSelectPopupAdjustY:I

.field private triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

.field private xDown:I

.field private yDown:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string/jumbo v0, "SlideSelectPopupManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .registers 8
    .param p1, "parentKeyboardView"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    const/4 v5, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupPos:Landroid/graphics/Point;

    .line 74
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->enableRelativeMovement:Z

    .line 80
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->movementScaleFactor:F

    .line 86
    iput-object p1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 87
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 90
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getMaxRowHeight()I

    move-result v3

    .line 93
    .local v3, "rowHeight":I
    sget v4, Lcom/nuance/swype/input/R$fraction;->slide_select_popup_adjust_y_factor:I

    invoke-virtual {v2, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 94
    .local v0, "adjustYFactor":F
    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->slideSelectPopupAdjustY:I

    .line 97
    sget v4, Lcom/nuance/swype/input/R$fraction;->slide_select_popup_cancel_dist_factor:I

    invoke-virtual {v2, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    .line 99
    .local v1, "cancelDistFactor":F
    int-to-float v4, v3

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    .line 101
    iget v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    iget v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->slideSelectPopupAdjustY:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    .line 102
    iget v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    iget v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDistSquared:I

    .line 103
    return-void
.end method

.method public static calcGravity(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .registers 5
    .param p0, "parentView"    # Landroid/view/View;
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 409
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 410
    .local v0, "xMiddle":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 411
    if-le v1, v0, :cond_1a

    const v1, 0x800005

    .line 414
    :goto_17
    or-int/lit8 v1, v1, 0x50

    .line 415
    return v1

    .line 411
    :cond_1a
    const v1, 0x800003

    goto :goto_17
.end method

.method private constrainX(I)I
    .registers 5
    .param p1, "x"    # I

    .prologue
    .line 133
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 134
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 135
    .local v0, "last":I
    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private constrainY(I)I
    .registers 5
    .param p1, "x"    # I

    .prologue
    .line 145
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 146
    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 147
    .local v0, "last":I
    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private static findFirstActiveFromLeft(Ljava/util/List;)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;)",
            "Lcom/nuance/swype/input/KeyboardEx$Key;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 469
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->isActive(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 473
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static findFirstActiveFromRight(Ljava/util/List;)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;)",
            "Lcom/nuance/swype/input/KeyboardEx$Key;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 478
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_8
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 479
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 480
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->isActive(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 484
    .end local v1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :goto_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private static isActive(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 2
    .param p0, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isPointInRange(II)Z
    .registers 8
    .param p1, "xKeyboard"    # I
    .param p2, "yKeyboard"    # I

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 205
    .local v1, "right":I
    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 206
    .local v0, "bot":I
    iget v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    neg-int v3, v3

    if-lt p1, v3, :cond_27

    iget v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    add-int/2addr v3, v1

    if-le p1, v3, :cond_28

    .line 212
    :cond_27
    :goto_27
    return v2

    .line 209
    :cond_28
    iget v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    neg-int v3, v3

    if-lt p2, v3, :cond_27

    iget v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    add-int/2addr v3, v0

    if-gt p2, v3, :cond_27

    .line 212
    const/4 v2, 0x1

    goto :goto_27
.end method

.method private isPointInRange(IILcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 6
    .param p1, "xKeyboard"    # I
    .param p2, "yKeyboard"    # I
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 225
    invoke-virtual {p3, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceToEdge(II)I

    move-result v0

    .line 226
    iget v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDistSquared:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected static toggleKey(Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Z)V
    .registers 4
    .param p0, "keyboard"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "press"    # Z

    .prologue
    .line 318
    if-eqz p2, :cond_f

    .line 319
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->isPressed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 322
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->onPressed()V

    .line 323
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 332
    :cond_e
    :goto_e
    return-void

    .line 326
    :cond_f
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 328
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->onPressed()V

    .line 329
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_e
.end method


# virtual methods
.method protected calcPopupKeyboardPos()Landroid/graphics/Point;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-static {v5, v6}, Lcom/nuance/swype/input/SlideSelectPopupManager;->calcGravity(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    .line 539
    and-int/lit8 v0, v5, 0x7

    .line 542
    .local v0, "hGrav":I
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v6

    add-int v1, v5, v6

    .line 543
    .local v1, "xKey":I
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v6

    add-int v3, v5, v6

    .line 546
    .local v3, "yKey":I
    const v5, 0x800005

    if-eq v5, v0, :cond_2a

    const/4 v5, 0x5

    if-ne v5, v0, :cond_57

    .line 548
    :cond_2a
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    .line 549
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int v2, v5, v6

    .line 557
    .local v2, "xPopup":I
    :goto_3e
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->slideSelectPopupAdjustY:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    .line 558
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int v4, v5, v6

    .line 559
    .local v4, "yPopup":I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 553
    .end local v2    # "xPopup":I
    .end local v4    # "yPopup":I
    :cond_57
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int v2, v1, v5

    .restart local v2    # "xPopup":I
    goto :goto_3e
.end method

.method public createPopupCharsKeyboard(ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;ILcom/nuance/swype/input/KeyboardEx$Key;II)Lcom/nuance/swype/input/KeyboardEx;
    .registers 18
    .param p1, "popupKeyboardId"    # I
    .param p2, "popupChars"    # Ljava/lang/CharSequence;
    .param p3, "extraKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "idxDefault"    # I
    .param p5, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p6, "altCharsPopupMaxCol"    # I
    .param p7, "horPadding"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-static {v0, p5}, Lcom/nuance/swype/input/SlideSelectPopupManager;->calcGravity(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v6

    .line 459
    .local v6, "gravity":I
    const/4 v0, -0x1

    if-ne v0, p4, :cond_14

    if-nez p3, :cond_14

    .line 460
    sget-object v0, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "createPopupCharsKeyboard(): selecting first char as default"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 461
    const/4 p4, 0x0

    .line 463
    :cond_14
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx;

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v9, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;IIIIZ)V

    return-object v0
.end method

.method public createStaticKeyboard(IILcom/nuance/swype/input/KeyboardEx$Key;)Lcom/nuance/swype/input/KeyboardEx;
    .registers 15
    .param p1, "popupKeyboardId"    # I
    .param p2, "idxDefault"    # I
    .param p3, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 494
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-static {v1, p3}, Lcom/nuance/swype/input/SlideSelectPopupManager;->calcGravity(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v6

    .line 495
    .local v6, "gravity":I
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx;

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IZZZ)V

    .line 497
    .local v0, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    if-nez v1, :cond_8a

    .line 499
    and-int/lit8 v7, v6, 0x7

    .line 500
    .local v7, "hGrav":I
    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 501
    .local v10, "rowCount":I
    if-lez v10, :cond_8a

    .line 502
    iget-object v1, v0, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    add-int/lit8 v2, v10, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v9, v1, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    .line 504
    .local v9, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 505
    .local v8, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v2, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_65

    iget-object v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_65

    .line 507
    iget-object v2, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_69

    .line 508
    iget-object v2, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    iput-object v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 509
    iget-object v2, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    iput-object v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->labelUpperCase:Ljava/lang/CharSequence;

    .line 510
    const/4 v2, 0x0

    iput-object v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 511
    const/4 v2, 0x0

    iput-object v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 518
    :cond_65
    :goto_65
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->isMiniKeyboardKey:Z

    goto :goto_35

    .line 513
    :cond_69
    iget-object v2, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 514
    iget-object v2, p3, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 515
    const/4 v2, 0x0

    iput-object v2, v8, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    goto :goto_65

    .line 521
    .end local v8    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_75
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 522
    if-lez v1, :cond_8a

    .line 524
    const v1, 0x800005

    if-eq v1, v7, :cond_83

    const/4 v1, 0x5

    if-ne v1, v7, :cond_8b

    :cond_83
    invoke-static {v9}, Lcom/nuance/swype/input/SlideSelectPopupManager;->findFirstActiveFromRight(Ljava/util/List;)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    :goto_87
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardEx;->setDefaultKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 529
    .end local v7    # "hGrav":I
    .end local v9    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v10    # "rowCount":I
    :cond_8a
    return-object v0

    .line 525
    .restart local v7    # "hGrav":I
    .restart local v9    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .restart local v10    # "rowCount":I
    :cond_8b
    invoke-static {v9}, Lcom/nuance/swype/input/SlideSelectPopupManager;->findFirstActiveFromLeft(Ljava/util/List;)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v1

    goto :goto_87
.end method

.method protected findNearestKey(II)Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 9
    .param p1, "xKeyboard"    # I
    .param p2, "yKeyboard"    # I

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->constrainX(I)I

    move-result p1

    .line 370
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/SlideSelectPopupManager;->constrainY(I)I

    move-result p2

    .line 373
    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v4, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 374
    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 391
    :cond_16
    return-object v3

    .line 380
    :cond_17
    const/4 v3, 0x0

    .line 381
    .local v3, "nearestKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    const v2, 0x7fffffff

    .line 382
    .local v2, "nearestDistSquared":I
    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 383
    .local v1, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-static {v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->isActive(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 384
    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceToEdge(II)I

    move-result v0

    .line 385
    .local v0, "distSquared":I
    if-ge v0, v2, :cond_29

    .line 386
    move-object v3, v1

    .line 387
    move v2, v0

    goto :goto_29
.end method

.method public getCurrentKey()Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method public getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    return-object v0
.end method

.method public getKeyList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerKey()Lcom/nuance/swype/input/KeyboardEx$Key;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method protected handleSpecialCaseKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 10
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 230
    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 244
    :cond_a
    :goto_a
    return v1

    .line 233
    :cond_b
    const/16 v2, -0xc8

    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1e

    .line 235
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move v1, v7

    .line 236
    goto :goto_a

    .line 237
    :cond_1e
    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    if-eqz v2, :cond_a

    .line 239
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v2, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v3, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v4, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->gap:I

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v5, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v6, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/KeyboardEx$Key;-><init>(Lcom/nuance/swype/input/KeyboardEx$Key;IIIII)V

    .line 241
    .local v0, "movedKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move v1, v7

    .line 242
    goto :goto_a
.end method

.method protected moveOffsetToPopupX(I)I
    .registers 4
    .param p1, "xOffset"    # I

    .prologue
    .line 357
    int-to-float v0, p1

    iget v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->movementScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 358
    iget v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->xDown:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected moveOffsetToPopupY(I)I
    .registers 4
    .param p1, "yOffset"    # I

    .prologue
    .line 363
    int-to-float v0, p1

    iget v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->movementScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 364
    iget v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->yDown:I

    add-int/2addr v0, p1

    return v0
.end method

.method public onCancel()V
    .registers 5

    .prologue
    .line 282
    sget-object v0, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onCancel()"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 284
    return-void
.end method

.method public onMove(IIII)V
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I

    .prologue
    .line 165
    iget-boolean v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->enableRelativeMovement:Z

    if-eqz v3, :cond_2b

    .line 166
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/SlideSelectPopupManager;->moveOffsetToPopupX(I)I

    move-result v1

    .line 167
    .local v1, "xPopup":I
    invoke-virtual {p0, p4}, Lcom/nuance/swype/input/SlideSelectPopupManager;->moveOffsetToPopupY(I)I

    move-result v2

    .line 173
    .local v2, "yPopup":I
    :goto_c
    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v3

    if-nez v3, :cond_38

    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 174
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v3

    if-nez v3, :cond_38

    .line 180
    sget-object v3, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "onMove: Popup keyboard not yet drawn. Ignoring move event."

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 190
    :goto_2a
    return-void

    .line 169
    .end local v1    # "xPopup":I
    .end local v2    # "yPopup":I
    :cond_2b
    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v1, p1, v3

    .line 170
    .restart local v1    # "xPopup":I
    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v2, p2, v3

    .restart local v2    # "yPopup":I
    goto :goto_c

    .line 184
    :cond_38
    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/SlideSelectPopupManager;->findNearestKey(II)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 185
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-direct {p0, v1, v2, v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->isPointInRange(IILcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 186
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_2a

    .line 188
    :cond_46
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_2a
.end method

.method public onUp()V
    .registers 6

    .prologue
    .line 287
    sget-object v1, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onUp()"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 288
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v1, :cond_2f

    .line 289
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    .line 290
    .local v0, "listener":Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    if-eqz v0, :cond_2f

    .line 291
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->handleSpecialCaseKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 292
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->sendKeyCode(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 293
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->sendKeyText(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    .line 298
    .end local v0    # "listener":Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    :cond_2f
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 299
    return-void
.end method

.method public preparePopup(Landroid/view/View;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 7
    .param p1, "popupContainerView"    # Landroid/view/View;
    .param p2, "popupKeyboard"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p3, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "downPos"    # Landroid/graphics/Point;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    .line 435
    iput-object p2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 436
    iput-object p3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 440
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 441
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setDownKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 443
    invoke-virtual {p0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->calcPopupKeyboardPos()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupPos:Landroid/graphics/Point;

    .line 447
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 448
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupPos:Landroid/graphics/Point;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->toWindowPos(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method public preparePopupForKeypad(Landroid/view/View;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 6
    .param p1, "popupContainerView"    # Landroid/view/View;
    .param p2, "popupKeyboard"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p3, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "downPos"    # Landroid/graphics/Point;

    .prologue
    .line 453
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/SlideSelectPopupManager;->preparePopup(Landroid/view/View;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method protected sendKeyCode(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 11
    .param p1, "listener"    # Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v0

    const/16 v2, 0xfdf

    if-eq v1, v2, :cond_1e

    .line 249
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v1, v0

    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    const-wide/16 v6, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    .line 250
    const/4 v0, 0x1

    .line 252
    :cond_1e
    return v0
.end method

.method protected sendKeyText(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .registers 12
    .param p1, "listener"    # Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 260
    iget-object v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 261
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 262
    iget-object v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 264
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 266
    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v8, :cond_32

    iget-object v2, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0xfdf

    if-eq v2, v3, :cond_32

    .line 269
    const/4 v2, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-object v4, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object v1, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    :goto_30
    move v1, v8

    .line 277
    :cond_31
    return v1

    .line 271
    :cond_32
    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {p1, v1, v6, v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;J)V

    .line 272
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_30
.end method

.method protected setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 8
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 335
    if-eqz p1, :cond_3d

    invoke-static {p1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->isActive(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 336
    sget-object v0, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "setCurrentKey(): inactive (ignoring): "

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 337
    sget-object v0, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setCurrentKey(): vis: "

    aput-object v2, v1, v3

    iget-boolean v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "; dimmed: "

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-boolean v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 353
    :cond_3c
    :goto_3c
    return-void

    .line 341
    :cond_3d
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eq p1, v0, :cond_3c

    .line 342
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_4c

    .line 343
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-static {v0, v1, v3}, Lcom/nuance/swype/input/SlideSelectPopupManager;->toggleKey(Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Z)V

    .line 346
    :cond_4c
    iput-object p1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 348
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_3c

    .line 349
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-static {v0, v1, v4}, Lcom/nuance/swype/input/SlideSelectPopupManager;->toggleKey(Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Z)V

    goto :goto_3c
.end method

.method protected setDownKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .registers 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 114
    if-nez p1, :cond_1b

    .line 115
    sget-object v0, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "setDownKey(): invalid key (setting first as current)"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    check-cast p1, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 121
    .restart local p1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1b
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->xDown:I

    .line 122
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->yDown:I

    .line 124
    return-void
.end method

.method protected toWindowPos(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 10
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 569
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 570
    .local v1, "winOffset":[I
    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 571
    iget v4, p1, Landroid/graphics/Point;->x:I

    aget v5, v1, v6

    add-int v2, v4, v5

    .line 572
    .local v2, "x":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    aget v5, v1, v7

    add-int v3, v4, v5

    .line 573
    .local v3, "y":I
    const/4 v0, 0x0

    .line 574
    .local v0, "margin":I
    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v4, :cond_22

    .line 575
    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    div-int/lit8 v4, v4, 0x2

    neg-int v0, v4

    .line 577
    :cond_22
    if-lt v3, v0, :cond_2c

    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->isFullScreenHandWritingView()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 580
    :cond_2c
    iput-boolean v7, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->enableRelativeMovement:Z

    .line 584
    :goto_2e
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v4

    .line 582
    :cond_34
    iput-boolean v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->enableRelativeMovement:Z

    goto :goto_2e
.end method
