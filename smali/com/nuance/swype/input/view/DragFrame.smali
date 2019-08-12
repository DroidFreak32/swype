.class public abstract Lcom/nuance/swype/input/view/DragFrame;
.super Landroid/widget/LinearLayout;
.source "DragFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;
    }
.end annotation


# instance fields
.field private contentFrame:Landroid/widget/FrameLayout;

.field private contentView:Landroid/view/View;

.field private dragListener:Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

.field private gripPad:Lcom/nuance/swype/input/view/GripPad;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method private newFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 82
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getGripHeight()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/GripPad;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/GripPad;->getHeight()I

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyClick()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->dragListener:Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->dragListener:Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    iget-object v1, p0, Lcom/nuance/swype/input/view/DragFrame;->contentView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;->onClick(Landroid/view/View;)V

    .line 37
    :cond_0
    return-void
.end method

.method protected notifyDrag(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->dragListener:Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->dragListener:Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    iget-object v1, p0, Lcom/nuance/swype/input/view/DragFrame;->contentView:Landroid/view/View;

    invoke-interface {v0, v1, p1, p2}, Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;->onDrag(Landroid/view/View;II)V

    .line 49
    :cond_0
    return-void
.end method

.method protected notifyDragBegin()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->dragListener:Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->dragListener:Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    iget-object v1, p0, Lcom/nuance/swype/input/view/DragFrame;->contentView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;->onDragBegin(Landroid/view/View;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected notifyDragEnd()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->dragListener:Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->dragListener:Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    iget-object v1, p0, Lcom/nuance/swype/input/view/DragFrame;->contentView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;->onDragEnd(Landroid/view/View;)V

    .line 55
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 76
    sget v0, Lcom/nuance/swype/input/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/DragFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->contentFrame:Landroid/widget/FrameLayout;

    .line 77
    sget v0, Lcom/nuance/swype/input/R$id;->content_area:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/DragFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->contentView:Landroid/view/View;

    .line 78
    sget v0, Lcom/nuance/swype/input/R$id;->grip_pad:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/DragFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/view/GripPad;

    iput-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    .line 79
    return-void
.end method

.method public setContentView(Lcom/nuance/swype/input/view/InputLayout;)V
    .locals 2
    .param p1, "view"    # Lcom/nuance/swype/input/view/InputLayout;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->contentFrame:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout has no frame"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/input/view/DragFrame;->contentView:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->contentFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->contentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 98
    if-eqz p1, :cond_2

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->contentFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/nuance/swype/input/view/DragFrame;->newFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->contentFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrame;->contentFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDragListener(Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;)V
    .locals 0
    .param p1, "dragListener"    # Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nuance/swype/input/view/DragFrame;->dragListener:Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    .line 67
    return-void
.end method

.method public showDecoration(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
