.class public interface abstract Lcom/nuance/connect/api/AddonDictionariesService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;,
        Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;,
        Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;
    }
.end annotation


# virtual methods
.method public abstract cancelDownload(Ljava/lang/String;)V
.end method

.method public abstract getAvailableDictionaries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionary;",
            ">;"
        }
    .end annotation
.end method

.method public abstract installDictionary(Ljava/lang/String;Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryDownloadCallback;)V
.end method

.method public abstract isDictionaryListAvailable()Z
.end method

.method public abstract markDictionaryInstalled(Ljava/lang/String;)V
.end method

.method public abstract notifyDictionariesofStatus()V
.end method

.method public abstract registerDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V
.end method

.method public abstract removeDictionary(Ljava/lang/String;)V
.end method

.method public abstract unregisterDictionaryListCallback(Lcom/nuance/connect/api/AddonDictionariesService$AddonDictionaryListCallback;)V
.end method

.method public abstract unregisterDictionaryListCallbacks()V
.end method
