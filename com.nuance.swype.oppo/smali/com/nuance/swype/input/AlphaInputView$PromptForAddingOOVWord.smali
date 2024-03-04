.class abstract Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;
.super Ljava/lang/Object;
.source "AlphaInputView.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput$ExplicitLearningApprovalCallback;
.implements Lcom/nuance/swype/input/CandidatesListView$CandidateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PromptForAddingOOVWord"
.end annotation


# instance fields
.field protected oovLearningWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/AlphaInputView;)V
    .locals 1

    .prologue
    .line 2993
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;->oovLearningWords:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/swype/input/AlphaInputView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/AlphaInputView;
    .param p2, "x1"    # Lcom/nuance/swype/input/AlphaInputView$1;

    .prologue
    .line 2993
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;-><init>(Lcom/nuance/swype/input/AlphaInputView;)V

    return-void
.end method


# virtual methods
.method protected abstract addOOVWord()V
.end method

.method protected clearOOVWords()V
    .locals 1

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;->oovLearningWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3006
    return-void
.end method

.method protected abstract getSelectedText()Ljava/lang/String;
.end method

.method public onCandidatesUpdated(Lcom/nuance/input/swypecorelib/Candidates;)V
    .locals 0
    .param p1, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 3037
    return-void
.end method

.method public onPressHoldCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 1
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    .line 3032
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectCandidate(Lcom/nuance/input/swypecorelib/WordCandidate;Lcom/nuance/input/swypecorelib/Candidates;)Z
    .locals 2
    .param p1, "candidate"    # Lcom/nuance/input/swypecorelib/WordCandidate;
    .param p2, "candidates"    # Lcom/nuance/input/swypecorelib/Candidates;

    .prologue
    const/4 v1, 0x0

    .line 3023
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$600(Lcom/nuance/swype/input/AlphaInputView;)Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->delayWordReorder(II)V

    .line 3025
    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;->addOOVWord()V

    .line 3026
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->doAddWord(Ljava/lang/String;)V

    .line 3027
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract promptToAddIfAny()V
.end method

.method protected promptToAddNewWord(Ljava/lang/String;)V
    .locals 4
    .param p1, "prompt"    # Ljava/lang/String;

    .prologue
    .line 3009
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 3010
    sget v3, Lcom/nuance/swype/input/R$attr;->hwclAddIcon:I

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3012
    .local v0, "addIcon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/nuance/input/swypecorelib/Candidates;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->UDB_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-direct {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;-><init>(Lcom/nuance/input/swypecorelib/Candidates$Source;)V

    .line 3013
    .local v1, "candidates":Lcom/nuance/input/swypecorelib/Candidates;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->addAttribute(I)V

    .line 3014
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->addAttribute(I)V

    .line 3015
    new-instance v2, Lcom/nuance/swype/input/DrawableCandidate;

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/DrawableCandidate;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 3016
    new-instance v2, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-direct {v2, p1}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nuance/input/swypecorelib/Candidates;->add(Lcom/nuance/input/swypecorelib/WordCandidate;)Z

    .line 3017
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    sget-object v3, Lcom/nuance/swype/input/CandidatesListView$Format;->DEFAULT:Lcom/nuance/swype/input/CandidatesListView$Format;

    invoke-virtual {v2, p0, v1, v3}, Lcom/nuance/swype/input/AlphaInputView;->setSuggestions(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;Lcom/nuance/input/swypecorelib/Candidates;Lcom/nuance/swype/input/CandidatesListView$Format;)V

    .line 3018
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$PromptForAddingOOVWord;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/AlphaInputView;->setCandidateListener(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)V

    .line 3019
    return-void
.end method

.method protected abstract setExplicitPromptState()V
.end method
