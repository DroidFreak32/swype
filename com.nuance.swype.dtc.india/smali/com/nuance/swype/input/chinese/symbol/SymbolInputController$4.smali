.class Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$4;
.super Ljava/lang/Object;
.source "SymbolInputController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 386
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$4;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 389
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 401
    const/4 v3, 0x0

    .line 403
    :goto_0
    return v3

    .line 391
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 392
    .local v0, "actionKey":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$4;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->handleLongPressOnKey(I)V

    .line 393
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$4;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->access$500(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 394
    .local v2, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 395
    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v3

    .line 396
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputView;->computeLongPressableTimeout()I

    move-result v1

    .line 397
    .local v1, "delay":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$4;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v3, v1, v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->sendPressHoldMessage(II)V

    .line 403
    .end local v1    # "delay":I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
