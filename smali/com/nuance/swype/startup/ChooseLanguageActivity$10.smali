.class final Lcom/nuance/swype/startup/ChooseLanguageActivity$10;
.super Ljava/lang/Object;
.source "ChooseLanguageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ChooseLanguageActivity;->showActiveLanguagesList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

.field private synthetic val$availableLanguages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    iput-object p2, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->val$availableLanguages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$600()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    const-string v7, "onItemClick: "

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v6}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v5

    .line 309
    .local v5, "sdkDownloadManager":Lcom/nuance/swype/connect/SDKDownloadManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList(Z)Ljava/util/Map;

    move-result-object v2

    .line 310
    .local v2, "downloadableLanguageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;>;"
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->val$availableLanguages:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$Language;

    .line 311
    .local v3, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v4

    .line 312
    .local v4, "languageId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 314
    .local v1, "downloadableLanguage":Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
    invoke-static {}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$600()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    const-string v7, "onItemClick: language: "

    iget-object v8, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    move-result-object v6

    sget-object v7, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOAD_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v6, v7, :cond_1

    .line 318
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v6}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->access$500(Lcom/nuance/swype/startup/ChooseLanguageActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 344
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {v5, v4}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    .line 322
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    const-class v9, Lcom/nuance/swype/startup/DownloadLanguageActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v6}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 324
    .local v0, "app":Lcom/nuance/swype/input/AppPreferences;
    iget-object v6, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceDownloadLanguageName(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceDownloadLanguageDisplayName(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceDownloadLanguageID(Ljava/lang/String;)V

    .line 327
    sget-object v6, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->DownloadLanguage:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v6}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 328
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-virtual {v6}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->finish()V

    goto :goto_0

    .line 333
    .end local v0    # "app":Lcom/nuance/swype/input/AppPreferences;
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    const-class v9, Lcom/nuance/swype/startup/BackupAndSyncActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->startActivity(Landroid/content/Intent;)V

    .line 335
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v6}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v6

    sget-object v7, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->BackupAndSync:Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;

    invoke-virtual {v7}, Lcom/nuance/swype/startup/StartupActivity$StartupSequenceEnum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceStatus(Ljava/lang/String;)V

    .line 337
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v6}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v6

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceDownloadLanguageID(Ljava/lang/String;)V

    .line 340
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-static {v6}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v6

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 342
    iget-object v6, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$10;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-virtual {v6}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->finish()V

    goto :goto_0
.end method
