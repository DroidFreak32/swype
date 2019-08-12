.class Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;
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

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 139
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 141
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$000(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$100(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    .line 149
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$200(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v0

    .line 150
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$300(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$400(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;Lcom/nuance/swype/input/emoji/EmojiInputController;Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
