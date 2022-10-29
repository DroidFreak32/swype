.class Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;
.super Ljava/lang/Object;
.source "ChineseFSHandWritingInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showPopupCandidatesView(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->closeGridCanditesPopup()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    .line 1552
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$5;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showFullScreenHandWritingView()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    .line 1554
    return-void
.end method
