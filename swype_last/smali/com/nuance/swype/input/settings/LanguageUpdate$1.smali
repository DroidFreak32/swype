.class Lcom/nuance/swype/input/settings/LanguageUpdate$1;
.super Ljava/lang/Object;
.source "LanguageUpdate.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 62
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_104

    .line 96
    :pswitch_8
    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "No need to handle message: "

    aput-object v3, v2, v6

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 98
    :cond_1e
    :goto_1e
    return v6

    .line 64
    :pswitch_1f
    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "dlManager.isLanguageSetupComplete() "

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;
    invoke-static {v3}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, " dlManager.isLanguageListAvailable() "

    aput-object v3, v2, v5

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;
    invoke-static {v4}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 66
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList()Ljava/util/Map;

    move-result-object v0

    .line 67
    .local v0, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_81

    .line 68
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # setter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->displayTimeoutDialog:Z
    invoke-static {v1, v6}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$202(Lcom/nuance/swype/input/settings/LanguageUpdate;Z)Z

    .line 70
    :cond_81
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateLanguages(Ljava/util/Map;)Z

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->notifyDataSetChanged()V

    goto :goto_1e

    .line 73
    .end local v0    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    :cond_94
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->weakHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1e

    .line 79
    :pswitch_b4
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->doNotifyDataSetInvalidated()V

    goto/16 :goto_1e

    .line 83
    :pswitch_bf
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->displayTimeoutDialog:Z
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$200(Lcom/nuance/swype/input/settings/LanguageUpdate;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 84
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->isRunning:Z
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$500(Lcom/nuance/swype/input/settings/LanguageUpdate;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 85
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->showTimeoutDialog()V

    goto/16 :goto_1e

    .line 91
    :pswitch_e0
    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "MESSAGE_UPDATE_STATUS "

    aput-object v3, v2, v6

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate;->adapter:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;
    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateStatus(I)V

    goto/16 :goto_1e

    .line 62
    nop

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_b4
        :pswitch_bf
        :pswitch_8
        :pswitch_e0
    .end packed-switch
.end method
