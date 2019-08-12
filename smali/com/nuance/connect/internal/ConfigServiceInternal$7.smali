.class Lcom/nuance/connect/internal/ConfigServiceInternal$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/location/ConnectLocationListener;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocation(Lcom/nuance/connect/location/ConnectLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$700(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onLocation() "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-static {v1, p1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$800(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/location/ConnectLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$900(Lcom/nuance/connect/internal/ConfigServiceInternal;Ljava/lang/String;)V

    return-void
.end method

.method public onLocationComplete(Lcom/nuance/connect/location/ConnectLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-static {v0}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$700(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onLocationComplete()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-static {v1, p1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$800(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/location/ConnectLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$900(Lcom/nuance/connect/internal/ConfigServiceInternal;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
