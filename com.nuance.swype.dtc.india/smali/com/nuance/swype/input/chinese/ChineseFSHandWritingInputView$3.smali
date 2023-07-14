.class Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;
.super Ljava/lang/Object;
.source "ChineseFSHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1259
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1336
    :cond_0
    :goto_0
    return v6

    .line 1261
    :sswitch_0
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    iget-char v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v4, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;C)V

    goto :goto_0

    .line 1265
    :sswitch_1
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    iget-object v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$400(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1274
    :sswitch_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1279
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1280
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mChCandidates:Ljava/util/List;

    invoke-static {v5, v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$602(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 1281
    const/4 v1, 0x0

    .line 1282
    .local v1, "chGesture":C
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1283
    :goto_1
    if-lez v3, :cond_3

    .line 1284
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1285
    .local v2, "seq":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 1286
    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1287
    .local v0, "ch":C
    if-eq v0, v7, :cond_2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    .line 1294
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1295
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$602(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 1296
    move v1, v0

    .line 1312
    .end local v0    # "ch":C
    .end local v2    # "seq":Ljava/lang/CharSequence;
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$700(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    .line 1313
    if-eqz v1, :cond_4

    .line 1314
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3, v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;C)V

    .line 1316
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1317
    if-eq v1, v7, :cond_5

    .line 1318
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showInline()V

    .line 1319
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$900(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    .line 1323
    .end local v1    # "chGesture":C
    :cond_5
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1324
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->setNotMatchToolTipSuggestion()V

    .line 1326
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3, v6}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1002(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Z)Z

    goto/16 :goto_0

    .restart local v1    # "chGesture":C
    :cond_7
    move v3, v4

    .line 1282
    goto :goto_1

    .line 1329
    .end local v1    # "chGesture":C
    :sswitch_3
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->enableTrace(Z)V

    .line 1330
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$1200(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    goto/16 :goto_0

    .line 1259
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xf -> :sswitch_3
    .end sparse-switch
.end method
