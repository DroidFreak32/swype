.class Lcom/nuance/swype/input/chinese/ChineseInputView$1;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;
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
    .line 249
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 270
    :goto_0
    return v2

    .line 254
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_0

    .line 257
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$000(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    goto :goto_0

    .line 260
    :sswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0, v2, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$100(Lcom/nuance/swype/input/chinese/ChineseInputView;ZZ)V

    goto :goto_0

    .line 263
    :sswitch_3
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$200(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 267
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    goto :goto_0

    .line 252
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x9 -> :sswitch_0
        0xb -> :sswitch_3
    .end sparse-switch
.end method
