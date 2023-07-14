.class Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$5;
.super Ljava/lang/Object;
.source "ChineseHandWritingInputView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCandidatesView(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 1527
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1530
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1531
    packed-switch v0, :pswitch_data_0

    .line 1544
    :goto_0
    return v2

    .line 1534
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1802(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Z)Z

    goto :goto_0

    .line 1538
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1802(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Z)Z

    goto :goto_0

    .line 1531
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
