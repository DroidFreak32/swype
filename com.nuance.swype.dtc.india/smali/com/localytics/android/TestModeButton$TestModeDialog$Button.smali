.class final Lcom/localytics/android/TestModeButton$TestModeDialog$Button;
.super Landroid/view/View;
.source "TestModeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeButton$TestModeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Button"
.end annotation


# static fields
.field private static final HEIGHT:I = 0x3c

.field private static final WIDTH:I = 0x3c


# instance fields
.field private final BACKGROUND_COLOR:I

.field private final BAR1_COLOR:I

.field private final BAR2_COLOR:I

.field private final BAR3_COLOR:I

.field private final OVAL_COLOR:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRectF:Landroid/graphics/RectF;

.field final synthetic this$1:Lcom/localytics/android/TestModeButton$TestModeDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/TestModeButton$TestModeDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0xd9

    const/16 v2, 0x8a

    const/16 v5, 0x46

    const/16 v1, 0x33

    const/16 v4, 0xff

    .line 356
    iput-object p1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->this$1:Lcom/localytics/android/TestModeButton$TestModeDialog;

    .line 357
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 343
    invoke-static {v4, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->BACKGROUND_COLOR:I

    .line 345
    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->BAR1_COLOR:I

    .line 346
    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->BAR2_COLOR:I

    .line 347
    const/16 v1, 0xdc

    const/16 v2, 0xdc

    const/16 v3, 0xdc

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->BAR3_COLOR:I

    .line 349
    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->OVAL_COLOR:I

    .line 360
    invoke-static {}, Lcom/localytics/android/DatapointHelper;->getApiLevel()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 362
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->setLayerType(ILandroid/graphics/Paint;)V

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 366
    .local v0, "dip":F
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x425c0000    # 55.0f

    mul-float/2addr v2, v0

    const/4 v3, 0x0

    const/high16 v4, 0x42820000    # 65.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x42700000    # 60.0f

    mul-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mRectF:Landroid/graphics/RectF;

    .line 367
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x42820000    # 65.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    .line 370
    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->BACKGROUND_COLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x42680000    # 58.0f

    const/high16 v10, 0x42580000    # 54.0f

    const/high16 v9, 0x427c0000    # 63.0f

    const/high16 v8, 0x426c0000    # 59.0f

    const/high16 v7, 0x42400000    # 48.0f

    .line 377
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 379
    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 381
    .local v6, "dip":F
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->BACKGROUND_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v0, 0x42700000    # 60.0f

    mul-float v3, v0, v6

    const/high16 v0, 0x42700000    # 60.0f

    mul-float v4, v0, v6

    iget-object v5, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 383
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mRectF:Landroid/graphics/RectF;

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v6

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v2, v6

    iget-object v3, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 386
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->BAR1_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    const/high16 v0, 0x40e00000    # 7.0f

    mul-float v1, v0, v6

    const/high16 v0, 0x42280000    # 42.0f

    mul-float v2, v0, v6

    const/high16 v0, 0x41500000    # 13.0f

    mul-float v3, v0, v6

    mul-float v4, v7, v6

    iget-object v5, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 390
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->BAR2_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    const/high16 v0, 0x41800000    # 16.0f

    mul-float v1, v0, v6

    const/high16 v0, 0x42100000    # 36.0f

    mul-float v2, v0, v6

    const/high16 v0, 0x41b00000    # 22.0f

    mul-float v3, v0, v6

    mul-float v4, v7, v6

    iget-object v5, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 394
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->BAR3_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float v1, v0, v6

    const/high16 v0, 0x41d80000    # 27.0f

    mul-float v2, v0, v6

    const/high16 v0, 0x41f80000    # 31.0f

    mul-float v3, v0, v6

    mul-float v4, v7, v6

    iget-object v5, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 398
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 399
    const/high16 v0, 0x42080000    # 34.0f

    mul-float v1, v0, v6

    const/high16 v0, 0x41400000    # 12.0f

    mul-float v2, v0, v6

    const/high16 v0, 0x42200000    # 40.0f

    mul-float v3, v0, v6

    mul-float v4, v7, v6

    iget-object v5, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 402
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 403
    const/high16 v0, 0x42140000    # 37.0f

    mul-float v1, v0, v6

    const/high16 v0, 0x42280000    # 42.0f

    mul-float v2, v0, v6

    const/high16 v0, 0x425c0000    # 55.0f

    mul-float v3, v0, v6

    mul-float v4, v7, v6

    iget-object v5, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 406
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->OVAL_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    new-instance v0, Landroid/graphics/RectF;

    mul-float v1, v8, v6

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v2, v6

    mul-float v3, v9, v6

    const/high16 v4, 0x42300000    # 44.0f

    mul-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 408
    new-instance v0, Landroid/graphics/RectF;

    mul-float v1, v8, v6

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v2, v6

    mul-float v3, v9, v6

    const/high16 v4, 0x42080000    # 34.0f

    mul-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 409
    new-instance v0, Landroid/graphics/RectF;

    mul-float v1, v8, v6

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v6

    mul-float v3, v9, v6

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 410
    new-instance v0, Landroid/graphics/RectF;

    mul-float v1, v8, v6

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v6

    mul-float v3, v9, v6

    const/high16 v4, 0x41600000    # 14.0f

    mul-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 411
    new-instance v0, Landroid/graphics/RectF;

    mul-float v1, v10, v6

    const/high16 v2, 0x420c0000    # 35.0f

    mul-float/2addr v2, v6

    mul-float v3, v11, v6

    const/high16 v4, 0x421c0000    # 39.0f

    mul-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 412
    new-instance v0, Landroid/graphics/RectF;

    mul-float v1, v10, v6

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, v6

    mul-float v3, v11, v6

    const/high16 v4, 0x41e80000    # 29.0f

    mul-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 413
    new-instance v0, Landroid/graphics/RectF;

    mul-float v1, v10, v6

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v2, v6

    mul-float v3, v11, v6

    const/high16 v4, 0x41980000    # 19.0f

    mul-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 414
    return-void
.end method
