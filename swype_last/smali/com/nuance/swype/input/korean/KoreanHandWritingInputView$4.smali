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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 1163
    const/4 v0, 0x0

    .line 1165
    :goto_6
    return v0

    .line 1160
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->showDelayFullScreen()V
    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;->access$1300(Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;)V

    .line 1165
    const/4 v0, 0x1

    goto :goto_6

    .line 1158
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
