.class Lcom/nuance/swype/input/chinese/ChineseInputView$9;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;->updateChinesePredictionView(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastDistance:F

.field lastX:F

.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

.field xDistance:F


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 5567
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 5572
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5573
    packed-switch v0, :pswitch_data_0

    .line 5649
    :goto_0
    return v1

    .line 5575
    :pswitch_0
    iput v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->xDistance:F

    .line 5576
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->lastX:F

    .line 5577
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5578
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5302(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_0

    .line 5581
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 5582
    .local v6, "curX":F
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->xDistance:F

    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->lastX:F

    sub-float v2, v6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->xDistance:F

    .line 5583
    iput v6, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->lastX:F

    .line 5584
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->xDistance:F

    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->lastDistance:F

    .line 5585
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5587
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5588
    iput v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->lastDistance:F

    goto :goto_0

    .line 5590
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5592
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 5593
    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 5596
    :cond_1
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->lastDistance:F

    float-to-int v0, v0

    iget v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->xDistance:F

    float-to-int v2, v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->lastDistance:F

    float-to-int v0, v0

    if-nez v0, :cond_3

    .line 5598
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 5599
    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 5603
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 5611
    .end local v6    # "curX":F
    :pswitch_2
    iget v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->xDistance:F

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5612
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5613
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5615
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 5620
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5622
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInlineSelection(Ljava/lang/StringBuilder;)Z

    .line 5624
    monitor-enter p0

    .line 5625
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 5626
    invoke-static {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getSpell()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v5

    invoke-interface {v5}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getFullSpell()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v8}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v8

    invoke-interface {v8}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getAttributes()[I

    move-result-object v8

    .line 5625
    invoke-virtual {v0, v3, v4, v5, v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->predictionCloudCommitPhrase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)I

    move-result v7

    .line 5627
    .local v7, "status":I
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5629
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ChinesePrediction id:"

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPredictionId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x2

    const-string/jumbo v5, " word:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v5

    invoke-interface {v5}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, " status:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 5630
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5800(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 5632
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0, v9}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5902(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    .line 5634
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$6000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseCloudPrediction;->logSelectedWordForChinesePrediction(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)V

    .line 5636
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$6100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5637
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    move-result-object v3

    invoke-interface {v3}, Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;->getPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->dlmDelete(Ljava/lang/String;)Z

    .line 5639
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5602(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;

    .line 5640
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const-wide/16 v4, 0xa

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4100(Lcom/nuance/swype/input/chinese/ChineseInputView;ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    .line 5643
    .end local v7    # "status":I
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/widget/CustomHorizontalScrollView;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$9;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/widget/CustomHorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 5627
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
