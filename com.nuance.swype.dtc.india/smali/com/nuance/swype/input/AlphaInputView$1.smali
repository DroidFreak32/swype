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
    .param p1, "this$0"    # Lcom/nuance/swype/input/AlphaInputView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 204
    :goto_0
    return v2

    .line 158
    :sswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    .line 159
    invoke-virtual {v2}, Lcom/nuance/swype/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->multitap_toggle_tip:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    .line 160
    invoke-virtual {v3}, Lcom/nuance/swype/input/AlphaInputView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v4, v4, Lcom/nuance/swype/input/AlphaInputView;->wordListViewContainer:Lcom/nuance/swype/input/WordListViewContainer;

    invoke-virtual {v4}, Lcom/nuance/swype/input/WordListViewContainer;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 158
    invoke-static {v0, v2, v1, v3}, Lcom/nuance/swype/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    :cond_0
    :goto_1
    move v2, v1

    .line 204
    goto :goto_0

    .line 164
    :sswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$000(Lcom/nuance/swype/input/AlphaInputView;)V

    goto :goto_1

    .line 168
    :sswitch_2
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    iput-object v2, v0, Lcom/nuance/swype/input/AlphaInputView;->pendingCandidateSource:Lcom/nuance/input/swypecorelib/Candidates$Source;

    .line 170
    iget-object v2, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/input/swypecorelib/Candidates$Source;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v0, v3, v4}, Lcom/nuance/swype/input/AlphaInputView;->access$100(Lcom/nuance/swype/input/AlphaInputView;Lcom/nuance/input/swypecorelib/Candidates$Source;II)V

    goto :goto_1

    .line 175
    :sswitch_3
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    sget-object v2, Lcom/nuance/input/swypecorelib/Candidates$Source;->CAPS_EDIT:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/AlphaInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_1

    .line 179
    :sswitch_4
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->setSpeechViewHost()V

    .line 180
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaInputView;->resumeSpeech()V

    goto :goto_1

    .line 183
    :sswitch_5
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-static {v0}, Lcom/nuance/android/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$200(Lcom/nuance/swype/input/AlphaInputView;)V

    .line 188
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$300(Lcom/nuance/swype/input/AlphaInputView;)V

    goto :goto_1

    .line 194
    :sswitch_6
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v3, v0, Lcom/nuance/swype/input/AlphaInputView;->mIme:Lcom/nuance/swype/input/IME;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v3, v0, v2}, Lcom/nuance/swype/input/IME;->recaptureOnSingleTap(ZZ)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 199
    :sswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaInputView$1;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/AlphaInputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;

    const-string/jumbo v2, "alphaInput"

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/InputView$WclPrompt;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xb -> :sswitch_4
        0xd -> :sswitch_3
        0xf -> :sswitch_5
        0x10 -> :sswitch_6
        0x7d -> :sswitch_7
    .end sparse-switch
.end method
