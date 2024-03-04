.class Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/SyncService$DLMSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DLMSyncCallbackWrapper"
.end annotation


# instance fields
.field callback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;


# direct methods
.method private constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;Lcom/nuance/swypeconnect/ac/ACDLMSyncService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;)V

    return-void
.end method


# virtual methods
.method public backupOccurred(II)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;->backupOccurred(II)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public receivedEvents(II)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;->receivedEvents(II)V

    return-void
.end method

.method public restoreOccurred(II)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;->restoreOccurred(II)V

    return-void
.end method

.method public sentEvents(II)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$DLMSyncCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;->sentEvents(II)V

    return-void
.end method
