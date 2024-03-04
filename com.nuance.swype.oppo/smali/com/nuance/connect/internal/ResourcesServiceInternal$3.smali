.class Lcom/nuance/connect/internal/ResourcesServiceInternal$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

.field final synthetic val$callback:Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ResourcesServiceInternal;Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->this$0:Lcom/nuance/connect/internal/ResourcesServiceInternal;

    iput-object p2, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$callback:Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;

    iput-object p3, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$callback:Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;

    iget-object v1, p0, Lcom/nuance/connect/internal/ResourcesServiceInternal$3;->val$locale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/ResourcesService$ProcessingCallback;->complete(Ljava/util/Locale;)V

    return-void
.end method
