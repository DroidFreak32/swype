.class Lcom/nuance/connect/service/ConnectClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/util/Alarm$ExecutionTimeTracker;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$1;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAlarm(J)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$1;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/connect/service/ConnectClient;->addAlarm(J)V

    return-void
.end method
