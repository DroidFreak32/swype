.class Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;
.super Landroid/os/AsyncTask;
.source "SDKDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/SDKDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

.field replace:Z


# direct methods
.method constructor <init>(Ljava/lang/Integer;Landroid/content/Context;Lcom/nuance/swype/connect/SDKDownloadManager;Z)V
    .locals 0
    .param p1, "languageId"    # Ljava/lang/Integer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "manager"    # Lcom/nuance/swype/connect/SDKDownloadManager;
    .param p4, "replace"    # Z

    .prologue
    .line 838
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 839
    iput-boolean p4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->replace:Z

    .line 840
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    .line 841
    iput-object p2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    .line 842
    iput-object p3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 843
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 847
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    const-string v7, "Install language ("

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    const-string v9, ") beginning"

    invoke-virtual {v6, v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 848
    const/4 v6, 0x0

    aget-object v4, p1, v6

    .line 849
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

    .line 851
    .local v5, "langInstaller":Lcom/nuance/swype/connect/LanguageInstall;
    :try_start_0
    invoke-virtual {v5, v4}, Lcom/nuance/swype/connect/LanguageInstall;->install(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    const-string v7, "Install language ("

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    const-string v9, ") file copy completed successfully"

    invoke-virtual {v6, v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 863
    const/high16 v6, -0x80000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    return-object v6

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception Installing: lang="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 855
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 856
    .local v1, "f":Ljava/io/File;
    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    .line 857
    .local v2, "freeSize":J
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gtz v6, :cond_0

    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$600()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 858
    :cond_0
    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 860
    :cond_1
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 832
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v9, 0x6

    const/4 v11, 0x0

    .line 868
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 869
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/high16 v8, -0x80000000

    if-ne v7, v8, :cond_5

    .line 870
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v7

    const-string v8, "Install language ("

    iget-object v9, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    const-string v10, ") begin adding to InputMethods"

    invoke-virtual {v7, v8, v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 871
    new-instance v6, Lcom/nuance/swype/input/LanguageList;

    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 872
    .local v6, "list":Lcom/nuance/swype/input/LanguageList;
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v0

    .line 874
    .local v0, "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    const/4 v4, 0x0

    .line 875
    .local v4, "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 876
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v7

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 877
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .restart local v4    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    goto :goto_0

    .line 880
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    :cond_1
    if-nez v4, :cond_2

    .line 881
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Language install failed, couldn\'t find Language for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 882
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8, v11}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$900(Lcom/nuance/swype/connect/SDKDownloadManager;II)V

    .line 911
    .end local v0    # "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v6    # "list":Lcom/nuance/swype/input/LanguageList;
    :goto_1
    return-void

    .line 885
    .restart local v0    # "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v6    # "list":Lcom/nuance/swype/input/LanguageList;
    :cond_2
    iget-object v5, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    .line 886
    .local v5, "langName":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v7

    const-string v8, "###"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " LanguageID: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 887
    invoke-virtual {v6, v5}, Lcom/nuance/swype/input/LanguageList;->addDownloadedLanguage(Ljava/lang/String;)Z

    .line 894
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/nuance/swype/input/DatabaseConfig;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 895
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    .line 896
    .local v3, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->refreshInputMethods()V

    .line 897
    invoke-virtual {v3, v5}, Lcom/nuance/swype/input/IMEApplication;->onUpdateLanguage(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v3, v5}, Lcom/nuance/swype/input/IMEApplication;->onPostInstallLanguage(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v6}, Lcom/nuance/swype/input/LanguageList;->getLanguageList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 901
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error Installing: lang="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 909
    .end local v0    # "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .end local v4    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v5    # "langName":Ljava/lang/String;
    .end local v6    # "list":Lcom/nuance/swype/input/LanguageList;
    :cond_3
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8, v11}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$900(Lcom/nuance/swype/connect/SDKDownloadManager;II)V

    goto :goto_1

    .line 904
    .restart local v0    # "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .restart local v4    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v5    # "langName":Ljava/lang/String;
    .restart local v6    # "list":Lcom/nuance/swype/input/LanguageList;
    :cond_4
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$1000(Lcom/nuance/swype/connect/SDKDownloadManager;I)V

    goto :goto_1

    .line 906
    .end local v0    # "allLanguanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "imeApp":Lcom/nuance/swype/input/IMEApplication;
    .end local v4    # "installLang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v5    # "langName":Ljava/lang/String;
    .end local v6    # "list":Lcom/nuance/swype/input/LanguageList;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 907
    iget-object v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDownloadManager;

    iget-object v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->languageId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8, v9}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$900(Lcom/nuance/swype/connect/SDKDownloadManager;II)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 832
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
