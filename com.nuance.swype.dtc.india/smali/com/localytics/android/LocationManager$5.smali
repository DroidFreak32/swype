.class Lcom/localytics/android/LocationManager$5;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager;->startMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    const-string/jumbo v0, "LocationManager startMonitoring called"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    sget-object v1, Lcom/localytics/android/LocationManager$OnConnectedTask;->REQUEST_LOCATION_UPDATES:Lcom/localytics/android/LocationManager$OnConnectedTask;

    invoke-static {v0, v1}, Lcom/localytics/android/LocationManager;->access$602(Lcom/localytics/android/LocationManager;Lcom/localytics/android/LocationManager$OnConnectedTask;)Lcom/localytics/android/LocationManager$OnConnectedTask;

    .line 299
    iget-object v0, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$400(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$700(Lcom/localytics/android/LocationManager;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$400(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    const-string/jumbo v0, "LocationManager connecting to GoogleApiClient for startMonitoring"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/localytics/android/LocationManager$5;->this$0:Lcom/localytics/android/LocationManager;

    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$400(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method
