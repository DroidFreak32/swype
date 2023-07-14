.class Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread$1;->this$0:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread$1;->this$0:Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/PredictionDatabaseHandlerThread;->process(ILjava/lang/Object;)V

    return-void
.end method
