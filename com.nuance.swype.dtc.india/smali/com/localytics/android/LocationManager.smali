.class Lcom/localytics/android/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/LocationManager$7;,
        Lcom/localytics/android/LocationManager$OnConnectedTask;
    }
.end annotation


# static fields
.field private static final UPDATE_FASTEST_INTERVAL:J = 0xea60L

.field private static final UPDATE_INTERVAL:J = 0x493e0L


# instance fields
.field private mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mGeofencePendingIntent:Landroid/app/PendingIntent;

.field private mLastLocation:Landroid/location/Location;

.field private mListener:Lcom/localytics/android/LocationChangedListener;

.field private mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field private mOnConnectedTask:Lcom/localytics/android/LocationManager$OnConnectedTask;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/LocationManager;)Lcom/localytics/android/LocalyticsDao;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/LocationManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/LocationManager;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/LocationManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$102(Lcom/localytics/android/LocationManager;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/LocationManager;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/localytics/android/LocationManager;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/localytics/android/LocationManager;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/LocationManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->getGeofencePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/localytics/android/LocationManager;Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/LocationManager;
    .param p1, "x1"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationManager;->handleErrorStatus(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic access$400(Lcom/localytics/android/LocationManager;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/LocationManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/localytics/android/LocationManager;Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest;
    .locals 1
    .param p0, "x0"    # Lcom/localytics/android/LocationManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationManager;->getGeofencingRequest(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/localytics/android/LocationManager;Lcom/localytics/android/LocationManager$OnConnectedTask;)Lcom/localytics/android/LocationManager$OnConnectedTask;
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/LocationManager;
    .param p1, "x1"    # Lcom/localytics/android/LocationManager$OnConnectedTask;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/localytics/android/LocationManager;->mOnConnectedTask:Lcom/localytics/android/LocationManager$OnConnectedTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/localytics/android/LocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/LocationManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->requestLocationUpdates()V

    return-void
.end method

.method static synthetic access$800(Lcom/localytics/android/LocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/LocationManager;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->stopLocationUpdates()V

    return-void
.end method

.method private convertRegions(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 256
    .local v0, "geofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/localytics/android/CircularRegion;

    .line 258
    .local v8, "reg":Lcom/localytics/android/CircularRegion;
    new-instance v1, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    invoke-virtual {v8}, Lcom/localytics/android/CircularRegion;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/localytics/android/CircularRegion;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v8}, Lcom/localytics/android/CircularRegion;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v8}, Lcom/localytics/android/CircularRegion;->getRadius()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v8    # "reg":Lcom/localytics/android/CircularRegion;
    :cond_0
    return-object v0
.end method

.method private declared-synchronized createApiClientIfNecessary()V
    .locals 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getGeofencePendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mGeofencePendingIntent:Landroid/app/PendingIntent;

    .line 287
    :goto_0
    return-object v1

    .line 286
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/localytics/android/GeofenceTransitionsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0
.end method

.method private getGeofencingRequest(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)",
            "Lcom/google/android/gms/location/GeofencingRequest;"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    new-instance v0, Lcom/google/android/gms/location/GeofencingRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;-><init>()V

    .line 242
    .local v0, "builder":Lcom/google/android/gms/location/GeofencingRequest$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    .line 243
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationManager;->convertRegions(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofences(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    .line 244
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->build()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v1

    return-object v1
.end method

.method private handleErrorStatus(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    .line 171
    .local v0, "statusCode":I
    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Removing all monitored geofences to reset state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->removeAllGeofences()V

    .line 185
    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->stoppedMonitoringAllGeofences()V

    .line 188
    :goto_0
    return-void

    .line 174
    :pswitch_0
    const-string/jumbo v1, "GEOFENCE_NOT_AVAILABLE. Resetting database state to none monitored."

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->stoppedMonitoringAllGeofences()V

    goto :goto_0

    .line 178
    :pswitch_1
    const-string/jumbo v1, "GEOFENCE_TOO_MANY_GEOFENCES. Removing all monitored geofences to reset state."

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->removeAllGeofences()V

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeAllGeofences()V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/localytics/android/LocationManager$4;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationManager$4;-><init>(Lcom/localytics/android/LocationManager;)V

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method private requestLocationUpdates()V
    .locals 4

    .prologue
    .line 353
    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 356
    if-nez v1, :cond_0

    .line 358
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 359
    .local v0, "request":Lcom/google/android/gms/location/LocationRequest;
    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 360
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 361
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 362
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 363
    const-string/jumbo v1, "LocationManager requesting location updates"

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 365
    .end local v0    # "request":Lcom/google/android/gms/location/LocationRequest;
    :cond_0
    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 341
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 343
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private startMonitoring()V
    .locals 1

    .prologue
    .line 292
    new-instance v0, Lcom/localytics/android/LocationManager$5;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationManager$5;-><init>(Lcom/localytics/android/LocationManager;)V

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method private stopLocationUpdates()V
    .locals 2

    .prologue
    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/LocationManager;->mLastLocation:Landroid/location/Location;

    .line 370
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 371
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->removeAllGeofences()V

    .line 372
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 373
    const-string/jumbo v0, "LocationManager stopped monitoring location"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method private stopMonitoring()V
    .locals 1

    .prologue
    .line 314
    new-instance v0, Lcom/localytics/android/LocationManager$6;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationManager$6;-><init>(Lcom/localytics/android/LocationManager;)V

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method


# virtual methods
.method public addGeofences(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->createApiClientIfNecessary()V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    new-instance v0, Lcom/localytics/android/LocationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/LocationManager$1;-><init>(Lcom/localytics/android/LocationManager;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 122
    :cond_0
    return-void
.end method

.method public initialize(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/LocationChangedListener;)V
    .locals 0
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "listener"    # Lcom/localytics/android/LocationChangedListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/localytics/android/LocationManager;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 54
    iput-object p2, p0, Lcom/localytics/android/LocationManager;->mListener:Lcom/localytics/android/LocationChangedListener;

    .line 55
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 380
    const-string/jumbo v0, "LocationManager GoogleApiClient connected"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 381
    sget-object v0, Lcom/localytics/android/LocationManager$7;->$SwitchMap$com$localytics$android$LocationManager$OnConnectedTask:[I

    iget-object v1, p0, Lcom/localytics/android/LocationManager;->mOnConnectedTask:Lcom/localytics/android/LocationManager$OnConnectedTask;

    invoke-virtual {v1}, Lcom/localytics/android/LocationManager$OnConnectedTask;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 384
    :pswitch_0
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->requestLocationUpdates()V

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->stopLocationUpdates()V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LocationManager GoogleApiClient onConnectionFailed. result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2
    .param p1, "cause"    # I

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LocationManager GoogleApiClient onConnectionSuspended. cause: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 396
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LocationManager onLocationChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 408
    iput-object p1, p0, Lcom/localytics/android/LocationManager;->mLastLocation:Landroid/location/Location;

    .line 409
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mListener:Lcom/localytics/android/LocationChangedListener;

    invoke-interface {v0, p1}, Lcom/localytics/android/LocationChangedListener;->onLocationChanged(Landroid/location/Location;)V

    .line 410
    return-void
.end method

.method public removeGeofences(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "geofencesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->createApiClientIfNecessary()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v0, "geofenceIdentifiersToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/localytics/android/LocationManager$2;

    invoke-direct {v1, p0}, Lcom/localytics/android/LocationManager$2;-><init>(Lcom/localytics/android/LocationManager;)V

    invoke-static {p1, v0, v1}, Lcom/localytics/android/Utils;->map(Ljava/util/Collection;Ljava/util/Collection;Lcom/localytics/android/Utils$Mapper;)V

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 139
    new-instance v1, Lcom/localytics/android/LocationManager$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/localytics/android/LocationManager$3;-><init>(Lcom/localytics/android/LocationManager;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v1}, Lcom/localytics/android/LocationManager;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    return-void
.end method

.method public declared-synchronized setMonitoringEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->createApiClientIfNecessary()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LocationManager setMonitoringEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 62
    if-eqz p1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->startMonitoring()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/localytics/android/LocationManager;->stopMonitoring()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateListenersWithLastLocation()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/localytics/android/LocationManager;->mLastLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationManager;->onLocationChanged(Landroid/location/Location;)V

    .line 78
    :cond_0
    return-void
.end method
