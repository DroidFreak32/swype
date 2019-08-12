.class Lcom/nuance/connect/internal/ResourcesServiceInternal$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    iput-object p2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$2;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$2;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ResourcesServiceInternal;->access$1000(Lcom/nuance/connect/internal/ResourcesServiceInternal;Ljava/lang/String;)V

    return-void
.end method
