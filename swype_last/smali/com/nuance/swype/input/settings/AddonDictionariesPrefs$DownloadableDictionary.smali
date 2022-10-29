.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadableDictionary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    }
.end annotation


# instance fields
.field private final dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

.field private final parent:Landroid/widget/BaseAdapter;

.field private progress:I

.field private status:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;Landroid/widget/BaseAdapter;)V
    .registers 5
    .param p1, "d"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .param p2, "s"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    .param p3, "b"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->progress:I

    .line 725
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 726
    iput-object p2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->status:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 727
    iput-object p3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->parent:Landroid/widget/BaseAdapter;

    .line 728
    return-void
.end method


# virtual methods
.method public getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .registers 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 749
    iget v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->progress:I

    return v0
.end method

.method public getStatus()Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    .registers 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->status:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    return-object v0
.end method

.method public setProgress(I)V
    .registers 3
    .param p1, "percent"    # I

    .prologue
    .line 744
    iput p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->progress:I

    .line 745
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->parent:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 746
    return-void
.end method

.method public setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V
    .registers 3
    .param p1, "s"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->status:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 740
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->parent:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 741
    return-void
.end method
