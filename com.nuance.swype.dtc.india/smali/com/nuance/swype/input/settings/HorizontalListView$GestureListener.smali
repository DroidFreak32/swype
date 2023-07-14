.class Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/HorizontalListView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V
    .locals 0

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/settings/HorizontalListView;Lcom/nuance/swype/input/settings/HorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/settings/HorizontalListView;
    .param p2, "x1"    # Lcom/nuance/swype/input/settings/HorizontalListView$1;

    .prologue
    .line 1040
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;-><init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    .line 1048
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1052
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/swype/input/settings/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1057
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1070
    :goto_0
    return v0

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$500(Lcom/nuance/swype/input/settings/HorizontalListView;Ljava/lang/Boolean;)V

    .line 1064
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    sget-object v2, Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-static {v0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$600(Lcom/nuance/swype/input/settings/HorizontalListView;Lcom/nuance/swype/input/settings/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1065
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$300(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    .line 1066
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    iget v2, v0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/nuance/swype/input/settings/HorizontalListView;->mNextX:I

    .line 1067
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v2}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$700(Lcom/nuance/swype/input/settings/HorizontalListView;I)V

    .line 1068
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    move v0, v1

    .line 1070
    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1075
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$300(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    .line 1076
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 1078
    .local v0, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v1, v4, v5}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$800(Lcom/nuance/swype/input/settings/HorizontalListView;II)I

    move-result v6

    .line 1081
    .local v6, "index":I
    if-ltz v6, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$900(Lcom/nuance/swype/input/settings/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/settings/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1083
    .local v2, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$1000(Lcom/nuance/swype/input/settings/HorizontalListView;)I

    move-result v1

    add-int v3, v1, v6

    .line 1085
    .local v3, "adapterIndex":I
    if-eqz v0, :cond_0

    .line 1086
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    iget-object v4, v4, Lcom/nuance/swype/input/settings/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1087
    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1086
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1088
    const/4 v1, 0x1

    .line 1096
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "adapterIndex":I
    :goto_0
    return v1

    .line 1092
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$1100(Lcom/nuance/swype/input/settings/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$900(Lcom/nuance/swype/input/settings/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1093
    iget-object v1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$1100(Lcom/nuance/swype/input/settings/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v4, p0, Lcom/nuance/swype/input/settings/HorizontalListView$GestureListener;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-interface {v1, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1096
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
