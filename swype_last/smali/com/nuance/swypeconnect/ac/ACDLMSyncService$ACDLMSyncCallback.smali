.class public interface abstract Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACDLMSyncCallback"
.end annotation


# virtual methods
.method public abstract backupOccurred(II)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract receivedEvents(II)V
.end method

.method public abstract restoreOccurred(II)V
.end method

.method public abstract sentEvents(II)V
.end method
