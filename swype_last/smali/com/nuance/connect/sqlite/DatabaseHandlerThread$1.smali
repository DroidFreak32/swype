.class Lcom/nuance/connect/sqlite/DatabaseHandlerThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;


# direct methods
.method constructor <init>(Lcom/nuance/connect/sqlite/DatabaseHandlerThread;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread$1;->this$0:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/sqlite/DatabaseHandlerThread$1;->this$0:Lcom/nuance/connect/sqlite/DatabaseHandlerThread;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/connect/sqlite/DatabaseHandlerThread;->process(ILjava/lang/Object;)V

    return-void
.end method
