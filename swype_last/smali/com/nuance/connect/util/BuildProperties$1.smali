.class Lcom/nuance/connect/util/BuildProperties$1;
.super Lcom/nuance/connect/internal/Property$BooleanValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/util/BuildProperties;


# direct methods
.method constructor <init>(Lcom/nuance/connect/util/BuildProperties;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/util/BuildProperties$1;->this$0:Lcom/nuance/connect/util/BuildProperties;

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

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->TOS_ACCEPTED:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/nuance/connect/util/BuildProperties$1;->this$0:Lcom/nuance/connect/util/BuildProperties;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # setter for: Lcom/nuance/connect/util/BuildProperties;->tosAccepted:Z
    invoke-static {v1, v0}, Lcom/nuance/connect/util/BuildProperties;->access$002(Lcom/nuance/connect/util/BuildProperties;Z)Z

    :cond_1f
    return-void
.end method
