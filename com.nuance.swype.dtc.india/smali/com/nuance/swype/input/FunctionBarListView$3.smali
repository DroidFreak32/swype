.class Lcom/nuance/swype/input/FunctionBarListView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FunctionBarListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/FunctionBarListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/FunctionBarListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/FunctionBarListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/FunctionBarListView;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/nuance/swype/input/FunctionBarListView$3;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$3;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-static {v0}, Lcom/nuance/swype/input/FunctionBarListView;->access$000(Lcom/nuance/swype/input/FunctionBarListView;)Lcom/nuance/android/util/LruCache;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$3;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    .line 259
    invoke-static {v0}, Lcom/nuance/swype/input/FunctionBarListView;->access$000(Lcom/nuance/swype/input/FunctionBarListView;)Lcom/nuance/android/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$3;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iput v1, v0, Lcom/nuance/swype/input/FunctionBarListView;->mA:F

    .line 265
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$3;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iput v1, v0, Lcom/nuance/swype/input/FunctionBarListView;->mV:F

    .line 266
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$3;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->invalidate()V

    .line 267
    const/4 v0, 0x1

    goto :goto_0
.end method
