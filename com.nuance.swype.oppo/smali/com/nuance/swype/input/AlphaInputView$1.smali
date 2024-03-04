.class Lcom/nuance/swype/input/AlphaInputView$1;
.super Ljava/lang/Object;
.source "AlphaInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/AlphaInputView;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    :pswitch_0
    return v1

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/nuance/swype/input/R$string;->multitap_toggle_tip:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/AlphaInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v4, v4, Lcom/nuance/swype/input/AlphaInputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/WordListViewContainer;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    :goto_1
    move v1, v2

    .line 165
    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$000(Lcom/nuance/swype/input/AlphaInputView;)V

    goto :goto_1

    .line 145
    :pswitch_3
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    sget-object v3, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v3, v0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 147
    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->access$100(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/input/swypecorelib/Candidates$Source;Z)I

    goto :goto_1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->setCandidatesViewShown(Z)V

    goto :goto_1

    .line 155
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_1

    .line 159
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->setSpeechViewHost()V

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->resumeSpeech()V

    goto :goto_1

    .line 133
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
