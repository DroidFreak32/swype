.class public interface abstract Lcom/nuance/connect/api/LivingLanguageService$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/api/LivingLanguageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract downloadProgress(IIILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract subscriptionAdded(IIILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract subscriptionRemoved(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract subscriptionUpdated(IIILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract updatesAvailable(Z)V
.end method
