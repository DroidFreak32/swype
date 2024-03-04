.class Lcom/nuance/swype/input/chinese/ChineseInputView$3;
.super Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;
.source "ChineseInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;->createCandidatesView(Lcom/nuance/swype/input/CandidatesListView$CandidateListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p2, "x0"    # Lcom/nuance/swype/input/IME;
    .param p3, "x1"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;-><init>(Lcom/nuance/swype/input/IME;Lcom/nuance/swype/input/InputView;)V

    return-void
.end method


# virtual methods
.method protected switchHWOnKeyboard()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 416
    return-void
.end method
