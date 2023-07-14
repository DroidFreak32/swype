.class public interface abstract Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDbInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACLanguageDbInfo"
.end annotation


# virtual methods
.method public abstract getCountryCode()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getEnhancedLanguageModels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFlavors()[Ljava/lang/String;
.end method

.method public abstract getTypes()[Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
.end method

.method public abstract getXt9LanguageId()I
.end method

.method public abstract getXt9LanguageIds()[I
.end method

.method public abstract installedFlavor()Ljava/lang/String;
.end method

.method public abstract installedType()Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLdbType;
.end method

.method public abstract isDownloaded()Z
.end method

.method public abstract isInstalled()Z
.end method

.method public abstract isNewerVersionAvailable()Z
.end method

.method public abstract isPreinstalled()Z
.end method
