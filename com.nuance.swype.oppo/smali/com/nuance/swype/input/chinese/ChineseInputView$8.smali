.class Lcom/nuance/swype/input/chinese/ChineseInputView$8;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0

    .prologue
    .line 3717
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3721
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3727
    const/4 v0, 0x0

    .line 3729
    :goto_0
    return v0

    .line 3723
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$8;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$2700(Lcom/nuance/swype/input/chinese/ChineseInputView;)V

    .line 3729
    const/4 v0, 0x1

    goto :goto_0

    .line 3721
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
