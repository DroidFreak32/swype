.class public Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;
.super Landroid/os/AsyncTask;
.source "ThemeWordListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ThemeWordListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WordListAdderAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApkFilePath:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mSku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "apkFilePath"    # Ljava/lang/String;

    .prologue
    .line 408
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;->mContext:Landroid/content/Context;

    .line 410
    iput-object p2, p0, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;->mSku:Ljava/lang/String;

    .line 411
    iput-object p3, p0, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;->mApkFilePath:Ljava/lang/String;

    .line 412
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 402
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/ThemeWordListManager;->getInstance(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeWordListManager;

    move-result-object v1

    .line 417
    .local v1, "listManager":Lcom/nuance/swype/input/ThemeWordListManager;
    const/4 v0, 0x0

    .line 419
    .local v0, "buckets":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;>;"
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;->mSku:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;->mApkFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/ThemeWordListManager;->createWordListBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 423
    :goto_0
    return-object v0

    .line 421
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 402
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "buckets":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/ThemeWordListManager$WordListAdderAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 429
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v1, :cond_0

    .line 430
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 431
    .local v0, "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getNewWordsBucketFactory()Lcom/nuance/swype/input/udb/NewWordsBucketFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory;->addWordListBucket(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;)V

    goto :goto_0

    .line 434
    .end local v0    # "bucket":Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    :cond_0
    return-void
.end method
