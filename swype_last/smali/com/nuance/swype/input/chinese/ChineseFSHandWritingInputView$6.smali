.class Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$6;
.super Ljava/lang/Object;
.source "ChineseFSHandWritingInputView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showPopupCandidatesView(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1561
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1562
    packed-switch v0, :pswitch_data_16

    .line 1575
    :goto_8
    return v2

    .line 1565
    :pswitch_9
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    const/4 v1, 0x1

    # setter for: Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridViewFunctionButtonPressed:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1702(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Z)Z

    goto :goto_8

    .line 1569
    :pswitch_10
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$6;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->gridViewFunctionButtonPressed:Z
    invoke-static {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1702(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Z)Z

    goto :goto_8

    .line 1562
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_10
        :pswitch_9
        :pswitch_10
    .end packed-switch
.end method
