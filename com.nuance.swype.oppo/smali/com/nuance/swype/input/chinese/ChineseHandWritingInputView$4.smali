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
    .locals 0

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mHWContainer:Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1500(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingViewContainer;->hideCandidatesGridView(Landroid/view/View;)V

    .line 1348
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->gridCandidateTableVisible:Z

    .line 1349
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1350
    return-void
.end method
