.class public Lcom/nuance/swype/input/SlideSelectPopupManager;
.super Ljava/lang/Object;
.source "SlideSelectPopupManager.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final DEFAULT_MOVEMENT_SCALE:F

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
    .locals 1

    .prologue
    .line 21
    const-string v0, "SlideSelectPopupManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/KeyboardViewEx;)V
    .locals 7
    .param p1, "parentKeyboardView"    # Lcom/nuance/swype/input/KeyboardViewEx;

    .prologue
    const v6, 0x400ccccd    # 2.2f

    const/4 v5, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupPos:Landroid/graphics/Point;

    .line 64
    iput v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->DEFAULT_MOVEMENT_SCALE:F

    .line 73
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->enableRelativeMovement:Z

    .line 79
    iput v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->movementScaleFactor:F

    .line 85
    iput-object p1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 86
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 89
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardViewEx;->getMaxRowHeight()I

    move-result v3

    .line 92
    .local v3, "rowHeight":I
    sget v4, Lcom/nuance/swype/input/R$fraction;->slide_select_popup_adjust_y_factor:I

    invoke-virtual {v2, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 93
    .local v0, "adjustYFactor":F
    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->slideSelectPopupAdjustY:I

    .line 96
    sget v4, Lcom/nuance/swype/input/R$fraction;->slide_select_popup_cancel_dist_factor:I

    invoke-virtual {v2, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    .line 98
    .local v1, "cancelDistFactor":F
    int-to-float v4, v3

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    .line 100
    iget v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    iget v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->slideSelectPopupAdjustY:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    .line 101
    iget v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    iget v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDistSquared:I

    .line 102
    return-void
.end method

.method public static calcGravity(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;)I
    .locals 3
    .param p0, "parentView"    # Landroid/view/View;
    .param p1, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 392
    .local v0, "xMiddle":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 393
    if-le v1, v0, :cond_0

    const/4 v1, 0x5

    .line 396
    :goto_0
    or-int/lit8 v1, v1, 0x50

    .line 397
    return v1

    .line 393
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private constrainX(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 141
    .local v0, "last":I
    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private constrainY(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 153
    .local v0, "last":I
    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private isActive(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->dimmed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPointInRange(II)Z
    .locals 5
    .param p1, "xKeyboard"    # I
    .param p2, "yKeyboard"    # I

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    .line 200
    .local v1, "right":I
    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardViewEx;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 201
    .local v0, "bot":I
    iget v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    neg-int v3, v3

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    add-int/2addr v3, v1

    if-le p1, v3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v2

    .line 204
    :cond_1
    iget v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    neg-int v3, v3

    if-lt p2, v3, :cond_0

    iget v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDist:I

    add-int/2addr v3, v0

    if-gt p2, v3, :cond_0

    .line 207
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPointInRange(IILcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 2
    .param p1, "xKeyboard"    # I
    .param p2, "yKeyboard"    # I
    .param p3, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 220
    invoke-virtual {p3, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceToEdge(II)I

    move-result v0

    .line 221
    iget v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->cancelDistSquared:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static toggleKey(Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Z)V
    .locals 1
    .param p0, "keyboard"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p2, "press"    # Z

    .prologue
    .line 306
    if-eqz p2, :cond_1

    .line 307
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->onPressed()V

    .line 311
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/nuance/swype/input/KeyboardEx$Key;->onPressed()V

    .line 317
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_0
.end method


# virtual methods
.method protected calcPopupKeyboardPos()Landroid/graphics/Point;
    .locals 7

    .prologue
    .line 475
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-static {v5, v6}, Lcom/nuance/swype/input/SlideSelectPopupManager;->calcGravity(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v5

    .line 476
    and-int/lit8 v0, v5, 0x7

    .line 479
    .local v0, "hGrav":I
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingLeft()I

    move-result v6

    add-int v1, v5, v6

    .line 480
    .local v1, "xKey":I
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx;->getPaddingTop()I

    move-result v6

    add-int v3, v5, v6

    .line 483
    .local v3, "yKey":I
    const/4 v5, 0x5

    if-ne v5, v0, :cond_0

    .line 485
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v5, v5, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int v2, v5, v6

    .line 494
    .local v2, "xPopup":I
    :goto_0
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->slideSelectPopupAdjustY:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int v4, v5, v6

    .line 496
    .local v4, "yPopup":I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 490
    .end local v2    # "xPopup":I
    .end local v4    # "yPopup":I
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int v2, v1, v5

    .restart local v2    # "xPopup":I
    goto :goto_0
.end method

.method public createPopupCharsKeyboard(ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;ILcom/nuance/swype/input/KeyboardEx$Key;II)Lcom/nuance/swype/input/KeyboardEx;
    .locals 9
    .param p1, "popupKeyboardId"    # I
    .param p2, "popupChars"    # Ljava/lang/CharSequence;
    .param p3, "extraKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "idxDefault"    # I
    .param p5, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p6, "altCharsPopupMaxCol"    # I
    .param p7, "horPadding"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-static {v0, p5}, Lcom/nuance/swype/input/SlideSelectPopupManager;->calcGravity(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v6

    .line 441
    .local v6, "gravity":I
    const/4 v0, -0x1

    if-ne v0, p4, :cond_0

    if-nez p3, :cond_0

    .line 442
    sget-object v0, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "createPopupCharsKeyboard(): selecting first char as default"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 443
    const/4 p4, 0x0

    .line 445
    :cond_0
    new-instance v0, Lcom/nuance/swype/input/KeyboardEx;

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/nuance/swype/input/KeyboardEx$Key;IIII)V

    return-object v0
.end method

.method public createStaticKeyboard(IILcom/nuance/swype/input/KeyboardEx$Key;)Lcom/nuance/swype/input/KeyboardEx;
    .locals 9
    .param p1, "popupKeyboardId"    # I
    .param p2, "idxDefault"    # I
    .param p3, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v8, 0x0

    .line 450
    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-static {v6, p3}, Lcom/nuance/swype/input/SlideSelectPopupManager;->calcGravity(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;)I

    move-result v0

    .line 451
    .local v0, "gravity":I
    new-instance v3, Lcom/nuance/swype/input/KeyboardEx;

    iget-object v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v3, v6, p1, v8, v7}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;IZZ)V

    .line 453
    .local v3, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardEx;->getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v6

    if-nez v6, :cond_0

    .line 455
    and-int/lit8 v1, v0, 0x7

    .line 456
    .local v1, "hGrav":I
    iget-object v6, v3, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 457
    .local v5, "rowCount":I
    if-lez v5, :cond_0

    .line 458
    iget-object v6, v3, Lcom/nuance/swype/input/KeyboardEx;->mKeyboardLayout:Ljava/util/List;

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/KeyboardEx$Row;

    iget-object v4, v6, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    .line 459
    .local v4, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 460
    .local v2, "keyCount":I
    if-lez v2, :cond_0

    .line 463
    const/4 v6, 0x5

    if-ne v6, v1, :cond_1

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/KeyboardEx$Key;

    :goto_0
    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/KeyboardEx;->setDefaultKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 467
    .end local v1    # "hGrav":I
    .end local v2    # "keyCount":I
    .end local v4    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .end local v5    # "rowCount":I
    :cond_0
    return-object v3

    .line 463
    .restart local v1    # "hGrav":I
    .restart local v2    # "keyCount":I
    .restart local v4    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    .restart local v5    # "rowCount":I
    :cond_1
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/KeyboardEx$Key;

    goto :goto_0
.end method

.method protected findNearestKey(II)Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 6
    .param p1, "xKeyboard"    # I
    .param p2, "yKeyboard"    # I

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->constrainX(I)I

    move-result p1

    .line 354
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/SlideSelectPopupManager;->constrainY(I)I

    move-result p2

    .line 355
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v5, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-direct {p0, v5}, Lcom/nuance/swype/input/SlideSelectPopupManager;->isActive(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 356
    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 373
    :cond_0
    return-object v4

    .line 362
    :cond_1
    const/4 v4, 0x0

    .line 363
    .local v4, "nearestKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    const v3, 0x7fffffff

    .line 364
    .local v3, "nearestDistSquared":I
    iget-object v5, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 365
    .local v2, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/SlideSelectPopupManager;->isActive(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 366
    invoke-virtual {v2, p1, p2}, Lcom/nuance/swype/input/KeyboardEx$Key;->squaredDistanceToEdge(II)I

    move-result v0

    .line 367
    .local v0, "distSquared":I
    if-ge v0, v3, :cond_2

    .line 368
    move-object v4, v2

    .line 369
    move v3, v0

    goto :goto_0
.end method

.method public getCurrentKey()Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method public getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    return-object v0
.end method

.method public getKeyList()Ljava/util/List;
    .locals 1
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
    .line 298
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerKey()Lcom/nuance/swype/input/KeyboardEx$Key;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    return-object v0
.end method

.method protected handleSpecialCaseKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 8
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 225
    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v2}, Lcom/nuance/swype/input/KeyboardViewEx;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    const/16 v2, -0xc8

    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v3, v3, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_2

    .line 230
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardViewEx;->showAltStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move v1, v7

    .line 231
    goto :goto_0

    .line 232
    :cond_2
    iget v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->popupResId:I

    if-eqz v2, :cond_0

    .line 234
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

    .line 236
    .local v0, "movedKey":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/KeyboardViewEx;->showStaticSelectPopup(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move v1, v7

    .line 237
    goto :goto_0
.end method

.method protected moveOffsetToPopupX(I)I
    .locals 2
    .param p1, "xOffset"    # I

    .prologue
    .line 337
    int-to-float v0, p1

    iget v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->movementScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 338
    iget v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->xDown:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected moveOffsetToPopupY(I)I
    .locals 2
    .param p1, "yOffset"    # I

    .prologue
    .line 343
    int-to-float v0, p1

    iget v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->movementScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 344
    iget v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->yDown:I

    add-int/2addr v0, p1

    return v0
.end method

.method public onMove(IIII)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I

    .prologue
    .line 171
    iget-boolean v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->enableRelativeMovement:Z

    if-eqz v3, :cond_0

    .line 172
    invoke-virtual {p0, p3}, Lcom/nuance/swype/input/SlideSelectPopupManager;->moveOffsetToPopupX(I)I

    move-result v1

    .line 173
    .local v1, "xPopup":I
    invoke-virtual {p0, p4}, Lcom/nuance/swype/input/SlideSelectPopupManager;->moveOffsetToPopupY(I)I

    move-result v2

    .line 179
    .local v2, "yPopup":I
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/SlideSelectPopupManager;->findNearestKey(II)Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 180
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-direct {p0, v1, v2, v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->isPointInRange(IILcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 185
    :goto_1
    return-void

    .line 175
    .end local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v1    # "xPopup":I
    .end local v2    # "yPopup":I
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v1, p1, v3

    .line 176
    .restart local v1    # "xPopup":I
    iget-object v3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v2, p2, v3

    .restart local v2    # "yPopup":I
    goto :goto_0

    .line 183
    .restart local v0    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    goto :goto_1
.end method

.method public onUp()V
    .locals 2

    .prologue
    .line 276
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getOnKeyboardActionListener()Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    .line 278
    .local v0, "listener":Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    if-eqz v0, :cond_0

    .line 279
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->handleSpecialCaseKeyCode(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->sendKeyCode(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->sendKeyText(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    .line 286
    .end local v0    # "listener":Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 287
    return-void
.end method

.method public preparePopup(Landroid/view/View;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2
    .param p1, "popupContainerView"    # Landroid/view/View;
    .param p2, "popupKeyboard"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p3, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "downPos"    # Landroid/graphics/Point;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupContainerView:Landroid/view/View;

    .line 417
    iput-object p2, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 418
    iput-object p3, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 422
    invoke-virtual {p2}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardEx;->getDefaultKey()Lcom/nuance/swype/input/KeyboardEx$Key;

    move-result-object v0

    .line 423
    .local v0, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setDownKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 425
    invoke-virtual {p0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->calcPopupKeyboardPos()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupPos:Landroid/graphics/Point;

    .line 428
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/SlideSelectPopupManager;->setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V

    .line 430
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupPos:Landroid/graphics/Point;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->toWindowPos(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method public preparePopupForKeypad(Landroid/view/View;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p1, "popupContainerView"    # Landroid/view/View;
    .param p2, "popupKeyboard"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p3, "popupKey"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p4, "downPos"    # Landroid/graphics/Point;

    .prologue
    .line 435
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/SlideSelectPopupManager;->preparePopup(Landroid/view/View;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method protected sendKeyCode(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 8
    .param p1, "listener"    # Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v0, 0x0

    .line 243
    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-object v1, v1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v1, v1, v0

    const/16 v2, 0xfdf

    if-eq v1, v2, :cond_0

    .line 244
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

    .line 245
    const/4 v0, 0x1

    .line 247
    :cond_0
    return v0
.end method

.method protected sendKeyText(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 9
    .param p1, "listener"    # Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 255
    iget-object v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 256
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v0, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 259
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 261
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v8, :cond_2

    iget-object v2, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0xfdf

    if-eq v2, v3, :cond_2

    .line 264
    const/4 v2, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-object v4, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    move-object v1, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(Landroid/graphics/Point;I[ILcom/nuance/swype/input/KeyboardEx$Key;J)V

    :goto_0
    move v1, v8

    .line 272
    :cond_1
    return v1

    .line 266
    :cond_2
    iget-object v1, p2, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {p1, v1, v6, v7}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;J)V

    .line 267
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_0
.end method

.method protected setCurrentKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 3
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eq p1, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/SlideSelectPopupManager;->isActive(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/SlideSelectPopupManager;->toggleKey(Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Z)V

    .line 328
    :cond_1
    iput-object p1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->popupKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    iget-object v1, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->currentKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/SlideSelectPopupManager;->toggleKey(Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/input/KeyboardEx$Key;Z)V

    .line 333
    :cond_2
    return-void
.end method

.method protected setDownKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 2
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    sget-object v0, Lcom/nuance/swype/input/SlideSelectPopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "setDownKey(): invalid key (setting first as current)"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    .line 122
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

    .line 127
    .restart local p1    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_0
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->xDown:I

    .line 128
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->yDown:I

    .line 130
    return-void
.end method

.method protected toWindowPos(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 506
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 507
    .local v1, "winOffset":[I
    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4, v1}, Lcom/nuance/swype/input/KeyboardViewEx;->getLocationInWindow([I)V

    .line 508
    iget v4, p1, Landroid/graphics/Point;->x:I

    aget v5, v1, v6

    add-int v2, v4, v5

    .line 509
    .local v2, "x":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    aget v5, v1, v7

    add-int v3, v4, v5

    .line 510
    .local v3, "y":I
    const/4 v0, 0x0

    .line 511
    .local v0, "margin":I
    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    if-eqz v4, :cond_0

    .line 512
    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->triggerKey:Lcom/nuance/swype/input/KeyboardEx$Key;

    iget v4, v4, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    div-int/lit8 v4, v4, 0x2

    neg-int v0, v4

    .line 514
    :cond_0
    if-lt v3, v0, :cond_1

    iget-object v4, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->parentKeyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v4}, Lcom/nuance/swype/input/KeyboardViewEx;->isFullScreenHandWritingView()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 517
    :cond_1
    iput-boolean v7, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->enableRelativeMovement:Z

    .line 521
    :goto_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v4

    .line 519
    :cond_2
    iput-boolean v6, p0, Lcom/nuance/swype/input/SlideSelectPopupManager;->enableRelativeMovement:Z

    goto :goto_0
.end method
