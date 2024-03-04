.class Lcom/nuance/swype/input/chinese/ChineseInputView$10;
.super Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;
.source "ChineseInputView.java"


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

.field final synthetic val$keyboard:Lcom/nuance/swype/input/KeyboardEx;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0

    .prologue
    .line 4560
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iput-object p2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPress(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 4564
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;->onPress(I)V

    .line 4565
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IME;->onPress(I)V

    .line 4566
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 4578
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4579
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->val$keyboard:Lcom/nuance/swype/input/KeyboardEx;

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx;->clearStickyKeys()V

    .line 4580
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->invalidateKeyboardImage()V

    .line 4582
    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;J)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 4570
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/appspecific/AppSpecificInputConnection;

    move-result-object v0

    .line 4571
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4572
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 4573
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$10;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3400(Lcom/nuance/swype/input/chinese/ChineseInputView;Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 4574
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 4575
    return-void
.end method
