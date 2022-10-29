.class public Lcom/nuance/swype/input/emoji/SkinToneView;
.super Landroid/view/View;
.source "SkinToneView.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private desiredHeight:I

.field private desiredWidth:I

.field private hasPosition:Z

.field private paint:Landroid/graphics/Paint;

.field private pos:[I

.field private r:Landroid/graphics/Rect;

.field private textScale:F

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string/jumbo v0, "SkinToneCustomView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/SkinToneView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->paint:Landroid/graphics/Paint;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->pos:[I

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->textScale:F

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->paint:Landroid/graphics/Paint;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->pos:[I

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->textScale:F

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/SkinToneView;->setWillNotDraw(Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->paint:Landroid/graphics/Paint;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->pos:[I

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->textScale:F

    .line 42
    return-void
.end method

.method private drawTextData(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 55
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 56
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 57
    .local v0, "cHeight":I
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 58
    .local v1, "cWidth":I
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 60
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, v8, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 61
    int-to-float v4, v1

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 62
    .local v2, "x":F
    int-to-float v4, v0

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->r:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 63
    .local v3, "y":F
    sget-object v4, Lcom/nuance/swype/input/emoji/SkinToneView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "drawCenter()"

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " called >>>>> x ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , y::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 64
    iget-boolean v4, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->hasPosition:Z

    if-eqz v4, :cond_88

    .line 65
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->pos:[I

    aget v4, v4, v8

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->pos:[I

    aget v5, v5, v9

    int-to-float v5, v5

    invoke-virtual {p1, p3, v4, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 69
    :goto_87
    return-void

    .line 67
    :cond_88
    invoke-virtual {p1, p3, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_87
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->value:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/input/emoji/SkinToneView;->drawTextData(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    .line 49
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 95
    .local v4, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 96
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 97
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 98
    .local v2, "heightSize":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " >>>>>>>> widthMode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , widthSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , heightMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , heightSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    if-ne v4, v9, :cond_74

    .line 106
    move v3, v5

    .line 116
    .local v3, "width":I
    :goto_43
    if-ne v1, v9, :cond_80

    .line 118
    move v0, v2

    .line 126
    .local v0, "height":I
    :goto_46
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " >>>>>>>> width="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/SkinToneView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/SkinToneView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/SkinToneView;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/SkinToneView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/input/emoji/SkinToneView;->setMeasuredDimension(II)V

    .line 130
    return-void

    .line 107
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_74
    if-ne v4, v8, :cond_7d

    .line 109
    iget v6, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->desiredWidth:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "width":I
    goto :goto_43

    .line 112
    .end local v3    # "width":I
    :cond_7d
    iget v3, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->desiredWidth:I

    .restart local v3    # "width":I
    goto :goto_43

    .line 119
    :cond_80
    if-ne v1, v8, :cond_89

    .line 121
    iget v6, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->desiredHeight:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_46

    .line 124
    .end local v0    # "height":I
    :cond_89
    iget v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->desiredHeight:I

    .restart local v0    # "height":I
    goto :goto_46
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "desiredHeight"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->desiredHeight:I

    .line 91
    return-void
.end method

.method public setPaintTextSize(F)V
    .registers 5
    .param p1, "textSizeUnscaled"    # F

    .prologue
    .line 72
    iget v1, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->textScale:F

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 73
    .local v0, "textSize":I
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->paint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    return-void
.end method

.method public setPosition(II)V
    .registers 6
    .param p1, "xPos"    # I
    .param p2, "yPos"    # I

    .prologue
    const/4 v2, 0x1

    .line 81
    iput-boolean v2, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->hasPosition:Z

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->pos:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->pos:[I

    aput p2, v0, v2

    .line 84
    return-void
.end method

.method public setTextValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->value:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/SkinToneView;->invalidate()V

    .line 78
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "desiredWidth"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/nuance/swype/input/emoji/SkinToneView;->desiredWidth:I

    .line 88
    return-void
.end method
