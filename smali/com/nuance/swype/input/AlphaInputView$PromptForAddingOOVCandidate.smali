.class Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;
.super Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PromptForAddingOOVCandidate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;

.field word:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/AlphaInputView;)V
    .locals 1

    .prologue
    .line 3043
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;-><init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p2, "x1"    # Lcom/nuance/swype/input/AlphaInputView$1;

    .prologue
    .line 3043
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    return-void
.end method


# virtual methods
.method protected addOOVWord()V
    .locals 1

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitLearningAddLastWord()V

    .line 3070
    return-void
.end method

.method protected getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3101
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->word:Ljava/lang/String;

    return-object v0
.end method

.method public onRequestExplicitLearningApproval(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oov"    # Ljava/lang/String;
    .param p2, "syncId"    # I

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->oovLearningWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3097
    const/4 v0, 0x0

    return v0
.end method

.method protected promptToAddIfAny()V
    .locals 6

    .prologue
    .line 3074
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->oovLearningWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3077
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->oovLearningWords:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->oovLearningWords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->word:Ljava/lang/String;

    .line 3078
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->hwcl_add_udb_word:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->word:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3079
    .local v0, "prompt":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->oovLearningWords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3080
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->promptToAddNewWord(Ljava/lang/String;)V

    .line 3082
    .end local v0    # "prompt":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setExplicitPromptState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3049
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->clearOOVWords()V

    .line 3050
    iput-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->word:Ljava/lang/String;

    .line 3052
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3054
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(ZZ)V

    .line 3055
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V

    .line 3064
    :goto_0
    return-void

    .line 3056
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-boolean v0, v0, Lcom/nuance/swype/input/AlphaInputView;->promptToAddWords:Z

    if-eqz v0, :cond_2

    .line 3058
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(ZZ)V

    .line 3059
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V

    goto :goto_0

    .line 3062
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidate;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(ZZ)V

    goto :goto_0
.end method
