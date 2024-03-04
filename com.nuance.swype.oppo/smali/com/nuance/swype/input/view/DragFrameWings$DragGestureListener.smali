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
    accessFlags = 0x0
    name = "DragGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/view/DragFrameWings;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/view/DragFrameWings;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/view/DragFrameWings;Lcom/nuance/swype/input/view/DragFrameWings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/view/DragFrameWings;
    .param p2, "x1"    # Lcom/nuance/swype/input/view/DragFrameWings$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;-><init>(Lcom/nuance/swype/input/view/DragFrameWings;)V

    return-void
.end method


# virtual methods
.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-static {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->access$100(Lcom/nuance/swype/input/view/DragFrameWings;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 80
    invoke-static {}, Lcom/nuance/swype/input/view/DragFrameWings;->access$200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "onBeginDrag(): unexpected (drag is active)"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->onEndDrag(Landroid/view/View;)V

    .line 90
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-static {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->access$100(Lcom/nuance/swype/input/view/DragFrameWings;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/view/DragFrameWings;->access$102(Lcom/nuance/swype/input/view/DragFrameWings;Landroid/view/View;)Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->notifyDragBegin()V

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lcom/nuance/swype/input/view/DragFrameWings;->access$200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "onBeginDrag(): ignore event (already dragging)"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDrag(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-static {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->access$100(Lcom/nuance/swype/input/view/DragFrameWings;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-virtual {v0, p2, p3}, Lcom/nuance/swype/input/view/DragFrameWings;->notifyDrag(II)V

    .line 97
    :cond_0
    return-void
.end method

.method public onEndDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-static {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->access$100(Lcom/nuance/swype/input/view/DragFrameWings;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/DragFrameWings;->notifyDragEnd()V

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/view/DragFrameWings$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/DragFrameWings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/DragFrameWings;->access$102(Lcom/nuance/swype/input/view/DragFrameWings;Landroid/view/View;)Landroid/view/View;

    .line 105
    :cond_0
    return-void
.end method
