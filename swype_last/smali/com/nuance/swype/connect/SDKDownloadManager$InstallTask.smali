.class Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;
.super Landroid/os/AsyncTask;
.source "SDKDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/SDKDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final languageId:Ljava/lang/Integer;

.field manager:Lcom/nuance/swype/connect/SDKDownloadManager;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Landroid/content/Context;Lcom/nuance/swype/connect/SDKDownloadManager;)V
    .registers 4
    .param p1, "languageId"    # Ljava/lang/Integer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "manager"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 782
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 783
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    .line 784
    iput-object p2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    .line 785
    iput-object p3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 786
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 15
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 790
    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "Install language ("

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    aput-object v8, v7, v10

    const-string/jumbo v8, ") beginning"

    aput-object v8, v7, v11

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 791
    aget-object v4, p1, v9

    .line 792
    .local v4, "installLanguagePath":Ljava/lang/String;
    new-instance v5, Lcom/nuance/swype/connect/LanguageInstall;

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/nuance/swype/connect/SDKDownloadManager;->getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v6

    iget-object v6, v6, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-direct {v5, v6, v7}, Lcom/nuance/swype/connect/LanguageInstall;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 794
    .local v5, "langInstaller":Lcom/nuance/swype/connect/LanguageInstall;
    :try_start_32
    invoke-virtual {v5, v4}, Lcom/nuance/swype/connect/LanguageInstall;->install(Ljava/lang/String;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_53

    .line 805
    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "Install language ("

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    aput-object v8, v7, v10

    const-string/jumbo v8, ") file copy completed successfully"

    aput-object v8, v7, v11

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 806
    const/high16 v6, -0x80000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_52
    return-object v6

    .line 795
    :catch_53
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Exception Installing: lang="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 797
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 796
    invoke-interface {v6, v7, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 798
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 799
    .local v1, "f":Ljava/io/File;
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    .line 800
    .local v2, "freeSize":J
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gtz v6, :cond_9b

    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->INTERNAL_STORAGE_FREE_SPACE_THRESHOLD:J
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$500()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_a1

    .line 801
    :cond_9b
    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_52

    .line 803
    :cond_a1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_52
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 777
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 14
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v8, 0x6

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 811
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 812
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_105

    .line 813
    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Install language ("

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    aput-object v8, v7, v11

    const-string/jumbo v8, ") begin adding to InputMethods"

    aput-object v8, v7, v9

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 814
    new-instance v5, Lcom/nuance/swype/input/LanguageList;

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 815
    .local v5, "list":Lcom/nuance/swype/input/LanguageList;
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v0

    .line 817
    .local v0, "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    const/4 v3, 0x0

    .line 818
    .local v3, "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_41
    :goto_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 819
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v6

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v6, v8, :cond_41

    .line 820
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    check-cast v3, Lcom/nuance/swype/input/InputMethods$Language;

    .restart local v3    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    goto :goto_41

    .line 823
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    :cond_66
    if-nez v3, :cond_91

    .line 824
    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Language install failed, couldn\'t find Language for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 825
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    # invokes: Lcom/nuance/swype/connect/SDKDownloadManager;->languageInstallFailed(II)V
    invoke-static {v6, v7, v10}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$900(Lcom/nuance/swype/connect/SDKDownloadManager;II)V

    .line 854
    .end local v0    # "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .end local v3    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v5    # "list":Lcom/nuance/swype/input/LanguageList;
    :goto_90
    return-void

    .line 828
    .restart local v0    # "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .restart local v3    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v5    # "list":Lcom/nuance/swype/input/LanguageList;
    :cond_91
    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    .line 829
    .local v4, "langName":Ljava/lang/String;
    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    const-string/jumbo v8, "###"

    aput-object v8, v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " LanguageID: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 830
    invoke-virtual {v5, v4}, Lcom/nuance/swype/input/LanguageList;->addDownloadedLanguage(Ljava/lang/String;)Z

    .line 837
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/nuance/swype/input/DatabaseConfig;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 838
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 839
    .local v2, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V

    .line 840
    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/IMEApplication;->onUpdateLanguage(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/IMEApplication;->onPostInstallLanguage(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v5}, Lcom/nuance/swype/input/LanguageList;->getLanguageList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f9

    .line 844
    # getter for: Lcom/nuance/swype/connect/SDKDownloadManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Error Installing: lang="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 852
    .end local v0    # "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .end local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .end local v3    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v4    # "langName":Ljava/lang/String;
    .end local v5    # "list":Lcom/nuance/swype/input/LanguageList;
    :cond_ed
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    # invokes: Lcom/nuance/swype/connect/SDKDownloadManager;->languageInstallFailed(II)V
    invoke-static {v6, v7, v10}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$900(Lcom/nuance/swype/connect/SDKDownloadManager;II)V

    goto :goto_90

    .line 847
    .restart local v0    # "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .restart local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .restart local v3    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v4    # "langName":Ljava/lang/String;
    .restart local v5    # "list":Lcom/nuance/swype/input/LanguageList;
    :cond_f9
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    # invokes: Lcom/nuance/swype/connect/SDKDownloadManager;->languageInstallCompleted(I)V
    invoke-static {v6, v7}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$1000(Lcom/nuance/swype/connect/SDKDownloadManager;I)V

    goto :goto_90

    .line 849
    .end local v0    # "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .end local v2    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .end local v3    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v4    # "langName":Ljava/lang/String;
    .end local v5    # "list":Lcom/nuance/swype/input/LanguageList;
    :cond_105
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_ed

    .line 850
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    # invokes: Lcom/nuance/swype/connect/SDKDownloadManager;->languageInstallFailed(II)V
    invoke-static {v6, v7, v8}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$900(Lcom/nuance/swype/connect/SDKDownloadManager;II)V

    goto/16 :goto_90
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 777
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
