.class final Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$9;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)I
    .locals 2
    .param p1, "arg0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
    .param p2, "arg1"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 339
    check-cast p1, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$9;->compare(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;)I

    move-result v0

    return v0
.end method
