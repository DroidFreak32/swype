.class Lcom/nuance/swype/input/chinese/ChineseInputView$3;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;->showGridCandidatesView(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 3286
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3290
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 3291
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 3293
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-nez v0, :cond_49

    .line 3294
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 3295
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 3296
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v0

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_49

    .line 3298
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 3301
    :cond_49
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 3302
    :cond_65
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3700(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 3305
    :cond_6a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3802(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    .line 3306
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 3308
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->shouldStartChinesePrediction()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3900(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChinesePredictionResult:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 3309
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChinesePredictionResult:Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;
    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    move-result-object v2

    const/4 v3, 0x2

    const-wide/16 v4, 0xa

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->postUpdateChinesePredictionMessage(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V
    invoke-static/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$4100(Lcom/nuance/swype/input/chinese/ChineseInputView;ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;IJ)V

    .line 3311
    :cond_94
    return-void
.end method
