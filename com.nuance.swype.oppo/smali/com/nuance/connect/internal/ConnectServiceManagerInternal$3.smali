.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/util/InstallMetadata$MetaDataClient;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$3;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataStore()Lcom/nuance/connect/store/PersistentDataStore;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$3;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->access$100(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    return-object v0
.end method
