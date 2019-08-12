.class Lcom/nuance/swype/input/FunctionBarListView$2;
.super Ljava/lang/Object;
.source "FunctionBarListView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/FunctionBarListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/FunctionBarListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/FunctionBarListView;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x8

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iget-object v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    iget v0, v0, Lcom/nuance/swype/input/FunctionBarListView;->mTouchX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/FunctionBarListView$2;->this$0:Lcom/nuance/swype/input/FunctionBarListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/FunctionBarListView;->removeHighlight()V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
