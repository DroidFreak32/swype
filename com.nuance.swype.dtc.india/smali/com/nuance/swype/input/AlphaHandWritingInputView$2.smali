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
    .param p1, "this$0"    # Lcom/nuance/swype/input/AlphaHandWritingInputView;

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1279
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1285
    const/4 v0, 0x0

    .line 1287
    :goto_0
    return v0

    .line 1281
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/AlphaHandWritingInputView$2;->this$0:Lcom/nuance/swype/input/AlphaHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaHandWritingInputView;->access$600(Lcom/nuance/swype/input/AlphaHandWritingInputView;)V

    .line 1287
    const/4 v0, 0x1

    goto :goto_0

    .line 1279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
