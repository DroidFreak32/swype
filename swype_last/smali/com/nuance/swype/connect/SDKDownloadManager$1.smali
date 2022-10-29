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
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .registers 11
    .param p1, "isConnected"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "onConnectionChanged("

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, ")"

    aput-object v3, v2, v7

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$100(Lcom/nuance/swype/connect/SDKDownloadManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 109
    .local v0, "callback":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$1;->isStalled()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 110
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v2, v3, :cond_2b

    .line 111
    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "Found stopped language "

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, " request download resume."

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    goto :goto_2b

    .line 117
    .end local v0    # "callback":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    :cond_6c
    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "onConnectionChanged...languageDownloadList: "

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$100(Lcom/nuance/swype/connect/SDKDownloadManager;)Ljava/util/HashMap;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownloadList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$100(Lcom/nuance/swype/connect/SDKDownloadManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_95

    if-eqz p1, :cond_95

    .line 120
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$1;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->init()Z

    .line 122
    :cond_95
    return-void
.end method
