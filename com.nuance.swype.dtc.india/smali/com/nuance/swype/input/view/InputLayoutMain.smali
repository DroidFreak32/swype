.class public Lcom/nuance/swype/input/view/InputLayoutMain;
.super Landroid/widget/FrameLayout;
.source "InputLayoutMain.java"

# interfaces
.implements Lcom/nuance/swype/input/view/InputLayout$DragListener;


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private contentArea:Landroid/view/View;

.field private coverFrame:Landroid/view/View;

.field private isDragging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "InputLayoutMain"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/view/InputLayoutMain;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onBeginDrag()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayoutMain;->isDragging:Z

    .line 44
    return-void
.end method

.method public onDrag(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 49
    return-void
.end method

.method public onEndDrag()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayoutMain;->isDragging:Z

    .line 54
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 71
    sget v0, Lcom/nuance/swype/input/R$id;->content_area:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayoutMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayoutMain;->contentArea:Landroid/view/View;

    .line 72
    sget v0, Lcom/nuance/swype/input/R$id;->coverview_container:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayoutMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayoutMain;->coverFrame:Landroid/view/View;

    .line 73
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayoutMain;->isDragging:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayoutMain;->contentArea:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/nuance/swype/input/view/InputLayoutMain;->measureChild(Landroid/view/View;II)V

    .line 79
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayoutMain;->coverFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 80
    .local v0, "coverFrameParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayoutMain;->contentArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 81
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayoutMain;->contentArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 84
    return-void
.end method

.method public onSnapToEdge(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 59
    return-void
.end method
