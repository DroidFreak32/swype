.class Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$3;
.super Ljava/lang/Object;
.source "SymbolInputController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$3;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 347
    const/4 v0, -0x1

    .line 350
    .local v0, "actionKey":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 351
    .local v1, "id":I
    sget v2, Lcom/nuance/swype/input/R$id;->emoji_input_view_space_key:I

    if-ne v1, v2, :cond_1

    .line 352
    const/16 v0, 0x20

    .line 357
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 375
    :goto_1
    :pswitch_0
    return v4

    .line 353
    :cond_1
    sget v2, Lcom/nuance/swype/input/R$id;->emoji_input_view_delete_key:I

    if-ne v1, v2, :cond_0

    .line 354
    const/16 v0, 0x8

    goto :goto_0

    .line 359
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 360
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$3;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->playKeyFeedback(I)V

    .line 361
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$3;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$3;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->access$300(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->sendPressHoldMessage(II)V

    goto :goto_1

    .line 364
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 365
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$3;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->access$400(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$3;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->handleKey(I)V

    goto :goto_1

    .line 369
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 370
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$3;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->access$400(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
