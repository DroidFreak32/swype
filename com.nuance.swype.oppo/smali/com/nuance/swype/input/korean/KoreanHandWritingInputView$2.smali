.class Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;
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
    .line 752
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 756
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 765
    const/4 v0, 0x0

    .line 767
    :cond_0
    :goto_0
    return v0

    .line 758
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$700(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    .line 759
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-static {v1}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$000(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)Lcom/nuance/swype/input/korean/KoreanHandWritingView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingView;->setNewSession(Z)V

    goto :goto_0

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
