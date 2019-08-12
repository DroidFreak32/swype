.class Lcom/nuance/swype/input/chinese/ChineseInputView$16;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;->showQuickToggleMenu()V
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
    .line 5281
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$16;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 5284
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5285
    if-nez p2, :cond_1

    .line 5286
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$16;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerInstance()Lcom/nuance/swype/input/IMEHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandler;->showActionOnKeyboardOption()V

    .line 5293
    :cond_0
    :goto_0
    return-void

    .line 5288
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$16;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIMEHandlerManager()Lcom/nuance/swype/input/IMEHandlerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5289
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$16;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/input/IME;->handlerManager:Lcom/nuance/swype/input/IMEHandlerManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEHandlerManager;->toggleKeyboard()V

    goto :goto_0
.end method
