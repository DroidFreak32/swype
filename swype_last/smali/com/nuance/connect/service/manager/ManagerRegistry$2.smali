.class Lcom/nuance/connect/service/manager/ManagerRegistry$2;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/ManagerRegistry;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ManagerRegistry;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ManagerRegistry$2;->this$0:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ManagerRegistry$2;->this$0:Lcom/nuance/connect/service/manager/ManagerRegistry;

    # invokes: Lcom/nuance/connect/service/manager/ManagerRegistry;->checkIdle()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->access$000(Lcom/nuance/connect/service/manager/ManagerRegistry;)V

    return-void
.end method
