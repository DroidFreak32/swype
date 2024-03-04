.class Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;
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
    .line 1159
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 1162
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1173
    :cond_0
    :goto_0
    return v1

    .line 1164
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$1400(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)V

    .line 1165
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView$3;->this$0:Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;->access$800(Lcom/nuance/swype/input/chinese/ChineseHandWritingInputView;)Lcom/nuance/swype/input/chinese/ChineseHandWritingView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseHandWritingView;->setNewSession(Z)V

    goto :goto_0

    .line 1162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
