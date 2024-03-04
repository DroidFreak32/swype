.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

.field final synthetic val$dictionary:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;->val$dictionary:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 559
    iget-object v3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->access$1400(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;->val$dictionary:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 561
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    if-eqz v2, :cond_1

    .line 562
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 563
    .local v0, "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;->val$dictionary:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    sget-object v3, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 569
    .end local v0    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->access$1500(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$2;->val$dictionary:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryCancel(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Z

    .line 570
    return-void
.end method
