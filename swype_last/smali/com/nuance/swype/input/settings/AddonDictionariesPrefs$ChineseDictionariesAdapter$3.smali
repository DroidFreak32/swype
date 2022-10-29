.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$3;
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
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$3;->val$dictionary:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 588
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    .line 589
    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->dictionaries:Ljava/util/Map;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->access$1500(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$3;->val$dictionary:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 590
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;>;"
    if-eqz v1, :cond_45

    .line 591
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 592
    .local v0, "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$3;->val$dictionary:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 593
    sget-object v2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 598
    .end local v0    # "dd":Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    :cond_45
    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->downloadManager:Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
    invoke-static {v2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->access$1600(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$3;->val$dictionary:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;->dictionaryCancel(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)Z

    .line 599
    return-void
.end method
