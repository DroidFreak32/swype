.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;
.super Lcom/nuance/swype/connect/SDKDownloadStatusCallback;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictionaryDownloadCallback"
.end annotation


# instance fields
.field private final parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V
    .locals 2
    .param p1, "parent"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .prologue
    .line 757
    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;-><init>(Ljava/lang/String;I)V

    .line 758
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 759
    return-void
.end method


# virtual methods
.method public downloadComplete()V
    .locals 0

    .prologue
    .line 763
    invoke-super {p0}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadComplete()V

    .line 764
    return-void
.end method

.method public downloadFailed(I)V
    .locals 2
    .param p1, "reasonCode"    # I

    .prologue
    .line 782
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadFailed(I)V

    .line 783
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 784
    return-void
.end method

.method public downloadInstalled()V
    .locals 4

    .prologue
    .line 768
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "downloadInstalled() "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 769
    invoke-super {p0}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadInstalled()V

    .line 770
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->INSTALLED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 771
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 4
    .param p1, "percent"    # I

    .prologue
    .line 775
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "downloadPercentage("

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ") "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 776
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadPercentage(I)V

    .line 777
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setProgress(I)V

    .line 778
    return-void
.end method

.method public downloadStarted()V
    .locals 2

    .prologue
    .line 788
    invoke-super {p0}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadStarted()V

    .line 789
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 790
    return-void
.end method

.method public downloadStopped(I)V
    .locals 2
    .param p1, "reasonCode"    # I

    .prologue
    .line 794
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadStopped(I)V

    .line 795
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 796
    return-void
.end method
