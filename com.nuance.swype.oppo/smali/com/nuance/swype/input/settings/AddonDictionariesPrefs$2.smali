.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public availableDictionaries(Ljava/util/List;)V
    .locals 2
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
    .line 91
    .local p1, "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$102(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Z)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$200(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$200(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dataChanged()V

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$200(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->updateData()V

    .line 98
    :cond_1
    return-void
.end method

.method public downloadedDictionaries(Ljava/util/List;)V
    .locals 2
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
    .line 110
    .local p1, "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$102(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Z)Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$200(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$200(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dataChanged()V

    .line 116
    :cond_1
    return-void
.end method

.method public updatableDictionaries(Ljava/util/List;)V
    .locals 2
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
    .line 102
    .local p1, "dictionaries":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$102(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Z)Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$200(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dataChanged()V

    .line 106
    return-void
.end method
