.class Lcom/nuance/swype/input/emoji/EmojiInputController$5;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$5;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x3e9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 499
    const/4 v0, -0x1

    .line 502
    .local v0, "actionKey":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 503
    .local v1, "id":I
    sget v2, Lcom/nuance/swype/input/R$id;->emoji_input_view_space_key:I

    if-ne v1, v2, :cond_17

    .line 504
    const/16 v0, 0x20

    .line 509
    :cond_f
    :goto_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    .line 525
    :goto_16
    :pswitch_16
    return v4

    .line 505
    :cond_17
    sget v2, Lcom/nuance/swype/input/R$id;->emoji_input_view_delete_key:I

    if-ne v1, v2, :cond_f

    .line 506
    const/16 v0, 0x8

    goto :goto_f

    .line 511
    :pswitch_1e
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 512
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$5;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->playKeyFeedback(I)V

    .line 513
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$5;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$5;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->longPressHoldTimeout:I
    invoke-static {v3}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$700(Lcom/nuance/swype/input/emoji/EmojiInputController;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->sendPressHoldMessage(II)V

    goto :goto_16

    .line 516
    :pswitch_32
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 517
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$5;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->pressHoldHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$800(Lcom/nuance/swype/input/emoji/EmojiInputController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$5;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->handleKey(I)V

    goto :goto_16

    .line 521
    :pswitch_44
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 522
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$5;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->pressHoldHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$800(Lcom/nuance/swype/input/emoji/EmojiInputController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_16

    .line 509
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_32
        :pswitch_16
        :pswitch_44
    .end packed-switch
.end method
