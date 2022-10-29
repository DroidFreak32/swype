.class Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;
.super Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromptForAddingOOVWordFromSelectedText"
.end annotation


# instance fields
.field private final selectedText:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;)V
    .registers 4
    .param p2, "selectedText"    # Ljava/lang/String;

    .prologue
    .line 3101
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;-><init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V

    .line 3102
    iput-object p2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->selectedText:Ljava/lang/String;

    .line 3103
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;Lcom/nuance/swype/input/AlphaInputView$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/nuance/swype/input/AlphaInputView$1;

    .prologue
    .line 3098
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;-><init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addOOVWord()V
    .registers 2

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->oovLearningWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3108
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitLearningAddAllRecentWords()V

    .line 3109
    return-void
.end method

.method protected getSelectedText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3148
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->selectedText:Ljava/lang/String;

    return-object v0
.end method

.method public onRequestExplicitLearningApproval(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "oov"    # Ljava/lang/String;
    .param p2, "syncId"    # I

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->oovLearningWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3113
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->oovWordHistory:Lcom/nuance/swype/input/OOVWordHistory;
    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$1300(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/swype/input/OOVWordHistory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/OOVWordHistory;->add(Ljava/lang/String;)V

    .line 3115
    const/4 v0, 0x0

    return v0
.end method

.method protected promptToAddIfAny()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 3128
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->clearOOVWords()V

    .line 3129
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->setExplicitPromptState()V

    .line 3133
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->selectedText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmScanBuf(Ljava/lang/String;ZZZ)Z

    .line 3136
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->oovLearningWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 3138
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->oovLearningWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_33

    .line 3139
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->hwcl_add_udb_words:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3143
    .local v0, "prompt":Ljava/lang/String;
    :goto_2f
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->promptToAddNewWord(Ljava/lang/String;)V

    .line 3145
    .end local v0    # "prompt":Ljava/lang/String;
    :cond_32
    return-void

    .line 3141
    :cond_33
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
    goto :goto_2f
.end method

.method protected setExplicitPromptState()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3122
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(ZZ)V

    .line 3123
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWordFromSelectedText;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    # getter for: Lcom/nuance/swype/input/AlphaInputView;->mAlphaInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$1000(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V

    .line 3124
    return-void
.end method
