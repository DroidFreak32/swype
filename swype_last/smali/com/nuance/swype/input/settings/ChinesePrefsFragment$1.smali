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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_6
    return v0

    .line 45
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->doCancelDialog(I)V

    .line 55
    :goto_10
    const/4 v0, 0x1

    goto :goto_6

    .line 49
    :pswitch_12
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->delegate:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefs;->doShowDialog(ILandroid/os/Bundle;)V

    goto :goto_10

    .line 43
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_7
        :pswitch_12
    .end packed-switch
.end method
