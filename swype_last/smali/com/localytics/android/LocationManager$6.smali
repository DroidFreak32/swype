.class Lcom/localytics/android/LocationManager$6;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager;->stopMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager;)V
    .registers 2

    .prologue
    .line 315
    iput-object p1, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 319
    const-string/jumbo v0, "LocationManager stopMonitoring called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    sget-object v1, Lcom/localytics/android/LocationManager$OnConnectedTask;->STOP_LOCATION_UPDATES:Lcom/localytics/android/LocationManager$OnConnectedTask;

    # setter for: Lcom/localytics/android/LocationManager;->mOnConnectedTask:Lcom/localytics/android/LocationManager$OnConnectedTask;
    invoke-static {v0, v1}, Lcom/localytics/android/LocationManager;->access$602(Lcom/localytics/android/LocationManager;Lcom/localytics/android/LocationManager$OnConnectedTask;)Lcom/localytics/android/LocationManager$OnConnectedTask;

    .line 321
    iget-object v0, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$400(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 323
    iget-object v0, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    # invokes: Lcom/localytics/android/LocationManager;->stopLocationUpdates()V
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$800(Lcom/localytics/android/LocationManager;)V

    .line 330
    :cond_1e
    :goto_1e
    return-void

    .line 325
    :cond_1f
    iget-object v0, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$400(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 327
    const-string/jumbo v0, "LocationManager connecting to GoogleApiClient for stopMonitoring"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/localytics/android/LocationManager$6;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$400(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_1e
.end method
