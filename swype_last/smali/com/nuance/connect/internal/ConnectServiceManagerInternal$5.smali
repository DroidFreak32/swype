.class Lcom/nuance/connect/internal/ConnectServiceManagerInternal$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$5;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/ConnectServiceManagerInternal$5;->this$0:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->refresh(Z)V

    return-void
.end method
