.class public Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/location/ConnectLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/location/ConnectLocationManager;


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/location/ConnectLocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0, p1}, Lcom/nuance/connect/location/ConnectLocationManager;->access$000(Lcom/nuance/connect/location/ConnectLocationManager;Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/nuance/connect/location/ConnectLocationManager;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onProviderDisabled("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$200(Lcom/nuance/connect/location/ConnectLocationManager;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$300(Lcom/nuance/connect/location/ConnectLocationManager;)Lcom/nuance/connect/location/LocationSettings$LocationMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/location/LocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$400(Lcom/nuance/connect/location/ConnectLocationManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v1}, Lcom/nuance/connect/location/ConnectLocationManager;->access$400(Lcom/nuance/connect/location/ConnectLocationManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/nuance/connect/location/ConnectLocationManager;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onProviderEnabled("

    const-string v2, ")"

    invoke-interface {v0, v1, p1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$200(Lcom/nuance/connect/location/ConnectLocationManager;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$300(Lcom/nuance/connect/location/ConnectLocationManager;)Lcom/nuance/connect/location/LocationSettings$LocationMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/location/LocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$400(Lcom/nuance/connect/location/ConnectLocationManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v1}, Lcom/nuance/connect/location/ConnectLocationManager;->access$400(Lcom/nuance/connect/location/ConnectLocationManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/nuance/connect/location/ConnectLocationManager;->access$100()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onStatusChanged("

    const-string v3, ","

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
