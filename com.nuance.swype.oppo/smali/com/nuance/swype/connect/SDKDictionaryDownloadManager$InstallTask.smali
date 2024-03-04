.class Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;
.super Landroid/os/AsyncTask;
.source "SDKDictionaryDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
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
.field private final context:Landroid/content/Context;

.field private final dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

.field manager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Landroid/content/Context;Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)V
    .locals 0
    .param p1, "dictionary"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "manager"    # Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    .prologue
    .line 413
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->context:Landroid/content/Context;

    .line 415
    iput-object p3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    .line 416
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 417
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 421
    aget-object v0, p1, v5

    .line 423
    .local v0, "filePath":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/nuance/swype/input/CategoryDBList;

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;)V

    .line 424
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/nuance/swype/input/CategoryDBList;->installDownloadedCategoryDBFile(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    .line 427
    :catch_0
    move-exception v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 406
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 434
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 435
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 436
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-static {v2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$200(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;

    .line 438
    .local v1, "r":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;
    if-nez v1, :cond_0

    .line 439
    new-instance v1, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;

    .end local v1    # "r":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;-><init>(Landroid/content/Context;I)V

    .line 440
    .restart local v1    # "r":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    invoke-static {v2}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->access$200(Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 444
    .local v0, "h":Landroid/os/Handler;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryInstallCompleted(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    .line 450
    .end local v0    # "h":Landroid/os/Handler;
    .end local v1    # "r":Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->manager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryInstallFailed(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 406
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$InstallTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
