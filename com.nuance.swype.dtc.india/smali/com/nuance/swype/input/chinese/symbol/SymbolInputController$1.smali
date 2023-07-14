.class Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;
.super Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;
.source "SymbolInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->createAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

.field final synthetic val$ime:Lcom/nuance/swype/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;Lcom/nuance/swype/input/IME;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    iput-object p2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;->val$ime:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardViewEx$KeyboardActionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onText(Ljava/lang/CharSequence;J)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "eventTime"    # J

    .prologue
    .line 218
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;->val$ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->access$000(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->access$100(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->getRecentCat()Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    move-result-object v1

    .line 221
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;->add(Ljava/lang/String;Z)V

    .line 222
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->refreshDynamicPages()V

    .line 223
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->access$200(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->notifyDataSetChanged()V

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;->val$ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 226
    .local v0, "iv":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_1

    .line 227
    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/nuance/swype/input/InputView;->onText(Ljava/lang/CharSequence;J)V

    .line 228
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;->val$ime:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/InputView;->moveCursorToMiddle(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 231
    .end local v0    # "iv":Lcom/nuance/swype/input/InputView;
    :cond_1
    return-void
.end method
