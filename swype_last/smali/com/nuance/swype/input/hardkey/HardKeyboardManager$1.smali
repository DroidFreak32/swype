.class Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;
.super Ljava/lang/Object;
.source "HardKeyboardManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/hardkey/HardKeyboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;->this$0:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x3ed

    const/4 v2, 0x1

    .line 677
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_60

    .line 698
    const/4 v1, 0x0

    .line 700
    :goto_9
    return v1

    .line 679
    :pswitch_a
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;->this$0:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    # getter for: Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->access$000(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    .line 680
    goto :goto_9

    .line 682
    :cond_18
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;->this$0:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    # getter for: Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->access$100(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 683
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_48

    .line 684
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 685
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 686
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isDateTimeField()Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    .line 687
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 692
    :cond_48
    if-eqz v0, :cond_55

    .line 693
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->showHardKeyPopupKeyboard(I)V

    .line 695
    :cond_55
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;->this$0:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    # getter for: Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->access$000(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5e
    move v1, v2

    .line 700
    goto :goto_9

    .line 677
    :pswitch_data_60
    .packed-switch 0x3ed
        :pswitch_a
    .end packed-switch
.end method
