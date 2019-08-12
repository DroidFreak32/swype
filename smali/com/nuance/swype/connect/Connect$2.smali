.class Lcom/nuance/swype/connect/Connect$2;
.super Ljava/lang/Object;
.source "Connect.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$2;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public availableDictionaries(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "Chinese Dictionaries: ### Available Dictionaries and categories; count="

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public downloadedDictionaries(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "Chinese Dictionaries: ### downloaded Dictionaries and categories starting; count="

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public updatableDictionaries(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string v3, "Chinese Dictionaries: ### Updatable Dictionaries and categories starting; count="

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 202
    .local v0, "dict":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Chinese Dictionaries: Updatable ### name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " language = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 206
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$2;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/Connect;->getDictionaryDownloadManager()Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    goto :goto_0

    .line 208
    .end local v0    # "dict":Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    :cond_0
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string v3, "Chinese Dictionaries: ### Updatable dictionaries and categories complete"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 209
    return-void
.end method
