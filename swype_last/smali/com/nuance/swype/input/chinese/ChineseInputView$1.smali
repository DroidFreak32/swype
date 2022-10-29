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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    const/16 v6, 0x66

    const/16 v5, 0x64

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 245
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_1fc

    .line 351
    :cond_b
    :goto_b
    return v2

    .line 247
    :sswitch_c
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget-object v1, Lcom/nuance/input/swypecorelib/Candidates$Source;->INVALID:Lcom/nuance/input/swypecorelib/Candidates$Source;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateSuggestions(Lcom/nuance/input/swypecorelib/Candidates$Source;)I

    goto :goto_b

    .line 250
    :sswitch_14
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->addMoreSuggestions()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$000(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    goto :goto_b

    .line 253
    :sswitch_1a
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_24

    .line 255
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1, v0, v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_b

    .line 257
    :cond_24
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, v2, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    goto :goto_b

    .line 261
    :sswitch_2a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->mSpeechWrapper:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/SpeechWrapper;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 262
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushCurrentActiveWord()V

    .line 264
    :cond_3f
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->setSpeechViewHost()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$100(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 265
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->resumeSpeech()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$200(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    goto :goto_b

    .line 268
    :sswitch_4a
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-boolean v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_b

    .line 269
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 270
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->spellPrefixSuffixListView:Lcom/nuance/swype/input/chinese/SpellListView;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$300(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/SpellListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/SpellListView;->invalidate()V

    goto :goto_b

    .line 274
    :sswitch_61
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->updatInlineTextView()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$400(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    goto :goto_b

    .line 277
    :sswitch_67
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    if-eqz v1, :cond_74

    .line 278
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v1, v1, Lcom/nuance/swype/input/chinese/ChineseInputView;->mHandWritingOnKeyboardHandler:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->onDelayStartInput()V

    .line 280
    :cond_74
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v3

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)V
    invoke-static {v1, v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseInputView;Lcom/nuance/input/swypecorelib/XT9CoreInput;)V

    .line 281
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mCurrentInputLanguage:Lcom/nuance/swype/input/InputMethods$Language;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->isEmojiSuggestionsEnabled()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setMSDB(IZ)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 284
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_bb

    .line 285
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$900(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->isHardKeyboardActive()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 286
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v1

    sget-object v3, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->OFF:Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)Z

    .line 291
    :cond_bb
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->loadSettings()V
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1100(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 292
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mCompletions:Lcom/nuance/swype/input/Completions;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/Completions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/Completions;->clear()V

    .line 294
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_188

    .line 295
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)V

    .line 301
    :goto_d6
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    const/16 v3, 0x65

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mFuzzyPinyin:I
    invoke-static {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1300(Lcom/nuance/swype/input/chinese/ChineseInputView;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)V

    .line 302
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1400(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/KeyboardSwitcher;->isKeypadInput()Z

    move-result v1

    if-eqz v1, :cond_193

    .line 303
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)V

    .line 310
    :goto_fc
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearCommonChar()I

    .line 311
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v1

    if-nez v1, :cond_11d

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeBPMF()Z
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v1

    if-nez v1, :cond_11d

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isModeDoublePinyin()Z
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1700(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v1

    if-eqz v1, :cond_126

    .line 312
    :cond_11d
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setFullSentence()I

    .line 314
    :cond_126
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->currentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-static {v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->inputModeName2IntegralValue(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1900(Lcom/nuance/swype/input/chinese/ChineseInputView;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setInputMode(I)Z

    .line 315
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isCangjieKeypad()Z
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2000(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setMultiTapInputMode(Z)V

    .line 318
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->isModePinyin()Z
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$1500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v1

    if-eqz v1, :cond_19f

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mIme:Lcom/nuance/swype/input/IME;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2100(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->getEnableChineseBilingual()Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 319
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setBilingual(Z)V

    .line 323
    :goto_16d
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->isTraceEnabledOnKeyboard:Z
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2200(Lcom/nuance/swype/input/chinese/ChineseInputView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->enableTrace(Z)V

    .line 325
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->activateCategoryDatabase()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2300(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->loadKeyboardGesture()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2400(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    goto/16 :goto_b

    .line 298
    :cond_188
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)V

    goto/16 :goto_d6

    .line 306
    :cond_193
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v6, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(II)V

    goto/16 :goto_fc

    .line 321
    :cond_19f
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setBilingual(Z)V

    goto :goto_16d

    .line 330
    :sswitch_1a9
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_1e5

    move v1, v2

    :goto_1b0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->updateChinesePredictionView(ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V
    invoke-static {v3, v1, v0, v4}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2500(Lcom/nuance/swype/input/chinese/ChineseInputView;ZLcom/nuance/swypeconnect/ac/ACChinesePredictionService$ACChinesePredictionResult;I)V

    .line 334
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    if-eqz v0, :cond_1c6

    .line 335
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesListViewCJK:Lcom/nuance/swype/input/chinese/CJKCandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/CJKCandidatesListView;->invalidate()V

    .line 337
    :cond_1c6
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->isShown()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 338
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->candidatesPopupKeyboardViewEx:Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2600(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->invalidate()V

    goto/16 :goto_b

    :cond_1e5
    move v1, v0

    .line 330
    goto :goto_1b0

    .line 342
    :sswitch_1e7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseInputView;->requestChinesePrediction()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2700(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    goto/16 :goto_b

    .line 345
    :sswitch_1ee
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseInputView;->themeStoreWclPrompt:Lcom/nuance/swype/input/InputView$WclPrompt;
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2800(Lcom/nuance/swype/input/chinese/ChineseInputView;)Lcom/nuance/swype/input/InputView$WclPrompt;

    move-result-object v0

    const-string/jumbo v1, "CJK"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView$WclPrompt;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 245
    :sswitch_data_1fc
    .sparse-switch
        0x1 -> :sswitch_14
        0x4 -> :sswitch_1a
        0x9 -> :sswitch_c
        0xb -> :sswitch_2a
        0xf -> :sswitch_67
        0x11 -> :sswitch_61
        0x12 -> :sswitch_1e7
        0x13 -> :sswitch_1a9
        0x7d -> :sswitch_1ee
        0x1f4 -> :sswitch_4a
    .end sparse-switch
.end method
