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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 154
    :goto_5
    const/4 v0, 0x1

    return v0

    .line 148
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView$1;->this$0:Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    # invokes: Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->showDelayFullScreen()V
    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;->access$000(Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;)V

    goto :goto_5

    .line 146
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
