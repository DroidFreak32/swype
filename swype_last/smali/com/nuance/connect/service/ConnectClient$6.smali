.class Lcom/nuance/connect/service/ConnectClient$6;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$6;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$6;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->connectConfiguration:Lcom/nuance/connect/service/configuration/ConnectConfiguration;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$300(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/service/configuration/ConnectConfiguration;->loadOverrides()V

    return-void
.end method
