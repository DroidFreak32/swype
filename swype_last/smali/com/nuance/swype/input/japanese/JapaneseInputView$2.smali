.class Lcom/nuance/swype/input/japanese/JapaneseInputView$2;
.super Ljava/lang/Object;
.source "JapaneseInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .prologue
    .line 2699
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->hideGridCandidatesView()V
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1000(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    .line 2704
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x1

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->setCandidatesViewShown(Z)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1100(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)V

    .line 2706
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # getter for: Lcom/nuance/swype/input/japanese/JapaneseInputView;->isSegmentationPopupNeeded:Z
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1200(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2707
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    # invokes: Lcom/nuance/swype/input/japanese/JapaneseInputView;->postDelayShowSegmentationPopupMessage()V
    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$1300(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    .line 2709
    :cond_18
    return-void
.end method
