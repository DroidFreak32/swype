.class Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;
.super Ljava/lang/Object;
.source "ChinesePrefsFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->doCancelDialog(I)V

    goto :goto_0

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefs;->doShowDialog(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
