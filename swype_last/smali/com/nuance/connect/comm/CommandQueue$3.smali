.class Lcom/nuance/connect/comm/CommandQueue$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/CommandQueue;


# direct methods
.method constructor <init>(Lcom/nuance/connect/comm/CommandQueue;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$3;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue;->isOnline()Z

    move-result v0

    return v0
.end method
