.class Lcom/nuance/connect/internal/ConfigServiceInternal$5;
.super Lcom/nuance/connect/internal/Property$StringValueListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$5;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {p0}, Lcom/nuance/connect/internal/Property$StringValueListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Lcom/nuance/connect/internal/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$5;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$5;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->onConnectivityChanged()V

    :cond_0
    return-void
.end method
