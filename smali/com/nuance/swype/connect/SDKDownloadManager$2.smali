.class Lcom/nuance/swype/connect/SDKDownloadManager$2;
.super Ljava/lang/Object;
.source "SDKDownloadManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/SDKDownloadManager;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/SDKDownloadManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/SDKDownloadManager;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public availableLanguages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "Language Download: available Languages : "

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, " "

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    invoke-static {v0, p1, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$200(Lcom/nuance/swype/connect/SDKDownloadManager;Ljava/util/List;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    .line 145
    return-void
.end method

.method public downloadedLanguages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "Language Download: Downloaded Languages : "

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, " "

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->DOWNLOADED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    invoke-static {v0, p1, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$200(Lcom/nuance/swype/connect/SDKDownloadManager;Ljava/util/List;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    .line 151
    return-void
.end method

.method public updatableLanguages(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "Language Download: Updateable Languages : "

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, " "

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageSetupComplete()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;->UPDATABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    invoke-static {v0, p1, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$200(Lcom/nuance/swype/connect/SDKDownloadManager;Ljava/util/List;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V

    .line 157
    return-void
.end method
