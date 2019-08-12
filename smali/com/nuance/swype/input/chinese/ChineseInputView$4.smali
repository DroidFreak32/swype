.class Lcom/nuance/swype/input/chinese/ChineseInputView$4;
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
    .locals 0

    .prologue
    .line 3514
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 3518
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 3519
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setCandidatesViewShown(Z)V

    .line 3521
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3522
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->hideSpellPrefixSuffixList()V

    .line 3523
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 3524
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    .line 3526
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(I)Z

    .line 3528
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$900(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)V

    .line 3531
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3532
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 3535
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1402(Lcom/nuance/swype/input/chinese/ChineseInputView;Z)Z

    .line 3536
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    .line 3537
    return-void
.end method
