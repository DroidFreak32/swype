.class Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DLMConnectorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DlmEventBatchProcessRunnable"
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x32


# instance fields
.field private final ackMessage:I

.field private final callback:Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;

.field private final coreId:I

.field private final dlmEventCallback:Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final eventsCount:I

.field private final identifier:Ljava/lang/String;

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private final parent:Lcom/nuance/connect/internal/DLMConnectorInternal;

.field private status:Z


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;IILcom/nuance/connect/api/DLMConnector$EventNotificationCallback;Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;Lcom/nuance/connect/internal/DLMConnectorInternal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;",
            "Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;",
            "Lcom/nuance/connect/internal/DLMConnectorInternal;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->status:Z

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->eventsCount:I

    iput-object p2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->identifier:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->coreId:I

    iput p4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->ackMessage:I

    iput-object p5, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->callback:Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;

    iput-object p6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->dlmEventCallback:Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    iput-object p7, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->parent:Lcom/nuance/connect/internal/DLMConnectorInternal;

    return-void
.end method

.method static synthetic access$1700(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->coreId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->eventsCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->ackMessage:I

    return v0
.end method


# virtual methods
.method public getStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->status:Z

    return v0
.end method

.method public run()V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "run() core: "

    iget v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->coreId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " identifier: "

    iget-object v4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->identifier:Ljava/lang/String;

    const-string v5, " total: "

    iget v6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->eventsCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, " remaining: "

    iget-object v8, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->events:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v9

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x32

    if-ge v0, v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    iget-object v3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->dlmEventCallback:Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    invoke-interface {v3, v0}, Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;->processEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->status:Z

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->status:Z

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v9

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->parent:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1500(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->callback:Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->callback:Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;

    iget v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->eventsCount:I

    invoke-interface {v0, v9, v1}, Lcom/nuance/connect/api/DLMConnector$EventNotificationCallback;->onEventProcessComplete(II)V

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;->parent:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-static {v0, p0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1600(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$DlmEventBatchProcessRunnable;)V

    goto :goto_2
.end method
