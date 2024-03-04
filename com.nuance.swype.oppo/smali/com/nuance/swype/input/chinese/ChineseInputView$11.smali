.class Lcom/nuance/swype/input/chinese/ChineseInputView$11;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;->showSymbolPopup(Ljava/util/List;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0

    .prologue
    .line 4585
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$11;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4589
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4590
    packed-switch v0, :pswitch_data_0

    .line 4604
    :goto_0
    return v3

    .line 4593
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$11;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3502(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    goto :goto_0

    .line 4597
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$11;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4598
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$11;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$11;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$11;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3900(Lcom/nuance/swype/input/chinese/ChineseInputView;)I

    move-result v2

    invoke-static {v0, v1, v2, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4000(Lcom/nuance/swype/input/chinese/ChineseInputView;Ljava/util/List;IZ)V

    .line 4599
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$11;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3702(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    .line 4601
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$11;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3502(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    goto :goto_0

    .line 4590
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
