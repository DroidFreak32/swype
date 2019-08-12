.class Lcom/nuance/swype/input/view/GripPad$DragGestureListener;
.super Ljava/lang/Object;
.source "GripPad.java"

# interfaces
.implements Lcom/nuance/swype/input/DragGesture$IDragGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/view/GripPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/view/GripPad;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/view/GripPad;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/view/GripPad;Lcom/nuance/swype/input/view/GripPad$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/view/GripPad;
    .param p2, "x1"    # Lcom/nuance/swype/input/view/GripPad$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;-><init>(Lcom/nuance/swype/input/view/GripPad;)V

    return-void
.end method


# virtual methods
.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-static {v0}, Lcom/nuance/swype/input/view/GripPad;->access$100(Lcom/nuance/swype/input/view/GripPad;)Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-static {v0}, Lcom/nuance/swype/input/view/GripPad;->access$100(Lcom/nuance/swype/input/view/GripPad;)Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/view/GripPad$GripButtonListener;->onDragBegin(Landroid/view/View;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onDrag(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-static {v0}, Lcom/nuance/swype/input/view/GripPad;->access$100(Lcom/nuance/swype/input/view/GripPad;)Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-static {v0}, Lcom/nuance/swype/input/view/GripPad;->access$100(Lcom/nuance/swype/input/view/GripPad;)Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-interface {v0, v1, p2, p3}, Lcom/nuance/swype/input/view/GripPad$GripButtonListener;->onDrag(Landroid/view/View;II)V

    .line 199
    :cond_0
    return-void
.end method

.method public onEndDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-static {v0}, Lcom/nuance/swype/input/view/GripPad;->access$100(Lcom/nuance/swype/input/view/GripPad;)Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-static {v0}, Lcom/nuance/swype/input/view/GripPad;->access$100(Lcom/nuance/swype/input/view/GripPad;)Lcom/nuance/swype/input/view/GripPad$GripButtonListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/view/GripPad$DragGestureListener;->this$0:Lcom/nuance/swype/input/view/GripPad;

    invoke-interface {v0, v1}, Lcom/nuance/swype/input/view/GripPad$GripButtonListener;->onDragEnd(Landroid/view/View;)V

    .line 208
    :cond_0
    return-void
.end method
