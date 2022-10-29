.class public interface abstract Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACLivingLanguageCallback"
.end annotation


# virtual methods
.method public abstract downloadProgress(IIILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract subscribed(IIILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract unsubscribed(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updated(IIILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract updatesAvailable(Z)V
.end method
