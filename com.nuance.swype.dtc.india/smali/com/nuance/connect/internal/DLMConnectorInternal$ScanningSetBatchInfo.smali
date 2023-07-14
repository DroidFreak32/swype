.class Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/DLMConnectorInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanningSetBatchInfo"
.end annotation


# instance fields
.field final categoryId:I

.field final coreSpecificEventCallback:Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

.field final eventIterator:Lcom/nuance/connect/util/FileUtils$CountingIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/FileUtils$CountingIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final fileLocation:Ljava/lang/String;

.field final sentenceBased:Z

.field final wordQuality:I


# direct methods
.method private constructor <init>(Lcom/nuance/connect/util/FileUtils$CountingIterator;Ljava/lang/String;IIZLcom/nuance/connect/api/DLMConnector$DlmEventCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/util/FileUtils$CountingIterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->eventIterator:Lcom/nuance/connect/util/FileUtils$CountingIterator;

    iput-object p2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->fileLocation:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->categoryId:I

    iput p4, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->wordQuality:I

    iput-boolean p5, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->sentenceBased:Z

    iput-object p6, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;->coreSpecificEventCallback:Lcom/nuance/connect/api/DLMConnector$DlmEventCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/connect/util/FileUtils$CountingIterator;Ljava/lang/String;IIZLcom/nuance/connect/api/DLMConnector$DlmEventCallback;Lcom/nuance/connect/internal/DLMConnectorInternal$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;-><init>(Lcom/nuance/connect/util/FileUtils$CountingIterator;Ljava/lang/String;IIZLcom/nuance/connect/api/DLMConnector$DlmEventCallback;)V

    return-void
.end method
