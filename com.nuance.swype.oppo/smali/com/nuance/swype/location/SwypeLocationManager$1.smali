.class final Lcom/nuance/swype/location/SwypeLocationManager$1;
.super Ljava/lang/Object;
.source "SwypeLocationManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/location/SwypeLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/location/SwypeLocationManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/location/SwypeLocationManager;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$500(Lcom/nuance/swype/location/SwypeLocationManager;)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$600(Lcom/nuance/swype/location/SwypeLocationManager;)V

    .line 163
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v2}, Lcom/nuance/swype/location/SwypeLocationManager;->access$500(Lcom/nuance/swype/location/SwypeLocationManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$600(Lcom/nuance/swype/location/SwypeLocationManager;)V

    goto :goto_1

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    iget-object v1, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v1}, Lcom/nuance/swype/location/SwypeLocationManager;->access$700(Lcom/nuance/swype/location/SwypeLocationManager;)Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/swype/location/SwypeLocationManager;->access$000(Lcom/nuance/swype/location/SwypeLocationManager;Landroid/location/Location;)V

    .line 155
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$800(Lcom/nuance/swype/location/SwypeLocationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$900(Lcom/nuance/swype/location/SwypeLocationManager;)Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$700(Lcom/nuance/swype/location/SwypeLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v1}, Lcom/nuance/swype/location/SwypeLocationManager;->access$900(Lcom/nuance/swype/location/SwypeLocationManager;)Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$1;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$902$3c12c8f6(Lcom/nuance/swype/location/SwypeLocationManager;)Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
