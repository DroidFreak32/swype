.class Lcom/nuance/connect/service/manager/SessionManager$2;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/SessionManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->LOCATION:Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;

    invoke-virtual {v1}, Lcom/nuance/connect/service/configuration/ConnectConfiguration$ConfigProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v1}, Lcom/nuance/connect/service/manager/SessionManager;->access$500(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$500(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$500(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-interface {p1}, Lcom/nuance/connect/internal/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$602(Lcom/nuance/connect/service/manager/SessionManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v0}, Lcom/nuance/connect/service/manager/SessionManager;->access$000(Lcom/nuance/connect/service/manager/SessionManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "new location: \'"

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/SessionManager;->access$600(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\' old location: \'"

    iget-object v4, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v4}, Lcom/nuance/connect/service/manager/SessionManager;->access$500(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v1, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    iget-object v2, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v2}, Lcom/nuance/connect/service/manager/SessionManager;->access$500(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/connect/service/manager/SessionManager$2;->this$0:Lcom/nuance/connect/service/manager/SessionManager;

    invoke-static {v3}, Lcom/nuance/connect/service/manager/SessionManager;->access$600(Lcom/nuance/connect/service/manager/SessionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nuance/connect/service/manager/SessionManager;->access$800(Lcom/nuance/connect/service/manager/SessionManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/connect/service/manager/SessionManager;->access$702(Lcom/nuance/connect/service/manager/SessionManager;Z)Z

    :cond_2
    return-void
.end method
