.class Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;
.super Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PromptForAddingOOVWordFromSelectedText"
.end annotation


# instance fields
.field private final selectedText:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;)V
    .locals 1
    .param p2, "selectedText"    # Ljava/lang/String;

    .prologue
    .line 3110
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;-><init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V

    .line 3111
    iput-object p2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->selectedText:Ljava/lang/String;

    .line 3112
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;Lcom/nuance/swype/input/AlphaInputView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/nuance/swype/input/AlphaInputView$1;

    .prologue
    .line 3107
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;-><init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addOOVWord()V
    .locals 2

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->oovLearningWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3119
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3120
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->selectedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmAdd(Ljava/lang/String;)Z

    .line 3124
    :goto_0
    return-void

    .line 3122
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitLearningAddAllRecentWords()V

    goto :goto_0
.end method

.method protected getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->selectedText:Ljava/lang/String;

    return-object v0
.end method

.method public onRequestExplicitLearningApproval(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oov"    # Ljava/lang/String;
    .param p2, "syncId"    # I

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->oovLearningWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3128
    const/4 v0, 0x0

    return v0
.end method

.method protected promptToAddIfAny()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 3141
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->clearOOVWords()V

    .line 3142
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->setExplicitPromptState()V

    .line 3146
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->selectedText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmScanBuf(Ljava/lang/String;IZZ)Z

    .line 3149
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->oovLearningWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3151
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->oovLearningWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 3152
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->hwcl_add_udb_words:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3156
    .local v0, "prompt":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->promptToAddNewWord(Ljava/lang/String;)V

    .line 3162
    .end local v0    # "prompt":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 3154
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->hwcl_add_udb_word:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->oovLearningWords:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "prompt":Ljava/lang/String;
    goto :goto_0

    .line 3157
    .end local v0    # "prompt":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3159
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->hwcl_add_udb_word:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->selectedText:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3160
    .restart local v0    # "prompt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->promptToAddNewWord(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setExplicitPromptState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3135
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(ZZ)V

    .line 3136
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V

    .line 3137
    return-void
.end method
