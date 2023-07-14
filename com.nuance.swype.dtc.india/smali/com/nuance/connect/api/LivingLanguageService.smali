.class public interface abstract Lcom/nuance/connect/api/LivingLanguageService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/LivingLanguageService$Callback;
    }
.end annotation


# static fields
.field public static final HOTWORDS_CATEGORY_ID:I = 0x400

.field public static final LLUDA_CATEGORY_ID:I = 0x401


# virtual methods
.method public abstract cancelLivingDownloads()V
.end method

.method public abstract disableLivingLanguage()V
.end method

.method public abstract enableLivingLanguage()V
.end method

.method public abstract forcePendingLivingToForeground()V
.end method

.method public abstract getMaxNumberOfLivingEvents()I
.end method

.method public abstract isHotWordsEnabled()Z
.end method

.method public abstract isLivingLanguageEnabled()Z
.end method

.method public abstract isUDAEnabled()Z
.end method

.method public abstract livingLanguageAvailable()Z
.end method

.method public abstract registerLivingCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
.end method

.method public abstract setLivingLanguageAvailable(Z)V
.end method

.method public abstract setLivingLanguageStatus(ZZ)V
.end method

.method public abstract setMaxNumberOfLivingEvents(I)V
.end method

.method public abstract unregisterLivingCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V
.end method

.method public abstract unregisterLivingCallbacks()V
.end method
