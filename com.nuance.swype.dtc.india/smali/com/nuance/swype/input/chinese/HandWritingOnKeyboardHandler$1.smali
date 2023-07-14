.class Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;
.super Ljava/lang/Object;
.source "HandWritingOnKeyboardHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 261
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 297
    :cond_0
    :goto_0
    return v6

    .line 263
    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 264
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mChCandidates:Ljava/util/List;

    invoke-static {v5, v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$002(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;Ljava/util/List;)Ljava/util/List;

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "chGesture":C
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$000(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$000(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 267
    :goto_1
    if-lez v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$000(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 269
    .local v2, "seq":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 270
    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 271
    .local v0, "ch":C
    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    .line 274
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$000(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 275
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$002(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;Ljava/util/List;)Ljava/util/List;

    .line 276
    move v1, v0

    .line 280
    .end local v0    # "ch":C
    .end local v2    # "seq":Ljava/lang/CharSequence;
    :cond_2
    if-eqz v1, :cond_3

    .line 281
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$100(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->flushInlineWord()Z

    .line 282
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$100(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->handleChar(C)V

    .line 286
    .end local v1    # "chGesture":C
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$200(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$300(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 287
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->setWritingRecognitionDone(Z)V

    .line 289
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$100(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->updateListViews(ZZ)V

    .line 290
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$000(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$000(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$1;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$100(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setNotMatchToolTipSuggestion()V

    goto/16 :goto_0

    .restart local v1    # "chGesture":C
    :cond_5
    move v3, v4

    .line 266
    goto/16 :goto_1

    .line 261
    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
    .end packed-switch
.end method
