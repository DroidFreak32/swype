.class Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;
.super Ljava/lang/Object;
.source "EmojiGridCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiGridCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextBitmap"
.end annotation


# instance fields
.field private final baselineOffset:I

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final xOriginOffset:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->bitmapPaint:Landroid/graphics/Paint;

    .line 436
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "TextBitmap(): called  : bounds.top: "

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",bounds.left= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 437
    iget v0, p1, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->baselineOffset:I

    .line 438
    iget v0, p1, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->xOriginOffset:I

    .line 439
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "TextBitmap(): called  : baselineOffset: "

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->baselineOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",xOriginOffset= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->xOriginOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 441
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 442
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->xOriginOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->baselineOffset:I

    int-to-float v2, v2

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 443
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;II)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 446
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "TextBitmap(): called  : x: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",y= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->xOriginOffset:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->baselineOffset:I

    sub-int v2, p3, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 448
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 452
    return-void
.end method
