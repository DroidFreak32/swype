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

.field private tempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string/jumbo v0, "BasicViewLayout"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/BasicViewLayout;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode:Z

    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode:Z

    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    .line 55
    return-void
.end method

.method private confineHelper(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rc"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 222
    .local v0, "area":Landroid/graphics/Rect;
    if-eqz p2, :cond_9

    .line 223
    invoke-static {v0, p2}, Lcom/nuance/swype/util/GeomUtil;->expand(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 225
    :cond_9
    invoke-static {p1, v0}, Lcom/nuance/swype/util/GeomUtil;->confine(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 226
    return-void
.end method

.method public static getGravityBasedX(III)I
    .registers 5
    .param p0, "cx"    # I
    .param p1, "width"    # I
    .param p2, "grav"    # I

    .prologue
    .line 375
    and-int/lit8 v1, p2, 0x7

    .line 377
    packed-switch v1, :pswitch_data_10

    .line 386
    :pswitch_5
    sub-int v1, p1, p0

    div-int/lit8 v0, v1, 0x2

    .line 389
    .local v0, "x":I
    :goto_9
    return v0

    .line 379
    .end local v0    # "x":I
    :pswitch_a
    const/4 v0, 0x0

    .line 380
    .restart local v0    # "x":I
    goto :goto_9

    .line 382
    .end local v0    # "x":I
    :pswitch_c
    sub-int v0, p1, p0

    .line 383
    .restart local v0    # "x":I
    goto :goto_9

    .line 377
    nop

    :pswitch_data_10
    .packed-switch 0x800003
        :pswitch_a
        :pswitch_5
        :pswitch_c
    .end packed-switch
.end method

.method public static getGravityBasedY(III)I
    .registers 5
    .param p0, "cy"    # I
    .param p1, "height"    # I
    .param p2, "grav"    # I

    .prologue
    .line 393
    and-int/lit8 v1, p2, 0x70

    .line 395
    sparse-switch v1, :sswitch_data_10

    .line 404
    sub-int v1, p1, p0

    div-int/lit8 v0, v1, 0x2

    .line 407
    .local v0, "y":I
    :goto_9
    return v0

    .line 397
    .end local v0    # "y":I
    :sswitch_a
    const/4 v0, 0x0

    .line 398
    .restart local v0    # "y":I
    goto :goto_9

    .line 400
    .end local v0    # "y":I
    :sswitch_c
    sub-int v0, p1, p0

    .line 401
    .restart local v0    # "y":I
    goto :goto_9

    .line 395
    nop

    :sswitch_data_10
    .sparse-switch
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
    .end sparse-switch
.end method

.method public static getMeasuredRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 324
    .local v2, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 325
    .local v0, "cx":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 326
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

.method public static moveLayoutPos(Landroid/view/View;II)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 216
    .local v0, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    iget v1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 217
    iget v1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 218
    return-void
.end method

.method public static newLayoutParams(II)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    const/4 v1, -0x2

    .line 183
    new-instance v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public static newLayoutParams(IIII)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 187
    new-instance v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public static newLayoutParams(Landroid/graphics/Rect;)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    .registers 5
    .param p0, "rc"    # Landroid/graphics/Rect;

    .prologue
    .line 191
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
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 303
    .local v0, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    if-nez v0, :cond_11

    .line 306
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "View layout params must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_11
    iput p1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 309
    iput p2, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 311
    return-void
.end method

.method public static setGeometry(Landroid/view/View;IIII)V
    .registers 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 285
    .local v0, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    if-nez v0, :cond_11

    .line 288
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "View layout params must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_11
    iput p1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 291
    iput p2, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 292
    iput p3, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->width:I

    .line 293
    iput p4, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->height:I

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 295
    return-void
.end method

.method public static setGeometry(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "rc"    # Landroid/graphics/Rect;

    .prologue
    .line 314
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->setGeometry(Landroid/view/View;IIII)V

    .line 315
    return-void
.end method

.method protected static setLayoutPos(Landroid/view/View;II)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 199
    .local v0, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    iput p1, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 200
    iput p2, v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 201
    return-void
.end method

.method public static setPos(Landroid/view/View;II)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 207
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/view/BasicViewLayout;->setLayoutPos(Landroid/view/View;II)V

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 209
    return-void
.end method


# virtual methods
.method protected adjustConfine(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 5
    .param p1, "rc"    # Landroid/graphics/Rect;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 233
    invoke-static {p1, p3, p4}, Lcom/nuance/swype/util/GeomUtil;->moveRectBy(Landroid/graphics/Rect;II)V

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/view/BasicViewLayout;->confineHelper(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 235
    return-object p1
.end method

.method public adjustConfine([IIILandroid/graphics/Rect;II)V
    .registers 11
    .param p1, "pos"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "insets"    # Landroid/graphics/Rect;
    .param p5, "dx"    # I
    .param p6, "dy"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    aget v1, p1, v2

    add-int/2addr v1, p5

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 241
    iget-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    aget v1, p1, v3

    add-int/2addr v1, p6

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 242
    iget-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 243
    iget-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 244
    iget-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p4}, Lcom/nuance/swype/view/BasicViewLayout;->confineHelper(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 245
    iget-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    aput v0, p1, v2

    .line 246
    iget-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->tempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    aput v0, p1, v3

    .line 247
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 166
    instance-of v0, p1, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    return v0
.end method

.method protected drawDebug(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 73
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

    .line 74
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 73
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    iget-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->borderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    :cond_2a
    return-void
.end method

.method protected enableDebugMode()V
    .registers 3

    .prologue
    .line 59
    const/16 v0, -0x100

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/view/BasicViewLayout;->enableDebugMode(II)V

    .line 60
    return-void
.end method

.method protected enableDebugMode(II)V
    .registers 6
    .param p1, "color"    # I
    .param p2, "thickness"    # I

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode:Z

    .line 1019
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1020
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 1021
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1022
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1023
    int-to-float v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1024
    const/16 v2, 0xdc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    iput-object v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->borderDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    return-void
.end method

.method protected final enableHardwareLayer()V
    .registers 4

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .local v0, "layerPaint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 49
    invoke-static {p0, v0}, Lcom/nuance/android/compat/ViewCompat;->enableHardwareLayer(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 50
    return-void
.end method

.method protected final enableOrDisableOnDraw()V
    .registers 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->isDrawNeeded()Z

    move-result v0

    .line 97
    .local v0, "enableDraw":Z
    if-nez v0, :cond_b

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {p0, v1}, Lcom/nuance/swype/view/BasicViewLayout;->setWillNotDraw(Z)V

    .line 98
    return-void

    .line 97
    :cond_b
    const/4 v1, 0x0

    goto :goto_7
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-static {v0, v0}, Lcom/nuance/swype/view/BasicViewLayout;->newLayoutParams(II)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/nuance/swype/view/BasicViewLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 155
    new-instance v0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getConfined(Landroid/view/View;Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 250
    invoke-static {p1}, Lcom/nuance/swype/util/GeomUtil;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/nuance/swype/view/BasicViewLayout;->adjustConfine(Landroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDimsRect()Landroid/graphics/Rect;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected invalidateDebugRect()V
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 82
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->invalidate()V

    .line 84
    :cond_9
    return-void
.end method

.method public isDebugMode()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode:Z

    return v0
.end method

.method protected isDrawNeeded()Z
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->isDebugMode()Z

    move-result v0

    return v0
.end method

.method public layoutChild(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;

    .line 110
    .local v2, "params":Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 111
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 112
    .local v1, "cy":I
    iget v3, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    iget v4, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    iget v5, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    add-int/2addr v5, v0

    iget v6, v2, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    add-int/2addr v6, v1

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 113
    return-void
.end method

.method public moveConfine(Landroid/view/View;Landroid/graphics/Rect;II)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nuance/swype/view/BasicViewLayout;->getConfined(Landroid/view/View;Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 258
    .local v0, "rc":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/view/BasicViewLayout;->setPos(Landroid/view/View;II)V

    .line 259
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 103
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->enableOrDisableOnDraw()V

    .line 105
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/nuance/swype/view/BasicViewLayout;->drawDebug(Landroid/graphics/Canvas;)V

    .line 179
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getChildCount()I

    move-result v1

    .line 121
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_5
    if-ge v2, v1, :cond_19

    .line 122
    invoke-virtual {p0, v2}, Lcom/nuance/swype/view/BasicViewLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_16

    .line 124
    invoke-virtual {p0, v0}, Lcom/nuance/swype/view/BasicViewLayout;->layoutChild(Landroid/view/View;)V

    .line 121
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 127
    .end local v0    # "child":Landroid/view/View;
    :cond_19
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/view/BasicViewLayout;->measureChildren(II)V

    .line 146
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getSuggestedMinimumWidth()I

    move-result v1

    .line 147
    .local v1, "minWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getSuggestedMinimumHeight()I

    move-result v0

    .line 149
    .local v0, "minHeight":I
    invoke-static {v1, p1}, Lcom/nuance/swype/util/ViewUtil;->getDefaultSizePreferMin(II)I

    move-result v2

    .line 150
    invoke-static {v0, p2}, Lcom/nuance/swype/util/ViewUtil;->getDefaultSizePreferMin(II)I

    move-result v3

    .line 149
    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->setMeasuredDimension(II)V

    .line 151
    return-void
.end method

.method public setLayoutConfined(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "confinePadding"    # I

    .prologue
    .line 337
    invoke-static {p1}, Lcom/nuance/swype/view/BasicViewLayout;->getMeasuredRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 339
    .local v0, "child":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getDimsRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 340
    .local v1, "parent":Landroid/graphics/Rect;
    if-eqz p2, :cond_d

    .line 341
    invoke-static {v1, p2}, Lcom/nuance/swype/util/GeomUtil;->expand(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 345
    :cond_d
    invoke-static {v0, v1, p3}, Lcom/nuance/swype/util/GeomUtil;->confine(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 346
    sget-object v2, Lcom/nuance/swype/view/BasicViewLayout;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setLayoutConfined(): confining: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " within "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 350
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->setLayoutPos(Landroid/view/View;II)V

    .line 352
    :cond_48
    return-void
.end method

.method public setLayoutDocked(Landroid/view/View;I)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dockGravity"    # I

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 364
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 366
    .local v1, "cy":I
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/nuance/swype/view/BasicViewLayout;->getGravityBasedX(III)I

    move-result v2

    .line 367
    .local v2, "x":I
    invoke-virtual {p0}, Lcom/nuance/swype/view/BasicViewLayout;->getMeasuredHeight()I

    move-result v4

    invoke-static {v1, v4, p2}, Lcom/nuance/swype/view/BasicViewLayout;->getGravityBasedY(III)I

    move-result v3

    .line 371
    .local v3, "y":I
    invoke-static {p1, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->setLayoutPos(Landroid/view/View;II)V

    .line 372
    return-void
.end method

.method protected setLayoutPosConfine(Landroid/view/View;Landroid/graphics/Rect;II)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 265
    invoke-static {p1}, Lcom/nuance/swype/util/GeomUtil;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 266
    .local v0, "rc":Landroid/graphics/Rect;
    invoke-static {v0, p3, p4}, Lcom/nuance/swype/util/GeomUtil;->moveRectTo(Landroid/graphics/Rect;II)V

    .line 267
    invoke-direct {p0, v0, p2}, Lcom/nuance/swype/view/BasicViewLayout;->confineHelper(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 268
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v1, v2}, Lcom/nuance/swype/view/BasicViewLayout;->setLayoutPos(Landroid/view/View;II)V

    .line 269
    return-void
.end method

.method public setLayoutPosConfineBot(Landroid/view/View;Landroid/graphics/Rect;II)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "x"    # I
    .param p4, "yBot"    # I

    .prologue
    .line 272
    invoke-static {p1}, Lcom/nuance/swype/util/GeomUtil;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 273
    .local v0, "rc":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v1, p4, v2

    .line 274
    .local v1, "y":I
    invoke-static {v0, p3, v1}, Lcom/nuance/swype/util/GeomUtil;->moveRectTo(Landroid/graphics/Rect;II)V

    .line 275
    invoke-direct {p0, v0, p2}, Lcom/nuance/swype/view/BasicViewLayout;->confineHelper(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 276
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v2, v3}, Lcom/nuance/swype/view/BasicViewLayout;->setLayoutPos(Landroid/view/View;II)V

    .line 277
    return-void
.end method
