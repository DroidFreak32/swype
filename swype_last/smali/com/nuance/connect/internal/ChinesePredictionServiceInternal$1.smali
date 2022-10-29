.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$1;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->transmitOrShutdown()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$000(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;)V

    return-void
.end method
