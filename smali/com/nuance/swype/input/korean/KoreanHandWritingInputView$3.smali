.class Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;
.super Ljava/lang/Object;
.source "KoreanHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 886
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 909
    const/4 v1, 0x0

    .line 911
    :goto_0
    return v1

    .line 888
    :sswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showHowToUseToast()V

    .line 911
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mPopupViewHandler:Landroid/os/Handler;

    const/16 v2, 0x1f7

    const-wide/16 v4, 0x5

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 897
    :sswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->resumeSpeech()V

    goto :goto_1

    .line 900
    :sswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$800(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$900(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v0

    .line 902
    .local v0, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    if-eqz v1, :cond_0

    .line 903
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mContainer:Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingContainerView;->refreshHandwritingPadWidth()V

    .line 904
    invoke-virtual {v0}, Lcom/nuance/swype/input/view/InputContainerView;->requestLayout()V

    goto :goto_1

    .line 886
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_2
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method
