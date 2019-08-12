.class Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;
.super Ljava/lang/Object;
.source "KoreanIMEHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/korean/KoreanIMEHandler;->showInputModeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

.field final synthetic val$modeAdapter:Lcom/nuance/swype/input/chinese/InputModeListAdapter;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/korean/KoreanIMEHandler;Lcom/nuance/swype/input/chinese/InputModeListAdapter;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;->this$0:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    iput-object p2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;->val$modeAdapter:Lcom/nuance/swype/input/chinese/InputModeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;->val$modeAdapter:Lcom/nuance/swype/input/chinese/InputModeListAdapter;

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/chinese/InputModeListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 205
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;->this$0:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->access$000(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 206
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;->this$0:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->access$100(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getCurrentWordCandiatesSource()Lcom/nuance/input/swypecorelib/Candidates$Source;

    move-result-object v0

    .line 208
    .local v0, "src":Lcom/nuance/input/swypecorelib/Candidates$Source;
    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->TOOL_TIP:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    if-ne v0, v1, :cond_2

    .line 210
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;->this$0:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->access$300(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->toggleHwrAndKeyboardInputMode()V

    .line 216
    .end local v0    # "src":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;->this$0:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->access$400(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/nuance/swype/input/IME;->mWantToast:Z

    .line 217
    return-void

    .line 212
    .restart local v0    # "src":Lcom/nuance/input/swypecorelib/Candidates$Source;
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanIMEHandler$2;->this$0:Lcom/nuance/swype/input/korean/KoreanIMEHandler;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanIMEHandler;->access$200(Lcom/nuance/swype/input/korean/KoreanIMEHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->getCurrentExactWord()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->setLastActiveWord(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
