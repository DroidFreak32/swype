.class Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;
.super Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage"
.end annotation


# instance fields
.field private final oovWord:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;)V
    .locals 1
    .param p2, "oovWord"    # Ljava/lang/String;

    .prologue
    .line 3178
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;-><init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V

    .line 3179
    iput-object p2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->oovWord:Ljava/lang/String;

    .line 3180
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;Lcom/nuance/swype/input/AlphaInputView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/nuance/swype/input/AlphaInputView$1;

    .prologue
    .line 3175
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;-><init>(Lcom/nuance/swype/input/AlphaInputView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addOOVWord()V
    .locals 2

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->oovLearningWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3187
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3188
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->oovWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmAdd(Ljava/lang/String;)Z

    .line 3192
    :goto_0
    return-void

    .line 3190
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->explicitLearningAddAllRecentWords()V

    goto :goto_0
.end method

.method protected getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3238
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->oovWord:Ljava/lang/String;

    return-object v0
.end method

.method public onRequestExplicitLearningApproval(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oov"    # Ljava/lang/String;
    .param p2, "syncId"    # I

    .prologue
    .line 3195
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->oovLearningWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3196
    const/4 v0, 0x0

    return v0
.end method

.method protected promptToAddIfAny()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 3218
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->clearOOVWords()V

    .line 3219
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->setExplicitPromptState()V

    .line 3223
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->oovWord:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmScanBuf(Ljava/lang/String;IZZ)Z

    .line 3226
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/AlphaInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3227
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-boolean v1, v1, Lcom/nuance/swype/input/AlphaInputView;->promptToAddWords:Z

    if-eqz v1, :cond_1

    .line 3229
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->hwcl_add_udb_word:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->oovWord:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3230
    .local v0, "prompt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->promptToAddNewWord(Ljava/lang/String;)V

    .line 3235
    .end local v0    # "prompt":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3232
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->oovWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->dlmAdd(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected setExplicitPromptState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3202
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isUDBSubstitutionField()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mInputFieldInfo:Lcom/nuance/swype/input/InputFieldInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3204
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(ZZ)V

    .line 3205
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V

    .line 3214
    :goto_0
    return-void

    .line 3206
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-boolean v0, v0, Lcom/nuance/swype/input/AlphaInputView;->promptToAddWords:Z

    if-eqz v0, :cond_2

    .line 3208
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(ZZ)V

    .line 3209
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->registerExplicitLearningApprovalCallback(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;)V

    goto :goto_0

    .line 3212
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVCandidateForNonSpaceDelimeteredLanguage;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->setExplicitLearning(ZZ)V

    goto :goto_0
.end method
