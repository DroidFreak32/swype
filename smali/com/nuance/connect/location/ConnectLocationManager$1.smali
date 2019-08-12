.class Lcom/nuance/connect/location/ConnectLocationManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/location/ConnectLocationManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/location/ConnectLocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$500(Lcom/nuance/connect/location/ConnectLocationManager;)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$600(Lcom/nuance/connect/location/ConnectLocationManager;)V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v2}, Lcom/nuance/connect/location/ConnectLocationManager;->access$500(Lcom/nuance/connect/location/ConnectLocationManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$600(Lcom/nuance/connect/location/ConnectLocationManager;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v1}, Lcom/nuance/connect/location/ConnectLocationManager;->access$700(Lcom/nuance/connect/location/ConnectLocationManager;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/location/ConnectLocationManager;->access$000(Lcom/nuance/connect/location/ConnectLocationManager;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$800(Lcom/nuance/connect/location/ConnectLocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$900(Lcom/nuance/connect/location/ConnectLocationManager;)Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$700(Lcom/nuance/connect/location/ConnectLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v1}, Lcom/nuance/connect/location/ConnectLocationManager;->access$900(Lcom/nuance/connect/location/ConnectLocationManager;)Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/connect/location/ConnectLocationManager;->access$902(Lcom/nuance/connect/location/ConnectLocationManager;Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;)Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    goto :goto_1

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager$1;->this$0:Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-static {v1, v0}, Lcom/nuance/connect/location/ConnectLocationManager;->access$1000(Lcom/nuance/connect/location/ConnectLocationManager;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
