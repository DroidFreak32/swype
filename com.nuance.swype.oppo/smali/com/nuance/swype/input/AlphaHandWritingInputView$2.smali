.class Lcom/nuance/swype/input/AlphaHandWritingInputView$2;
.super Ljava/lang/Object;
.source "AlphaHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AlphaHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1166
    const/4 v0, 0x0

    .line 1168
    :goto_0
    return v0

    .line 1162
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->performDelayRecognition()V

    .line 1168
    const/4 v0, 0x1

    goto :goto_0

    .line 1160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
