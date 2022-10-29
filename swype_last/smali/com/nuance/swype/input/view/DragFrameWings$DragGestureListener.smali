.class Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;
.super Ljava/lang/Object;
.source "DragFrameWings.java"

# interfaces
.implements Lcom/nuance/swype/input/DragGesture$IDragGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/view/DragFrameWings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/view/DragFrameWings;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/view/DragFrameWings;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/view/DragFrameWings;Lcom/nuance/swype/input/view/DragFrameWings$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/view/DragFrameWings;
    .param p2, "x1"    # Lcom/nuance/swype/input/view/DragFrameWings$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;-><init>(Lcom/nuance/swype/input/view/DragFrameWings;)V

    return-void
.end method


# virtual methods
.method public onBeginDrag(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    # getter for: Lcom/nuance/swype/input/view/DragFrameWings;->activeGrip:Landroid/view/View;
    invoke-static {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->access$100(Lcom/nuance/swype/input/view/DragFrameWings;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1c

    .line 79
    # getter for: Lcom/nuance/swype/input/view/DragFrameWings;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/view/DragFrameWings;->access$200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onBeginDrag(): unexpected (drag is active)"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->onEndDrag(Landroid/view/View;)V

    .line 89
    :goto_1b
    return-void

    .line 83
    :cond_1c
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    # getter for: Lcom/nuance/swype/input/view/DragFrameWings;->activeGrip:Landroid/view/View;
    invoke-static {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->access$100(Lcom/nuance/swype/input/view/DragFrameWings;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    # setter for: Lcom/nuance/swype/input/view/DragFrameWings;->activeGrip:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/nuance/swype/input/view/DragFrameWings;->access$102(Lcom/nuance/swype/input/view/DragFrameWings;Landroid/view/View;)Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->notifyDragBegin()V

    goto :goto_1b

    .line 87
    :cond_2f
    # getter for: Lcom/nuance/swype/input/view/DragFrameWings;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/view/DragFrameWings;->access$200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onBeginDrag(): ignore event (already dragging)"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public onDrag(Landroid/view/View;II)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    # getter for: Lcom/nuance/swype/input/view/DragFrameWings;->activeGrip:Landroid/view/View;
    invoke-static {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->access$100(Lcom/nuance/swype/input/view/DragFrameWings;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_d

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-virtual {v0, p2, p3}, Lcom/nuance/swype/input/view/DragFrameWings;->notifyDrag(II)V

    .line 96
    :cond_d
    return-void
.end method

.method public onEndDrag(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    # getter for: Lcom/nuance/swype/input/view/DragFrameWings;->activeGrip:Landroid/view/View;
    invoke-static {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->access$100(Lcom/nuance/swype/input/view/DragFrameWings;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_13

    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->notifyDragEnd()V

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/swype/input/view/DragFrameWings;->activeGrip:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/DragFrameWings;->access$102(Lcom/nuance/swype/input/view/DragFrameWings;Landroid/view/View;)Landroid/view/View;

    .line 104
    :cond_13
    return-void
.end method
