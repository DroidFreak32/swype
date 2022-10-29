.class Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;
.super Ljava/lang/Object;
.source "ChineseHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1226
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_f6

    .line 1302
    :cond_9
    :goto_9
    return v5

    .line 1228
    :sswitch_a
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    iget-char v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;->mChar:C

    # invokes: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleChar(C)V
    invoke-static {v4, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$200(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;C)V

    goto :goto_9

    .line 1232
    :sswitch_16
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    iget-object v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleText(Ljava/lang/CharSequence;)V
    invoke-static {v4, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$300(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1237
    :sswitch_22
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$400(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mKeyboardSwitcher:Lcom/nuance/swype/input/KeyboardSwitcher;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1241
    :cond_36
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    move-result-object v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->symInputController:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->isActive()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1246
    :cond_4a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_c5

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mCurrentWritingPad:Lcom/nuance/swype/input/chinese/ChineseHandWritingView;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$700(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v3

    if-eqz v3, :cond_c5

    .line 1247
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mChCandidates:Ljava/util/List;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;
    invoke-static {v4, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$802(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 1248
    const/4 v1, 0x0

    .line 1249
    .local v1, "chGesture":C
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1250
    if-lez v3, :cond_9d

    .line 1251
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1252
    .local v2, "seq":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v5, :cond_9d

    .line 1253
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1254
    .local v0, "ch":C
    if-eq v0, v7, :cond_96

    const/16 v3, 0xa

    if-eq v0, v3, :cond_96

    const/16 v3, 0xd

    if-eq v0, v3, :cond_96

    const/16 v3, 0x20

    if-eq v0, v3, :cond_96

    const/16 v3, 0x9

    if-ne v0, v3, :cond_9d

    .line 1261
    :cond_96
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    const/4 v4, 0x0

    # setter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$802(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 1262
    move v1, v0

    .line 1278
    .end local v0    # "ch":C
    .end local v2    # "seq":Ljava/lang/CharSequence;
    :cond_9d
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->clearArcs()V
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    .line 1279
    if-eqz v1, :cond_a9

    .line 1280
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->handleChar(C)V
    invoke-static {v3, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$200(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;C)V

    .line 1282
    :cond_a9
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mContextCandidates:Ljava/util/List;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1000(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1283
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1284
    if-eq v1, v7, :cond_c5

    .line 1285
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showInline()V

    .line 1286
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->updateCandidatesList()V
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1100(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    .line 1290
    .end local v1    # "chGesture":C
    :cond_c5
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_de

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mRecognitionCandidates:Ljava/util/List;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 1291
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setNotMatchToolTipSuggestion()V

    .line 1293
    :cond_de
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # setter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mPopupCandidateListShowable:Z
    invoke-static {v3, v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1202(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Z)Z

    goto/16 :goto_9

    .line 1296
    :sswitch_e5
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # getter for: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mChineseInput:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1300(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->enableTrace(Z)V

    .line 1297
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->loadKeyboardGesture()V
    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1400(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    goto/16 :goto_9

    .line 1226
    nop

    :sswitch_data_f6
    .sparse-switch
        0x2 -> :sswitch_22
        0x3 -> :sswitch_a
        0x4 -> :sswitch_16
        0xf -> :sswitch_e5
    .end sparse-switch
.end method
