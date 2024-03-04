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
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;->this$0:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x3ed

    const/4 v2, 0x1

    .line 687
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 706
    const/4 v1, 0x0

    .line 708
    :goto_0
    return v1

    .line 689
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;->this$0:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    invoke-static {v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->access$000(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 690
    goto :goto_0

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;->this$0:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    invoke-static {v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->access$100(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 693
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isPhoneNumberField()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isDateTimeField()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->getInputFieldInfo()Lcom/nuance/swype/input/InputFieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputFieldInfo;->isNumberField()Z

    move-result v1

    if-nez v1, :cond_2

    .line 700
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->showHardKeyPopupKeyboard(I)V

    .line 703
    iget-object v1, p0, Lcom/nuance/swype/input/hardkey/HardKeyboardManager$1;->this$0:Lcom/nuance/swype/input/hardkey/HardKeyboardManager;

    invoke-static {v1}, Lcom/nuance/swype/input/hardkey/HardKeyboardManager;->access$000(Lcom/nuance/swype/input/hardkey/HardKeyboardManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    move v1, v2

    .line 708
    goto :goto_0

    .line 687
    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_0
    .end packed-switch
.end method
