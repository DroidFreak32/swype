.class Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;
.super Ljava/lang/Object;
.source "KoreanHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1000
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1010
    const/4 v1, 0x0

    .line 1012
    :goto_0
    return v1

    .line 1002
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$1000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    .line 1012
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1006
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$1100(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v0

    .line 1007
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    iget-object v2, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v2}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$1200(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/emoji/EmojiInputController;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;Lcom/nuance/swype/input/emoji/EmojiInputController;Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 1000
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
