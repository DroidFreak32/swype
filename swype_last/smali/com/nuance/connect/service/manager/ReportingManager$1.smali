.class Lcom/nuance/connect/service/manager/ReportingManager$1;
.super Lcom/nuance/connect/internal/Property$IntegerValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/ReportingManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/ReportingManager;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/manager/ReportingManager$1;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$IntegerValueListener;-><init>()V

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->REPORTING_FREQUENCY:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/nuance/connect/service/manager/ReportingManager$1;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/nuance/connect/service/manager/ReportingManager;->reportingInterval:I
    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$002(Lcom/nuance/connect/service/manager/ReportingManager;I)I

    iget-object v0, p0, Lcom/nuance/connect/service/manager/ReportingManager$1;->this$0:Lcom/nuance/connect/service/manager/ReportingManager;

    # invokes: Lcom/nuance/connect/service/manager/ReportingManager;->determineUsageNextRun()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/ReportingManager;->access$100(Lcom/nuance/connect/service/manager/ReportingManager;)V

    :cond_24
    return-void
.end method
