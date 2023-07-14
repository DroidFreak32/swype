.class public Lcom/nuance/swype/input/DragGesture;
.super Ljava/lang/Object;
.source "DragGesture.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/DragGesture$IDragGestureListener;
    }
.end annotation


# instance fields
.field private lastTouchX:I

.field private lastTouchY:I

.field private final listener:Lcom/nuance/swype/input/DragGesture$IDragGestureListener;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/DragGesture$IDragGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/DragGesture$IDragGestureListener;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/nuance/swype/input/DragGesture;->listener:Lcom/nuance/swype/input/DragGesture$IDragGestureListener;

    .line 23
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 29
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 30
    .local v1, "touchX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 32
    .local v2, "touchY":I
    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return v6

    .line 34
    :pswitch_0
    iput v1, p0, Lcom/nuance/swype/input/DragGesture;->lastTouchX:I

    .line 35
    iput v2, p0, Lcom/nuance/swype/input/DragGesture;->lastTouchY:I

    .line 36
    iget-object v3, p0, Lcom/nuance/swype/input/DragGesture;->listener:Lcom/nuance/swype/input/DragGesture$IDragGestureListener;

    if-eqz v3, :cond_0

    .line 37
    iget-object v3, p0, Lcom/nuance/swype/input/DragGesture;->listener:Lcom/nuance/swype/input/DragGesture$IDragGestureListener;

    invoke-interface {v3, p1}, Lcom/nuance/swype/input/DragGesture$IDragGestureListener;->onBeginDrag(Landroid/view/View;)V

    .line 39
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v3, p0, Lcom/nuance/swype/input/DragGesture;->listener:Lcom/nuance/swype/input/DragGesture$IDragGestureListener;

    if-eqz v3, :cond_1

    .line 44
    iget-object v3, p0, Lcom/nuance/swype/input/DragGesture;->listener:Lcom/nuance/swype/input/DragGesture$IDragGestureListener;

    iget v4, p0, Lcom/nuance/swype/input/DragGesture;->lastTouchX:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/nuance/swype/input/DragGesture;->lastTouchY:I

    sub-int v5, v2, v5

    invoke-interface {v3, p1, v4, v5}, Lcom/nuance/swype/input/DragGesture$IDragGestureListener;->onDrag(Landroid/view/View;II)V

    .line 46
    :cond_1
    iput v1, p0, Lcom/nuance/swype/input/DragGesture;->lastTouchX:I

    .line 47
    iput v2, p0, Lcom/nuance/swype/input/DragGesture;->lastTouchY:I

    goto :goto_0

    .line 51
    :pswitch_2
    iput v1, p0, Lcom/nuance/swype/input/DragGesture;->lastTouchX:I

    .line 52
    iput v2, p0, Lcom/nuance/swype/input/DragGesture;->lastTouchY:I

    .line 53
    iget-object v3, p0, Lcom/nuance/swype/input/DragGesture;->listener:Lcom/nuance/swype/input/DragGesture$IDragGestureListener;

    if-eqz v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/nuance/swype/input/DragGesture;->listener:Lcom/nuance/swype/input/DragGesture$IDragGestureListener;

    invoke-interface {v3, p1}, Lcom/nuance/swype/input/DragGesture$IDragGestureListener;->onEndDrag(Landroid/view/View;)V

    .line 56
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
