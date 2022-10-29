.class Lcom/nuance/swype/input/korean/KoreanInputView$1;
.super Ljava/lang/Object;
.source "KoreanInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/korean/KoreanInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/korean/KoreanInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/korean/KoreanInputView;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_c8

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_7
    return v0

    .line 104
    :sswitch_8
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 105
    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 106
    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->multitap_toggle_tip:I

    .line 107
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 109
    invoke-virtual {v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 110
    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;
    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 105
    invoke-static {v0, v2, v1, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    :goto_2e
    move v0, v1

    .line 157
    goto :goto_7

    .line 114
    :sswitch_30
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 115
    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 116
    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->trace_auto_accept_tip:I

    .line 117
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 119
    invoke-virtual {v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 120
    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;
    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$100(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 115
    invoke-static {v0, v2, v1, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_2e

    .line 124
    :sswitch_57
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 125
    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 126
    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->trace_input_tip:I

    .line 127
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 129
    invoke-virtual {v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    .line 130
    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->candidatesListView:Lcom/nuance/swype/input/CandidatesListView;
    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$200(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 125
    invoke-static {v0, v2, v1, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_2e

    .line 134
    :sswitch_7e
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->showStartOfWordCandidateList()V
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$300(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    goto :goto_2e

    .line 138
    :sswitch_84
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/korean/KoreanInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 141
    :cond_99
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->setSpeechViewHost()V
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$400(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->resumeSpeech()V
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$500(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    goto :goto_2e

    .line 145
    :sswitch_a4
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->startInputSession()V
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$600(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    .line 146
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanInputView;->setMultitapOrAmbigMode()V
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$700(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    goto :goto_2e

    .line 149
    :sswitch_af
    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto/16 :goto_2e

    .line 152
    :sswitch_ba
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    # getter for: Lcom/nuance/swype/input/korean/KoreanInputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$800(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/InputView$WclPrompt;

    move-result-object v0

    const-string/jumbo v2, "alphaInput"

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/InputView$WclPrompt;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 102
    :sswitch_data_c8
    .sparse-switch
        0x5 -> :sswitch_8
        0x6 -> :sswitch_30
        0x7 -> :sswitch_57
        0x8 -> :sswitch_7e
        0x9 -> :sswitch_af
        0xb -> :sswitch_84
        0xf -> :sswitch_a4
        0x7d -> :sswitch_ba
    .end sparse-switch
.end method
