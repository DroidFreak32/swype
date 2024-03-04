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
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 58
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    :pswitch_0
    return v6

    .line 60
    :pswitch_1
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "dlManager.isLanguageSetupComplete() "

    iget-object v3, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, " dlManager.isLanguageListAvailable() "

    iget-object v5, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$000(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList()Ljava/util/Map;

    move-result-object v0

    .line 63
    .local v0, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1, v6}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$202(Lcom/nuance/swype/input/settings/LanguageUpdate;Z)Z

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateLanguages(Ljava/util/Map;)Z

    .line 67
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 69
    .end local v0    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 75
    :pswitch_2
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->doNotifyDataSetInvalidated()V

    goto/16 :goto_0

    .line 79
    :pswitch_3
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$200(Lcom/nuance/swype/input/settings/LanguageUpdate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    iget-object v1, v1, Lcom/nuance/swype/input/settings/LanguageUpdate;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$500(Lcom/nuance/swype/input/settings/LanguageUpdate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->showTimeoutDialog()V

    goto/16 :goto_0

    .line 87
    :pswitch_4
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "MESSAGE_UPDATE_STATUS "

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateStatus(I)V

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
