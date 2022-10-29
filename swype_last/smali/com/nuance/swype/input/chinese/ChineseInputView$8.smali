.class Lcom/nuance/swype/input/chinese/ChineseInputView$8;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;->closeGridCandidatesView()V
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
    .line 5337
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 5341
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->hideGridCandidatesView()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 5342
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 5344
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 5345
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 5346
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChnPinyinAndPhraseListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 5347
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_3d

    .line 5349
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 5352
    :cond_3d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$5000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 5353
    :cond_59
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->updatePrefixes()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3700(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 5356
    :cond_5e
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mTerminateSession:Z
    invoke-static {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$3802(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    .line 5357
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 5358
    return-void
.end method
