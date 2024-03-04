.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
    .locals 1
    .param p1, "d"    # Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .param p2, "s"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    .param p3, "b"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->progress:I

    .line 691
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    .line 692
    iput-object p2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->status:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 693
    iput-object p3, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->parent:Landroid/widget/BaseAdapter;

    .line 694
    return-void
.end method


# virtual methods
.method public getDictionary()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->dictionary:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->progress:I

    return v0
.end method

.method public getStatus()Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->status:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    return-object v0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 710
    iput p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->progress:I

    .line 711
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->parent:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 712
    return-void
.end method

.method public setStatus(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;)V
    .locals 1
    .param p1, "s"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->status:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary$Status;

    .line 706
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$DownloadableDictionary;->parent:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 707
    return-void
.end method
