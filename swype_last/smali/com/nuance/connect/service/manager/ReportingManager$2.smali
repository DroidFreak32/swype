.class Lcom/nuance/connect/service/manager/ReportingManager$2;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/ReportingManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ReportingManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ReportingManager$2;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$BooleanValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_ALLOWED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method
