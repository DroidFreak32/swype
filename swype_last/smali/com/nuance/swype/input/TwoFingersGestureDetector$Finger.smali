.class Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;
.super Ljava/lang/Object;
.source "TwoFingersGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/TwoFingersGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finger"
.end annotation


# instance fields
.field final mPointerId:I

.field mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/TwoFingersGestureDetector;I)V
    .registers 4
    .param p2, "pointerId"    # I

    .prologue
    .line 30
    iput-object p1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p2, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPointerId:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method addPoint(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public getEndPoint()Landroid/graphics/Point;
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 155
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 158
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getStartPoint()Landroid/graphics/Point;
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 147
    iget-object v0, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 150
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isGestureDown()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 99
    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 100
    .local v0, "startPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 102
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_UP_DOWN_GESTURE_DISTANCE:F
    invoke-static {v3}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$200(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_33

    const/4 v1, 0x1

    .line 105
    .end local v0    # "startPoint":Landroid/graphics/Point;
    :goto_32
    return v1

    .restart local v0    # "startPoint":Landroid/graphics/Point;
    :cond_33
    move v1, v2

    .line 102
    goto :goto_32

    .end local v0    # "startPoint":Landroid/graphics/Point;
    :cond_35
    move v1, v2

    .line 105
    goto :goto_32
.end method

.method isGestureLeft()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v3, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_32

    .line 123
    iget-object v3, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 124
    .local v1, "startPoint":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 126
    .local v0, "endPoint":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_LEFT_RIGHT_GESTURE_DISTANCE:F
    invoke-static {v4}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$300(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_32

    const/4 v2, 0x1

    .line 129
    .end local v0    # "endPoint":Landroid/graphics/Point;
    .end local v1    # "startPoint":Landroid/graphics/Point;
    :cond_32
    return v2
.end method

.method isGestureRight()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 135
    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 136
    .local v0, "startPoint":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 138
    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_LEFT_RIGHT_GESTURE_DISTANCE:F
    invoke-static {v3}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$300(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_33

    const/4 v1, 0x1

    .line 141
    .end local v0    # "startPoint":Landroid/graphics/Point;
    :goto_32
    return v1

    .restart local v0    # "startPoint":Landroid/graphics/Point;
    :cond_33
    move v1, v2

    .line 138
    goto :goto_32

    .end local v0    # "startPoint":Landroid/graphics/Point;
    :cond_35
    move v1, v2

    .line 141
    goto :goto_32
.end method

.method isGestureUp()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v3, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_32

    .line 111
    iget-object v3, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 112
    .local v1, "startPoint":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 114
    .local v0, "endPoint":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_UP_DOWN_GESTURE_DISTANCE:F
    invoke-static {v4}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$200(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_32

    const/4 v2, 0x1

    .line 117
    .end local v0    # "endPoint":Landroid/graphics/Point;
    .end local v1    # "startPoint":Landroid/graphics/Point;
    :cond_32
    return v2
.end method

.method isMovingDown()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "moved":Z
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_47

    .line 87
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 88
    .local v2, "startPoint":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 89
    .local v0, "endPoint":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_SCROLL_DISTANCE:F
    invoke-static {v5}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$000(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_48

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    .line 90
    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MAX_SCROLL_OFFSET:F
    invoke-static {v5}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$100(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_48

    const/4 v1, 0x1

    .line 93
    .end local v0    # "endPoint":Landroid/graphics/Point;
    .end local v2    # "startPoint":Landroid/graphics/Point;
    :cond_47
    :goto_47
    return v1

    .restart local v0    # "endPoint":Landroid/graphics/Point;
    .restart local v2    # "startPoint":Landroid/graphics/Point;
    :cond_48
    move v1, v3

    .line 90
    goto :goto_47
.end method

.method isMovingLeft()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "moved":Z
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_47

    .line 47
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 48
    .local v2, "startPoint":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 49
    .local v0, "endPoint":Landroid/graphics/Point;
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_SCROLL_DISTANCE:F
    invoke-static {v5}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$000(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_48

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    .line 50
    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MAX_SCROLL_OFFSET:F
    invoke-static {v5}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$100(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_48

    const/4 v1, 0x1

    .line 55
    .end local v0    # "endPoint":Landroid/graphics/Point;
    .end local v2    # "startPoint":Landroid/graphics/Point;
    :cond_47
    :goto_47
    return v1

    .restart local v0    # "endPoint":Landroid/graphics/Point;
    .restart local v2    # "startPoint":Landroid/graphics/Point;
    :cond_48
    move v1, v3

    .line 50
    goto :goto_47
.end method

.method isMovingRight()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "moved":Z
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_47

    .line 61
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 62
    .local v2, "startPoint":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 63
    .local v0, "endPoint":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_SCROLL_DISTANCE:F
    invoke-static {v5}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$000(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_48

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    .line 64
    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MAX_SCROLL_OFFSET:F
    invoke-static {v5}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$100(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_48

    const/4 v1, 0x1

    .line 69
    .end local v0    # "endPoint":Landroid/graphics/Point;
    .end local v2    # "startPoint":Landroid/graphics/Point;
    :cond_47
    :goto_47
    return v1

    .restart local v0    # "endPoint":Landroid/graphics/Point;
    .restart local v2    # "startPoint":Landroid/graphics/Point;
    :cond_48
    move v1, v3

    .line 64
    goto :goto_47
.end method

.method isMovingUp()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "moved":Z
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_47

    .line 75
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 76
    .local v2, "startPoint":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 77
    .local v0, "endPoint":Landroid/graphics/Point;
    iget v4, v2, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MIN_SCROLL_DISTANCE:F
    invoke-static {v5}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$000(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_48

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nuance/swype/input/TwoFingersGestureDetector$Finger;->this$0:Lcom/nuance/swype/input/TwoFingersGestureDetector;

    .line 78
    # getter for: Lcom/nuance/swype/input/TwoFingersGestureDetector;->MAX_SCROLL_OFFSET:F
    invoke-static {v5}, Lcom/nuance/swype/input/TwoFingersGestureDetector;->access$100(Lcom/nuance/swype/input/TwoFingersGestureDetector;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_48

    const/4 v1, 0x1

    .line 81
    .end local v0    # "endPoint":Landroid/graphics/Point;
    .end local v2    # "startPoint":Landroid/graphics/Point;
    :cond_47
    :goto_47
    return v1

    .restart local v0    # "endPoint":Landroid/graphics/Point;
    .restart local v2    # "startPoint":Landroid/graphics/Point;
    :cond_48
    move v1, v3

    .line 78
    goto :goto_47
.end method
