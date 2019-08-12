.class Lcom/nuance/swype/input/chinese/ChineseInputView$5;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V
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
    .line 3540
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3544
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3545
    packed-switch v0, :pswitch_data_0

    .line 3555
    :goto_0
    return v2

    .line 3548
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1502(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    goto :goto_0

    .line 3552
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1502(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    goto :goto_0

    .line 3545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
