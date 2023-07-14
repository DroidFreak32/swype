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
    .param p1, "this$0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1036
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1050
    const/4 v0, 0x0

    .line 1052
    :goto_0
    return v0

    .line 1038
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$1100(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    .line 1052
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$1200(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f7

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1047
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->resumeSpeech()V

    goto :goto_1

    .line 1036
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method
