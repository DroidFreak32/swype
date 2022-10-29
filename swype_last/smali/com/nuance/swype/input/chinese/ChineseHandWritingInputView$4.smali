.class Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;
.super Ljava/lang/Object;
.source "ChineseHandWritingInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showCandidatesView(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->candidatesPopup:Landroid/view/View;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1700(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 1519
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1520
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1521
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    if-eqz v0, :cond_25

    .line 1522
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextListViewContainer:Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellPhraseViewContainer;->showPhraseListView()V

    .line 1524
    :cond_25
    return-void
.end method
