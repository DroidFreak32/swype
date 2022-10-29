.class Lcom/nuance/connect/internal/DLMConnectorInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/connect/internal/DLMConnectorInternal$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v0

    const-string/jumbo v1, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {v0, p1, v1}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$1;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->dlmEventProcessingQueue:Lcom/nuance/connect/util/InstallMetadata;
    invoke-static {v2}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$000(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/InstallMetadata;

    move-result-object v2

    const-string/jumbo v3, "DLM_EVENT_TIMESTAMP"

    invoke-virtual {v2, p2, v3}, Lcom/nuance/connect/util/InstallMetadata;->getLongProp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method
