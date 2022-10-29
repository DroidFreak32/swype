.class Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;
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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 901
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_4e

    .line 916
    :goto_8
    return v0

    .line 903
    :pswitch_9
    # getter for: Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "updateCandidatesList()"

    aput-object v4, v3, v0

    const-string/jumbo v0, " called  :: MSG_DELAY_RECOGNIZER : "

    aput-object v0, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 904
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->performDelayRecognition()V
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$900(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    .line 905
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 906
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/korean/KoreanHandWritingView;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setNewSession(Z)V

    :cond_32
    :goto_32
    move v0, v1

    .line 916
    goto :goto_8

    .line 910
    :pswitch_34
    # getter for: Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$300()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "updateCandidatesList()"

    aput-object v4, v3, v0

    const-string/jumbo v0, " called  :: MSG_DELAY_RECOGNIZER_ADD_STROKE : "

    aput-object v0, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 911
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->performDelayRecognitionStroke()V
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$1000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    goto :goto_32

    .line 901
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_34
    .end packed-switch
.end method
