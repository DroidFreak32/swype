.class Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$2;
.super Ljava/lang/Object;
.source "HandWritingOnKeyboardHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$2;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 329
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 338
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    .line 331
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$2;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$400(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)V

    .line 340
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler$2;->this$0:Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;->access$500(Lcom/nuance/swype/input/chinese/HandWritingOnKeyboardHandler;)V

    goto :goto_1

    .line 329
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
