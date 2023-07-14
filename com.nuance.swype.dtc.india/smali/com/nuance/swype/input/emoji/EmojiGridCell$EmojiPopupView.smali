.class Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;
.super Lcom/nuance/swype/input/emoji/util/PopupView;
.source "EmojiGridCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiGridCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPopupView"
.end annotation


# instance fields
.field private textBitmap:Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;

.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/EmojiGridCell;Landroid/content/Context;Lcom/nuance/swype/input/emoji/util/PopupManager;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "popupManager"    # Lcom/nuance/swype/input/emoji/util/PopupManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 470
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .line 472
    sget-object v1, Lcom/nuance/swype/input/emoji/util/PopupView$Mode;->MODE_DISABLE_HW_ACCEL:Lcom/nuance/swype/input/emoji/util/PopupView$Mode;

    invoke-direct {p0, p2, p3, v1}, Lcom/nuance/swype/input/emoji/util/PopupView;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/util/PopupManager;Lcom/nuance/swype/input/emoji/util/PopupView$Mode;)V

    .line 474
    invoke-static {p2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$attr;->emojiPopupBackground:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 475
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 476
    return-void
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->preparePreScaleState()V

    return-void
.end method

.method private canDrawTextAtEndScale()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$300(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getScaleEnd()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->createTextPath(F)Landroid/graphics/Path;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createTextPath(F)Landroid/graphics/Path;
    .locals 9
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x0

    .line 485
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$100(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/EmojiPageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getParams()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v1

    iget-object v0, v1, Lcom/nuance/swype/input/emoji/EmojiGridParams;->paint:Landroid/graphics/Paint;

    .line 486
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    .line 487
    .local v7, "oldSize":F
    mul-float v8, v7, p1

    .line 488
    .local v8, "scaled":F
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 489
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 490
    .local v6, "path":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$200(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v3}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$200(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 491
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 492
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 493
    return-object v6
.end method

.method private preparePreScaleState()V
    .locals 4

    .prologue
    .line 514
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$400(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->canDrawTextAtEndScale()Z

    move-result v0

    .line 517
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->textBitmap:Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$500(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$200(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v3}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$100(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/EmojiPageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getParams()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/input/emoji/EmojiGridParams;->paint:Landroid/graphics/Paint;

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;-><init>(Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->textBitmap:Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->textBitmap:Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->textBitmap:Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->recycle()V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->textBitmap:Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 530
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    .line 531
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->getPaddingLeft()I

    move-result v1

    .line 532
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->getPaddingTop()I

    move-result v2

    .line 533
    .local v2, "y":I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 534
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v3}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$400(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v3}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$300(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getScaleEnd()F

    move-result v0

    .line 537
    .local v0, "scale":F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 539
    .end local v0    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->textBitmap:Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v5}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$100(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/EmojiPageView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getDrawDebug()Lcom/nuance/swype/util/DrawDebug;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$600(Lcom/nuance/swype/input/emoji/EmojiGridCell;Landroid/graphics/Canvas;Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;Lcom/nuance/swype/util/DrawDebug;)V

    .line 540
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 541
    return-void
.end method

.method protected onRemoved()V
    .locals 1

    .prologue
    .line 545
    invoke-super {p0}, Lcom/nuance/swype/input/emoji/util/PopupView;->onRemoved()V

    .line 547
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$700(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V

    .line 548
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$000(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transform(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;)V
    .locals 14
    .param p1, "animator"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 563
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getAnimState()Lcom/nuance/swype/input/emoji/util/AnimationState;

    move-result-object v1

    .line 564
    .local v1, "animationState":Lcom/nuance/swype/input/emoji/util/AnimationState;
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getPopupProg()D

    move-result-wide v4

    .line 567
    .local v4, "popupProg":D
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v9}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$400(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getInvertedScale()F

    move-result v8

    .line 570
    .local v8, "viewScale":F
    :goto_0
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->setScaleX(F)V

    .line 571
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->setScaleY(F)V

    .line 573
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/util/AnimationState;->getRotate()F

    move-result v9

    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->setRotation(F)V

    .line 577
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v9}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$100(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/EmojiPageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getPopupManager()Lcom/nuance/swype/input/emoji/util/PopupManager;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v10}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$800(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    move-result-object v10

    iget-object v11, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v11}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$900(Lcom/nuance/swype/input/emoji/EmojiGridCell;)I

    move-result v11

    iget-object v12, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->this$0:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-static {v12}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->access$1000(Lcom/nuance/swype/input/emoji/EmojiGridCell;)I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/nuance/swype/input/emoji/util/PopupManager;->getOffsetFromAnchorPos(Lcom/nuance/swype/input/emoji/util/PopupView;II)[I

    move-result-object v3

    .line 579
    .local v3, "pos":[I
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/util/AnimationState;->getTransX()F

    move-result v9

    const/4 v10, 0x0

    aget v10, v3, v10

    int-to-float v10, v10

    add-float v6, v9, v10

    .line 580
    .local v6, "tx":F
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/util/AnimationState;->getTransY()F

    move-result v9

    const/4 v10, 0x1

    aget v10, v3, v10

    int-to-float v10, v10

    add-float v7, v9, v10

    .line 581
    .local v7, "ty":F
    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->setTranslationX(F)V

    .line 582
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->setTranslationY(F)V

    .line 586
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 587
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 591
    const-wide/16 v10, 0x0

    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    double-to-int v0, v10

    .line 592
    .local v0, "alpha":I
    const/16 v9, 0xff

    const/4 v10, 0x0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 593
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 596
    .end local v0    # "alpha":I
    :cond_0
    return-void

    .line 568
    .end local v2    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "pos":[I
    .end local v6    # "tx":F
    .end local v7    # "ty":F
    .end local v8    # "viewScale":F
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/util/AnimationState;->getScale()F

    move-result v8

    goto :goto_0
.end method
