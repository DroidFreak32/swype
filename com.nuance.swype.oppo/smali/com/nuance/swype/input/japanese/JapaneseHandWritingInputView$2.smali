.class Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;
.super Ljava/lang/Object;
.source "JapaneseHandWritingInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 971
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 981
    :cond_0
    :goto_0
    return v1

    .line 973
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$700(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    .line 974
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$200(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingView;->setNewSession(Z)V

    goto :goto_0

    .line 971
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
