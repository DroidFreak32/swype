.class Lcom/localytics/android/LocationManager$3;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager;->removeGeofences(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationManager;

.field final synthetic val$geofenceIdentifiersToRemove:Ljava/util/List;

.field final synthetic val$geofencesToRemove:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/localytics/android/LocationManager$3;->this$0:Lcom/localytics/android/LocationManager;

    iput-object p2, p0, Lcom/localytics/android/LocationManager$3;->val$geofenceIdentifiersToRemove:Ljava/util/List;

    iput-object p3, p0, Lcom/localytics/android/LocationManager$3;->val$geofencesToRemove:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

    iget-object v1, p0, Lcom/localytics/android/LocationManager$3;->this$0:Lcom/localytics/android/LocationManager;

    invoke-static {v1}, Lcom/localytics/android/LocationManager;->access$400(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/LocationManager$3;->val$geofenceIdentifiersToRemove:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/GeofencingApi;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/LocationManager$3$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/LocationManager$3$1;-><init>(Lcom/localytics/android/LocationManager$3;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 163
    return-void
.end method
