.class Lcom/nuance/swype/input/emoji/EmojiInputController$4;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$4;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 458
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 470
    const/4 v3, 0x0

    .line 472
    :goto_0
    return v3

    .line 460
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 461
    .local v0, "actionKey":I
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$4;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->handleLongPressOnKey(I)V

    .line 462
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$4;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-static {v3}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$400(Lcom/nuance/swype/input/emoji/EmojiInputController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 463
    .local v2, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 465
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->computeLongPressableTimeout()I

    move-result v1

    .line 466
    .local v1, "delay":I
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$4;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {v3, v1, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->sendPressHoldMessage(II)V

    .line 472
    .end local v1    # "delay":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
