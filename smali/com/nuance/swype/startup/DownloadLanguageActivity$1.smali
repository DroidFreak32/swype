.class final Lcom/nuance/swype/startup/DownloadLanguageActivity$1;
.super Ljava/lang/Object;
.source "DownloadLanguageActivity.java"

# interfaces
.implements Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/DownloadLanguageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/DownloadLanguageActivity;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final languageUpdated(I)V
    .locals 6
    .param p1, "languageId"    # I

    .prologue
    .line 40
    invoke-static {}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "languageUpdated...languageId: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "...downloadingLanguage status: "

    iget-object v5, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v5}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$000(Lcom/nuance/swype/startup/DownloadLanguageActivity;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$200(Lcom/nuance/swype/startup/DownloadLanguageActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$000(Lcom/nuance/swype/startup/DownloadLanguageActivity;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$000(Lcom/nuance/swype/startup/DownloadLanguageActivity;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v1, v2, :cond_1

    .line 43
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$300(Lcom/nuance/swype/startup/DownloadLanguageActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v2}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$000(Lcom/nuance/swype/startup/DownloadLanguageActivity;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$000(Lcom/nuance/swype/startup/DownloadLanguageActivity;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v1, v2, :cond_0

    .line 45
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$000(Lcom/nuance/swype/startup/DownloadLanguageActivity;)Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 46
    .local v0, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_2

    .line 47
    invoke-static {}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "languageUpdated...lang: "

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->access$200(Lcom/nuance/swype/startup/DownloadLanguageActivity;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    iget-object v1, v1, Lcom/nuance/swype/startup/DownloadLanguageActivity;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    if-eqz v1, :cond_3

    .line 51
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    iget-object v2, v2, Lcom/nuance/swype/startup/DownloadLanguageActivity;->dataCallback:Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->unregisterDataCallback(Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;)V

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    const-class v4, Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    sget-object v2, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->BackupAndSync:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v2}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/nuance/swype/startup/DownloadLanguageActivity$1;->this$0:Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/startup/DownloadLanguageActivity;->finish()V

    goto :goto_0
.end method

.method public final listUpdated()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
