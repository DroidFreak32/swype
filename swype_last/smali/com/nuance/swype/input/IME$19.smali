.class Lcom/nuance/swype/input/IME$19;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IME;->showLanguageMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IME;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 4556
    iput-object p1, p0, Lcom/nuance/swype/input/IME$19;->this$0:Lcom/nuance/swype/input/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 4558
    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4570
    :goto_6
    return-void

    .line 4562
    :cond_7
    iget-object v1, p0, Lcom/nuance/swype/input/IME$19;->this$0:Lcom/nuance/swype/input/IME;

    # getter for: Lcom/nuance/swype/input/IME;->languageAdapter:Lcom/nuance/swype/input/LanguageListAdapter;
    invoke-static {v1}, Lcom/nuance/swype/input/IME;->access$1600(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/LanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/LanguageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 4564
    .local v0, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v1, p0, Lcom/nuance/swype/input/IME$19;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->keyboardInputInflater:Lcom/nuance/swype/input/KeyboardInputInflater;

    iget-object v2, p0, Lcom/nuance/swype/input/IME$19;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v2, v2, Lcom/nuance/swype/input/IME;->mCurrentInputViewName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardInputInflater;->getInputView(Ljava/lang/String;)Lcom/nuance/swype/input/InputView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->finishInput()V

    .line 4565
    iget-object v1, p0, Lcom/nuance/swype/input/IME$19;->this$0:Lcom/nuance/swype/input/IME;

    iget-object v1, v1, Lcom/nuance/swype/input/IME;->mInputMethods:Lcom/nuance/swype/input/InputMethods;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 4568
    iget-object v1, p0, Lcom/nuance/swype/input/IME$19;->this$0:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->switchInputViewAsync()V

    .line 4569
    iget-object v1, p0, Lcom/nuance/swype/input/IME$19;->this$0:Lcom/nuance/swype/input/IME;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/nuance/swype/input/IME;->mWantToast:Z

    goto :goto_6
.end method
