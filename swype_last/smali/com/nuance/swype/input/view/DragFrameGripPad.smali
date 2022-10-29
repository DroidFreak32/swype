.class public Lcom/nuance/swype/input/view/DragFrameGripPad;
.super Lcom/nuance/swype/input/view/DragFrame;
.source "DragFrameGripPad.java"

# interfaces
.implements Lcom/nuance/swype/input/view/GripPad$GripButtonListener;


# instance fields
.field private dragging:Z

.field private gripPad:Lcom/nuance/swype/input/view/GripPad;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/DragFrame;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->dragging:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/view/DragFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->dragging:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getGripHeight()I
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "grip"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/DragFrameGripPad;->notifyClick()V

    .line 68
    return-void
.end method

.method public onDrag(Landroid/view/View;II)V
    .registers 5
    .param p1, "grip"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->dragging:Z

    if-eqz v0, :cond_7

    .line 53
    invoke-virtual {p0, p2, p3}, Lcom/nuance/swype/input/view/DragFrameGripPad;->notifyDrag(II)V

    .line 55
    :cond_7
    return-void
.end method

.method public onDragBegin(Landroid/view/View;)V
    .registers 3
    .param p1, "grip"    # Landroid/view/View;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->dragging:Z

    if-nez v0, :cond_a

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->dragging:Z

    .line 46
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/DragFrameGripPad;->notifyDragBegin()V

    .line 48
    :cond_a
    return-void
.end method

.method public onDragEnd(Landroid/view/View;)V
    .registers 3
    .param p1, "grip"    # Landroid/view/View;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->dragging:Z

    if-eqz v0, :cond_7

    .line 60
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/DragFrameGripPad;->notifyDragEnd()V

    .line 62
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->dragging:Z

    .line 63
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/nuance/swype/input/view/DragFrame;->onFinishInflate()V

    .line 34
    sget v0, Lcom/nuance/swype/input/R$id;->grip_pad:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/DragFrameGripPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/view/GripPad;

    iput-object v0, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/view/GripPad;->setDragListener(Lcom/nuance/swype/input/view/GripPad$GripButtonListener;)V

    .line 36
    return-void
.end method

.method public setGripIsDrag(ZZ)V
    .registers 4
    .param p1, "isDrag"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/GripPad;->setGripIsDrag(ZZ)V

    .line 29
    return-void
.end method

.method public showDecoration(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 40
    iget-object v1, p0, Lcom/nuance/swype/input/view/DragFrameGripPad;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/view/GripPad;->setVisibility(I)V

    .line 41
    return-void

    .line 40
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method
