.class public Lcom/nuance/swype/view/BasicViewLayout;
.super Landroid/view/ViewGroup;
.source "BasicViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private borderDrawable:Landroid/graphics/drawable/Drawable;

.field private isDebugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "BasicViewLayout"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/BasicViewLayout;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode:Z

    .line 50
    return-void
.end method

.method private confineHelper(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rc"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 264
    .local v0, "area":Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    .line 265
    invoke-static {v0, p2}, Landroid/support/v4/app/ActivityCompatHoneycomb;->expand(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 267
    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->confine(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 268
    return-void
.end method

.method public static getGravityBasedX(III)I
    .locals 2
    .param p0, "cx"    # I
    .param p1, "width"    # I
    .param p2, "grav"    # I

    .prologue
    .line 392
    and-int/lit8 v1, p2, 0x7

    .line 394
    packed-switch v1, :pswitch_data_0

    .line 403
    :pswitch_0
    sub-int v1, p1, p0

    div-int/lit8 v0, v1, 0x2

    .line 406
    .local v0, "x":I
    :goto_0
    return v0

    .line 396
    .end local v0    # "x":I
    :pswitch_1
    const/4 v0, 0x0

    .line 397
    .restart local v0    # "x":I
    goto :goto_0

    .line 399
    .end local v0    # "x":I
    :pswitch_2
    sub-int v0, p1, p0

    .line 400
    .restart local v0    # "x":I
    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getGravityBasedY(III)I
    .locals 2
    .param p0, "cy"    # I
    .param p1, "height"    # I
    .param p2, "grav"    # I

    .prologue
    .line 410
    and-int/lit8 v1, p2, 0x70

    .line 412
    sparse-switch v1, :sswitch_data_0

    .line 421
    sub-int v1, p1, p0

    div-int/lit8 v0, v1, 0x2

    .line 424
    .local v0, "y":I
    :goto_0
    return v0

    .line 414
    .end local v0    # "y":I
    :sswitch_0
    const/4 v0, 0x0

    .line 415
    .restart local v0    # "y":I
    goto :goto_0

    .line 417
    .end local v0    # "y":I
    :sswitch_1
    sub-int v0, p1, p0

    .line 418
    .restart local v0    # "y":I
    goto :goto_0

    .line 412
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getLayoutRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 276
    .local v0, "lp":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    iget v3, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    iget v4, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method protected static getMeasuredRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 337
    .local v2, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 338
    .local v0, "cx":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 339
    .local v1, "cy":I
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    iget v5, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    iget v6, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    add-int/2addr v6, v0

    iget v7, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    add-int/2addr v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private static getMyDefaultSize(II)I
    .locals 3
    .param p0, "minSize"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 165
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 167
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 169
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 174
    move v0, p0

    .line 191
    .local v0, "result":I
    :goto_0
    return v0

    .line 178
    .end local v0    # "result":I
    :sswitch_0
    if-lez p0, :cond_0

    .line 180
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "result":I
    goto :goto_0

    .line 182
    .end local v0    # "result":I
    :cond_0
    move v0, v2

    .line 184
    .restart local v0    # "result":I
    goto :goto_0

    .line 188
    .end local v0    # "result":I
    :sswitch_1
    move v0, v2

    .restart local v0    # "result":I
    goto :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static moveLayoutPos(Landroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 258
    .local v0, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    iget v1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 259
    iget v1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 260
    return-void
.end method

.method public static newLayoutParams(II)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    const/4 v1, -0x2

    .line 224
    new-instance v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public static newLayoutParams(IIII)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 228
    new-instance v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public static newLayoutParams(Landroid/graphics/Rect;)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    .locals 4
    .param p0, "rc"    # Landroid/graphics/Rect;

    .prologue
    .line 232
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->newLayoutParams(IIII)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static setGeometry(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 321
    .local v0, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    iput p1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 322
    iput p2, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 324
    return-void
.end method

.method public static setGeometry(Landroid/view/View;IIII)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 308
    .local v0, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    iput p1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 309
    iput p2, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 310
    iput p3, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->width:I

    .line 311
    iput p4, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->height:I

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 313
    return-void
.end method

.method public static setGeometry(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rc"    # Landroid/graphics/Rect;

    .prologue
    .line 327
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->setGeometry(Landroid/view/View;IIII)V

    .line 328
    return-void
.end method

.method protected static setLayoutPos(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 241
    .local v0, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    iput p1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 242
    iput p2, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 243
    return-void
.end method

.method public static setPos(Landroid/view/View;II)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 249
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/view/BasicViewLayout;->setLayoutPos(Landroid/view/View;II)V

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 251
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 207
    instance-of v0, p1, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    return v0
.end method

.method protected drawDebug(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->borderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    iget-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->borderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected enableDebugMode()V
    .locals 2

    .prologue
    .line 53
    const/16 v0, -0x100

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/view/BasicViewLayout;->enableDebugMode(II)V

    .line 54
    return-void
.end method

.method protected enableDebugMode(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "thickness"    # I

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode:Z

    .line 58
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v2, 0xdc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iput-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->borderDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    return-void
.end method

.method protected final enableHardwareAccel()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .local v0, "layerPaint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 44
    invoke-static {p0, v0}, Lcom/nuance/android/compat/ViewCompat;->enableHardwareAccel(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method protected final enableOrDisableOnDraw()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->isDrawNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/view/BasicViewLayout;->setWillNotDraw(Z)V

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-static {v0, v0}, Lcom/nuance/swype/view/BasicViewLayout;->newLayoutParams(II)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/nuance/swype/view/BasicViewLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 196
    new-instance v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getDimsRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 332
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 6

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 153
    :goto_0
    return v2

    .line 151
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/view/BasicViewLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 153
    iget v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected invalidateDebugRect()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->invalidate()V

    .line 78
    :cond_0
    return-void
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode:Z

    return v0
.end method

.method protected isDrawNeeded()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode()Z

    move-result v0

    return v0
.end method

.method protected layoutChild(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 98
    .local v2, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 99
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 100
    .local v1, "cy":I
    iget v3, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    iget v4, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    iget v5, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    add-int/2addr v5, v0

    iget v6, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    add-int/2addr v6, v1

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 101
    return-void
.end method

.method protected moveConfine(Landroid/view/View;Landroid/graphics/Rect;II)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 284
    invoke-static {p1}, Lcom/nuance/swype/view/BasicViewLayout;->getLayoutRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 285
    .local v0, "rc":Landroid/graphics/Rect;
    invoke-static {v0, p3, p4}, Landroid/support/v4/app/ActivityCompatHoneycomb;->moveRectBy(Landroid/graphics/Rect;II)V

    .line 286
    invoke-direct {p0, v0, p2}, Lcom/nuance/swype/view/BasicViewLayout;->confineHelper(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 287
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/view/BasicViewLayout;->setPos(Landroid/view/View;II)V

    .line 288
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 91
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->enableOrDisableOnDraw()V

    .line 93
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/nuance/swype/view/BasicViewLayout;->drawDebug(Landroid/graphics/Canvas;)V

    .line 220
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getChildCount()I

    move-result v1

    .line 109
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Lcom/nuance/swype/view/BasicViewLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Lcom/nuance/swype/view/BasicViewLayout;->layoutChild(Landroid/view/View;)V

    .line 109
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/view/BasicViewLayout;->measureChildren(II)V

    .line 132
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getSuggestedMinimumWidth()I

    move-result v1

    .line 133
    .local v1, "minWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getSuggestedMinimumHeight()I

    move-result v0

    .line 135
    .local v0, "minHeight":I
    invoke-static {v1, p1}, Lcom/nuance/swype/view/BasicViewLayout;->getMyDefaultSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lcom/nuance/swype/view/BasicViewLayout;->getMyDefaultSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->setMeasuredDimension(II)V

    .line 137
    return-void
.end method

.method public setLayoutConfined(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "confinePadding"    # I

    .prologue
    .line 350
    invoke-static {p1}, Lcom/nuance/swype/view/BasicViewLayout;->getMeasuredRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 352
    .local v0, "child":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 355
    .local v1, "parent":Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    .line 356
    invoke-static {v1, p2}, Landroid/support/v4/app/ActivityCompatHoneycomb;->expand(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 360
    :cond_0
    invoke-static {v0, v1, p3}, Landroid/support/v4/app/ActivityCompatHoneycomb;->confine(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->setLayoutPos(Landroid/view/View;II)V

    .line 367
    :cond_1
    return-void
.end method

.method protected setLayoutDocked(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dockGravity"    # I

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 381
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 383
    .local v1, "cy":I
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/nuance/swype/view/BasicViewLayout;->getGravityBasedX(III)I

    move-result v2

    .line 384
    .local v2, "x":I
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4, p2}, Lcom/nuance/swype/view/BasicViewLayout;->getGravityBasedY(III)I

    move-result v3

    .line 388
    .local v3, "y":I
    invoke-static {p1, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->setLayoutPos(Landroid/view/View;II)V

    .line 389
    return-void
.end method

.method protected setLayoutPosConfine(Landroid/view/View;Landroid/graphics/Rect;III)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 294
    invoke-static {p1}, Lcom/nuance/swype/view/BasicViewLayout;->getLayoutRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 296
    .local v0, "rc":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int p4, p5, v1

    .line 297
    invoke-static {v0, p3, p4}, Landroid/support/v4/app/ActivityCompatHoneycomb;->moveRectTo(Landroid/graphics/Rect;II)V

    .line 298
    invoke-direct {p0, v0, p2}, Lcom/nuance/swype/view/BasicViewLayout;->confineHelper(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 299
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/view/BasicViewLayout;->setLayoutPos(Landroid/view/View;II)V

    .line 300
    return-void
.end method
