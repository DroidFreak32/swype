.class public interface abstract Lcom/nuance/connect/api/LivingLanguageService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/LivingLanguageService$Callback;
    }
.end annotation


# virtual methods
.method public abstract cancelDownloads()V
.end method

.method public abstract disableLivingLanguage()V
.end method

.method public abstract enableLivingLanguage()V
.end method

.method public abstract forcePendingToForeground()V
.end method

.method public abstract getMaxNumberOfEvents()I
.end method

.method public abstract isHotWordsEnabled()Z
.end method

.method public abstract isLivingLanguageEnabled()Z
.end method

.method public abstract isUDAEnabled()Z
.end method

.method public abstract livingLanguageAvailable()Z
.end method

.method public abstract registerCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
.end method

.method public abstract setLivingLanguageAvailable(Z)V
.end method

.method public abstract setLivingLanguageStatus(ZZ)V
.end method

.method public abstract setMaxNumberOfEvents(I)V
.end method

.method public abstract unregisterCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
.end method

.method public abstract unregisterCallbacks()V
.end method
