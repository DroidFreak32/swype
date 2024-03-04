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
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 102
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 146
    :pswitch_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 104
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->multitap_toggle_tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 114
    :pswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->trace_auto_accept_tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$100(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/korean/KoreanInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->trace_input_tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/korean/KoreanInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v4}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$200(Lcom/nuance/swype/input/korean/KoreanInputView;)Lcom/nuance/swype/input/CandidatesListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/CandidatesListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v2, v0, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 134
    :pswitch_4
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$300(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    goto :goto_0

    .line 138
    :pswitch_5
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/korean/KoreanInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/korean/KoreanInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->flushCurrentActiveWord()V

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$400(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    .line 142
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$1;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$500(Lcom/nuance/swype/input/korean/KoreanInputView;)V

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
