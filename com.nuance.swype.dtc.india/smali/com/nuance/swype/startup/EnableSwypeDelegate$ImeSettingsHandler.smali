.class final Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;
.super Lcom/nuance/swype/util/SafeMessageHandler;
.source "EnableSwypeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/EnableSwypeDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImeSettingsHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/swype/util/SafeMessageHandler",
        "<",
        "Lcom/nuance/swype/startup/EnableSwypeDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/startup/EnableSwypeDelegate;Landroid/content/Context;)V
    .locals 0
    .param p1, "parent"    # Lcom/nuance/swype/startup/EnableSwypeDelegate;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/nuance/swype/util/SafeMessageHandler;-><init>(Ljava/lang/Object;)V

    .line 104
    iput-object p2, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method


# virtual methods
.method public final bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 91
    .line 1109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1132
    invoke-static {}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->access$200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleMessage: unknown message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1111
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/startup/StartupDelegate;->isSwypeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1112
    invoke-static {}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->access$200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "MSG_START_POLLING_IME_SETTINGS: swype enabled, invoking wizard"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1113
    iget-object v0, p0, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;->mContext:Landroid/content/Context;

    .line 1146
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1147
    const-class v2, Lcom/nuance/swype/input/settings/SettingsDispatch;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1148
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1117
    :cond_1
    invoke-static {}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->access$200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "MSG_START_POLLING_IME_SETTINGS: swype not enabled, polling..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1121
    invoke-virtual {p0, v3}, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    invoke-virtual {p0, v3}, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1127
    :pswitch_1
    invoke-static {}, Lcom/nuance/swype/startup/EnableSwypeDelegate;->access$200()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "MSG_STOP_POLLING_IME_SETTINGS"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1128
    invoke-virtual {p0, v3}, Lcom/nuance/swype/startup/EnableSwypeDelegate$ImeSettingsHandler;->removeMessages(I)V

    goto :goto_0

    .line 1109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
