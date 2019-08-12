.class Lcom/nuance/swype/input/RecaptureHandler$1;
.super Ljava/lang/Object;
.source "RecaptureHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/RecaptureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/RecaptureHandler;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/RecaptureHandler;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/nuance/swype/input/RecaptureHandler$1;->this$0:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 1034
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1052
    :goto_0
    return v1

    .line 1036
    :pswitch_0
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler$1;->this$0:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/RecaptureHandler;->access$000(Lcom/nuance/swype/input/RecaptureHandler;)Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1037
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 1038
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 1039
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler$1;->this$0:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/RecaptureHandler;->access$100(Lcom/nuance/swype/input/RecaptureHandler;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->hasPendingSuggestionsUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler$1;->this$0:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-static {v2}, Lcom/nuance/swype/input/RecaptureHandler;->access$100(Lcom/nuance/swype/input/RecaptureHandler;)Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->clearPendingSuggestionsUpdate()V

    .line 1042
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler$1;->this$0:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-static {v2, v1}, Lcom/nuance/swype/input/RecaptureHandler;->access$200(Lcom/nuance/swype/input/RecaptureHandler;Z)Z

    .line 1052
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1046
    :pswitch_1
    sget-object v2, Lcom/nuance/swype/input/RecaptureHandler;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cursor MSG_RECAPTURE handleMessage"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1047
    iget-object v2, p0, Lcom/nuance/swype/input/RecaptureHandler$1;->this$0:Lcom/nuance/swype/input/RecaptureHandler;

    invoke-static {v2, v1}, Lcom/nuance/swype/input/RecaptureHandler;->access$200(Lcom/nuance/swype/input/RecaptureHandler;Z)Z

    goto :goto_1

    .line 1034
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
