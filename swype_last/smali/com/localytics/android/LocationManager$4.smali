.class Lcom/localytics/android/LocationManager$4;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager;->removeAllGeofences()V
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
    .line 205
    iput-object p1, p0, Lcom/localytics/android/LocationManager$4;->this$0:Lcom/localytics/android/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 209
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

    iget-object v1, p0, Lcom/localytics/android/LocationManager$4;->this$0:Lcom/localytics/android/LocationManager;

    # getter for: Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v1}, Lcom/localytics/android/LocationManager;->access$400(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/LocationManager$4;->this$0:Lcom/localytics/android/LocationManager;

    # invokes: Lcom/localytics/android/LocationManager;->getGeofencePendingIntent()Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/localytics/android/LocationManager;->access$200(Lcom/localytics/android/LocationManager;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/GeofencingApi;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/LocationManager$4$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/LocationManager$4$1;-><init>(Lcom/localytics/android/LocationManager$4;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 228
    return-void
.end method
