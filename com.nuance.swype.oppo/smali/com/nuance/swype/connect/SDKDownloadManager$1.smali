.class Lcom/nuance/swype/connect/SDKDownloadManager$1;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "SDKDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/SDKDownloadManager;-><init>(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/SDKDownloadManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/SDKDownloadManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 6
    .param p1, "isConnected"    # Z

    .prologue
    .line 106
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string v3, "onConnectionChanged("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$100(Lcom/nuance/swype/connect/SDKDownloadManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 108
    .local v0, "callback":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$1;->isStalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v2, v3, :cond_0

    .line 110
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string v3, "Found stopped language "

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, " request download resume."

    invoke-virtual {v2, v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    goto :goto_0

    .line 116
    .end local v0    # "callback":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_1
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string v3, "onConnectionChanged...languageDownloadList: "

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v4}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$100(Lcom/nuance/swype/connect/SDKDownloadManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$100(Lcom/nuance/swype/connect/SDKDownloadManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 119
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->init()Z

    .line 121
    :cond_2
    return-void
.end method
