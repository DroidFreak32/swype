.class Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;
.super Landroid/os/AsyncTask;
.source "DragonCustomWordSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResyncUdbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mRecognizerType:I

.field final synthetic this$0:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;


# direct methods
.method private constructor <init>(Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->this$0:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;
    .param p2, "x1"    # Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$1;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;-><init>(Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/Set;
    .locals 4
    .param p1, "recognizerType"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->mRecognizerType:I

    .line 245
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 246
    .local v2, "wordsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 249
    .local v0, "cancelled":Z
    :goto_0
    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->this$0:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    invoke-static {v3}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->access$100(Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->getNext(Ljava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 251
    const/4 v0, 0x1

    .line 257
    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .end local v2    # "wordsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-object v2

    .line 254
    .restart local v2    # "wordsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "resultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->this$0:Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;

    iget v1, p0, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer$ResyncUdbTask;->mRecognizerType:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;->access$200(Lcom/nuance/speech/dragon/DragonCustomWordSynchronizer;ILjava/util/Set;Z)V

    .line 263
    return-void
.end method
