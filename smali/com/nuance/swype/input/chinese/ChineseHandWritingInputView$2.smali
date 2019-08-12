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
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1085
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1147
    :cond_0
    :goto_0
    return v5

    .line 1087
    :pswitch_0
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;

    iget-char v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CharWriteEvent;->mChar:C

    invoke-static {v4, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$400(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;C)V

    goto :goto_0

    .line 1091
    :pswitch_1
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;

    iget-object v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$TextWriteEvent;->mText:Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$500(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1096
    :pswitch_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$600(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$700(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/KeyboardSwitcher;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseKeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1097
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1100
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;

    iget-object v3, v3, Lcom/nuance/input/swypecorelib/T9WriteRecognizerListener$CandidatesWriteEvent;->mChCandidates:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$902(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 1101
    const/4 v1, 0x0

    .line 1102
    .local v1, "chGesture":C
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1103
    if-lez v3, :cond_3

    .line 1104
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1105
    .local v2, "seq":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 1106
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1107
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

    .line 1114
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$902(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Ljava/util/List;)Ljava/util/List;

    .line 1115
    move v1, v0

    .line 1131
    .end local v0    # "ch":C
    .end local v2    # "seq":Ljava/lang/CharSequence;
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1000(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    .line 1132
    if-eqz v1, :cond_4

    .line 1133
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$400(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;C)V

    .line 1135
    :cond_4
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1100(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1136
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    iget-object v3, v3, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->mWordSourceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1137
    if-eq v1, v7, :cond_5

    .line 1138
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->showInline()V

    .line 1139
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1200(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    .line 1143
    .end local v1    # "chGesture":C
    :cond_5
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$900(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1144
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->setNotMatchToolTipSuggestion()V

    .line 1146
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v3, v5}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1302(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;Z)Z

    goto/16 :goto_0

    .line 1085
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
