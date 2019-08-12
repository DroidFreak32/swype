.class public final Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;
.super Ljava/lang/Object;
.source "SwypeLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/location/SwypeLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationEventListener"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/location/SwypeLocationManager;


# direct methods
.method protected constructor <init>(Lcom/nuance/swype/location/SwypeLocationManager;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0, p1}, Lcom/nuance/swype/location/SwypeLocationManager;->access$000(Lcom/nuance/swype/location/SwypeLocationManager;Landroid/location/Location;)V

    .line 89
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {}, Lcom/nuance/swype/location/SwypeLocationManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "onProviderDisabled("

    const-string v2, ")"

    invoke-virtual {v0, v1, p1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$200(Lcom/nuance/swype/location/SwypeLocationManager;)V

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$300(Lcom/nuance/swype/location/SwypeLocationManager;)Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$400$2eeff448(Lcom/nuance/swype/location/SwypeLocationManager;)V

    .line 100
    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {}, Lcom/nuance/swype/location/SwypeLocationManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "onProviderEnabled("

    const-string v2, ")"

    invoke-virtual {v0, v1, p1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$200(Lcom/nuance/swype/location/SwypeLocationManager;)V

    .line 108
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$300(Lcom/nuance/swype/location/SwypeLocationManager;)Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;->this$0:Lcom/nuance/swype/location/SwypeLocationManager;

    invoke-static {v0}, Lcom/nuance/swype/location/SwypeLocationManager;->access$400$2eeff448(Lcom/nuance/swype/location/SwypeLocationManager;)V

    .line 112
    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-static {}, Lcom/nuance/swype/location/SwypeLocationManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "onStatusChanged("

    const-string v3, ", "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    return-void
.end method
