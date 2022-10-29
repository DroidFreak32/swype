.class public Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;
.super Landroid/widget/LinearLayout;
.source "SymbolInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/view/DragHelper$DragVisualizer;


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private dragHelper:Lcom/nuance/swype/input/view/DragHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-string/jumbo v0, "SymbolInputView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/view/DragHelper;->shouldUseDragPaint(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 38
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/DragHelper;->getDragPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 39
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 44
    :goto_1e
    return-void

    .line 42
    :cond_1f
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_1e
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 55
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 48
    sget-object v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onLayout(): ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "); "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, p4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, p5, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 49
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 50
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 62
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public setDragHelper(Lcom/nuance/swype/input/view/DragHelper;)V
    .registers 2
    .param p1, "dragHelper"    # Lcom/nuance/swype/input/view/DragHelper;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    .line 32
    return-void
.end method
