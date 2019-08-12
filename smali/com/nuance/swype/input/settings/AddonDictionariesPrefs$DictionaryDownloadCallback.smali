.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;
.super Lcom/nuance/swype/connect/SDKDownloadStatusCallback;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DictionaryDownloadCallback"
.end annotation


# instance fields
.field private final parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)V
    .locals 2
    .param p1, "parent"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .prologue
    .line 723
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

    .line 724
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .line 725
    return-void
.end method


# virtual methods
.method public downloadComplete()V
    .locals 0

    .prologue
    .line 729
    invoke-super {p0}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadComplete()V

    .line 730
    return-void
.end method

.method public downloadFailed(I)V
    .locals 2
    .param p1, "reasonCode"    # I

    .prologue
    .line 748
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadFailed(I)V

    .line 749
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 750
    return-void
.end method

.method public downloadInstalled()V
    .locals 3

    .prologue
    .line 734
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "downloadInstalled() "

    iget-object v2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 735
    invoke-super {p0}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadInstalled()V

    .line 736
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->INSTALLED:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 737
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 741
    sget-object v0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "downloadPercentage("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ") "

    iget-object v4, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 742
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadPercentage(I)V

    .line 743
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setProgress(I)V

    .line 744
    return-void
.end method

.method public downloadStarted()V
    .locals 2

    .prologue
    .line 754
    invoke-super {p0}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadStarted()V

    .line 755
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->DOWNLOADING:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 756
    return-void
.end method

.method public downloadStopped(I)V
    .locals 2
    .param p1, "reasonCode"    # I

    .prologue
    .line 760
    invoke-super {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadStatusCallback;->downloadStopped(I)V

    .line 761
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DictionaryDownloadCallback;->parent:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    sget-object v1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;->AVAILABLE:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V

    .line 762
    return-void
.end method
