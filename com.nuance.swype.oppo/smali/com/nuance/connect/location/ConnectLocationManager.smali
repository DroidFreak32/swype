.class public Lcom/nuance/connect/location/ConnectLocationManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/location/ConnectLocationManager$2;,
        Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;
    }
.end annotation


# static fields
.field private static final CHECK_ONCE_GPS_TIMEOUT:I = 0x7530

.field private static final DEFAULT_MIN_DISTANCE_FINDER:F = 1610.0f

.field private static final DEFAULT_MIN_TIME_FINDER:J = 0x1b7740L

.field private static final DEFAULT_TIME_FINDER:J = 0x36ee80L

.field public static final MINIMUM_LOCATION_DELTA:F = 1000.0f

.field private static final MSG_GPS_LOCATION_TIMEOUT:I = 0x7d1

.field private static final MSG_LOCATION_PROCESSED_CHECK:I = 0x7d0

.field private static final MSG_UPDATE_LISTENERS:I = 0x7d2

.field private static final STALE_INTERVAL:I = 0x36ee80

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private volatile aggregateSettings:Lcom/nuance/connect/location/LocationSettings;

.field private allowedGps:Z

.field private allowedNetwork:Z

.field private allowedPassive:Z

.field private attemptOnceGPS:Z

.field private attemptOnceNetwork:Z

.field private ctx:Landroid/content/Context;

.field private volatile currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

.field private gpsEnabled:Z

.field private volatile gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private hasCoarse:Z

.field private hasFine:Z

.field private volatile lastLocation:Lcom/nuance/connect/location/ConnectLocation;

.field private lastLocationProcessed:J

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/connect/location/ConnectLocationListener;",
            "Lcom/nuance/connect/location/LocationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private locationLevel:I

.field private volatile locationManager:Landroid/location/LocationManager;

.field private final mHandler:Landroid/os/Handler;

.field private minDistanceFinder:F

.field private minTimeFinder:J

.field private networkEnabled:Z

.field private volatile networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

.field private passiveListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/location/ConnectLocationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->listeners:Ljava/util/Map;

    iput v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationLevel:I

    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsEnabled:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkEnabled:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedNetwork:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedPassive:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->lastLocationProcessed:J

    sget-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->attemptOnceNetwork:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->attemptOnceGPS:Z

    const v0, 0x44c94000    # 1610.0f

    iput v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minDistanceFinder:F

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minTimeFinder:J

    new-instance v0, Lcom/nuance/connect/location/ConnectLocationManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/ConnectLocationManager$1;-><init>(Lcom/nuance/connect/location/ConnectLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0, v1}, Lcom/nuance/connect/util/WeakReferenceHandler;->create(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    iput p2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationLevel:I

    int-to-float v0, p3

    iput v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minDistanceFinder:F

    int-to-long v0, p4

    iput-wide v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minTimeFinder:J

    invoke-direct {p0}, Lcom/nuance/connect/location/ConnectLocationManager;->setupLocationService()V

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/location/ConnectLocationManager;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/location/ConnectLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/connect/location/ConnectLocationManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/connect/location/ConnectLocationManager;->updateActiveListeners(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/connect/location/ConnectLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/location/ConnectLocationManager;->setupLocationService()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/connect/location/ConnectLocationManager;)Lcom/nuance/connect/location/LocationSettings$LocationMode;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/connect/location/ConnectLocationManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/connect/location/ConnectLocationManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->lastLocationProcessed:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/nuance/connect/location/ConnectLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/connect/location/ConnectLocationManager;->attemptFetchOnce()V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/connect/location/ConnectLocationManager;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/connect/location/ConnectLocationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->attemptOnceGPS:Z

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/connect/location/ConnectLocationManager;)Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/nuance/connect/location/ConnectLocationManager;Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;)Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    return-object p1
.end method

.method private attemptFetchOnce()V
    .locals 10

    const-wide/32 v8, 0xea60

    const-wide/16 v2, 0x0

    const/16 v6, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "attemptFetchOnce()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->aggregateSettings:Lcom/nuance/connect/location/LocationSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/location/LocationSettings;->getActiveSearch()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, " -- not allowed to active search."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->attemptOnceNetwork:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    if-nez v0, :cond_3

    iput-boolean v5, p0, Lcom/nuance/connect/location/ConnectLocationManager;->attemptOnceNetwork:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/ConnectLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->attemptOnceGPS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    if-nez v0, :cond_0

    iput-boolean v5, p0, Lcom/nuance/connect/location/ConnectLocationManager;->attemptOnceGPS:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/ConnectLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    iget-object v3, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static compareLocations(Landroid/util/Pair;Landroid/util/Pair;F)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;F)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All coordinates are required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v8, v9, [F

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v6, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "distance between locations: "

    aget v2, v8, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, " meters"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aget v0, v8, v10

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_2

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "new location exceeds delta.  "

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    move v0, v9

    :goto_0
    return v0

    :cond_2
    move v0, v10

    goto :goto_0
.end method

.method public static getLatLong(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    :try_start_0
    new-instance v0, Landroid/util/Pair;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v6, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isBetterLocation(Lcom/nuance/connect/location/ConnectLocation;Lcom/nuance/connect/location/ConnectLocation;)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/nuance/connect/location/ConnectLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/nuance/connect/location/ConnectLocation;->getTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    const-wide/32 v6, 0x36ee80

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    const-wide/32 v6, -0x36ee80

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/nuance/connect/location/ConnectLocation;->getAccuracy()F

    move-result v3

    invoke-virtual {p2}, Lcom/nuance/connect/location/ConnectLocation;->getAccuracy()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    if-ltz v3, :cond_0

    if-eqz v2, :cond_4

    if-gtz v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private declared-synchronized processLocationUpdate(Landroid/location/Location;)V
    .locals 11

    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Recieved Location Update, but was null. Not Processing."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->lastLocationProcessed:J

    new-instance v10, Lcom/nuance/connect/location/ConnectLocation;

    invoke-direct {v10, p1}, Lcom/nuance/connect/location/ConnectLocation;-><init>(Landroid/location/Location;)V

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Location Update: Time: ["

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "] "

    const-string v4, "Provider: ["

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    const-string v6, "] "

    const-string v7, "Acuracy: ["

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v9, "]"

    invoke-interface/range {v0 .. v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Location Update Long: ["

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "] "

    const-string v4, "Lat: ["

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "]"

    invoke-interface/range {v0 .. v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->lastLocation:Lcom/nuance/connect/location/ConnectLocation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->lastLocation:Lcom/nuance/connect/location/ConnectLocation;

    invoke-direct {p0, v10, v0}, Lcom/nuance/connect/location/ConnectLocationManager;->isBetterLocation(Lcom/nuance/connect/location/ConnectLocation;Lcom/nuance/connect/location/ConnectLocation;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Not a better location then the previous last location. Stopping Processing."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->aggregateSettings:Lcom/nuance/connect/location/LocationSettings;

    if-nez v0, :cond_3

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Error processing location update without configuration"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->aggregateSettings:Lcom/nuance/connect/location/LocationSettings;

    invoke-direct {p0, v10, v0}, Lcom/nuance/connect/location/ConnectLocationManager;->sendUpdate(Lcom/nuance/connect/location/ConnectLocation;Lcom/nuance/connect/location/LocationSettings;)V

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->attemptOnceGPS:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    :cond_4
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->attemptOnceNetwork:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized sendUpdate(Lcom/nuance/connect/location/ConnectLocation;Lcom/nuance/connect/location/LocationSettings;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/connect/location/ConnectLocationListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/location/LocationSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/location/LocationSettings;->markUpdate()V

    invoke-virtual {v0}, Lcom/nuance/connect/location/LocationSettings;->shouldContinue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1, p1}, Lcom/nuance/connect/location/ConnectLocationListener;->onLocationComplete(Lcom/nuance/connect/location/ConnectLocation;)V

    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Lcom/nuance/connect/location/ConnectLocationListener;->onLocation(Lcom/nuance/connect/location/ConnectLocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->lastLocation:Lcom/nuance/connect/location/ConnectLocation;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method private setupLocationService()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/ConnectLocationManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    iput-boolean v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsEnabled:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkEnabled:Z

    iget v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationLevel:I

    packed-switch v0, :pswitch_data_0

    :goto_3
    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Setup of Location Service: Level: ["

    iget v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "] fine: ["

    iget-boolean v4, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "] course: ["

    iget-boolean v6, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "]"

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Setup of Location Service: allowed gps: ["

    iget-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "] network: ["

    iget-boolean v4, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedNetwork:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "] passive: ["

    iget-boolean v6, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedPassive:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "]"

    invoke-interface/range {v0 .. v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/nuance/connect/location/ConnectLocationManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_0
    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedNetwork:Z

    move-object v0, p0

    :goto_4
    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedPassive:Z

    goto :goto_3

    :pswitch_1
    iput-boolean v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedNetwork:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_4

    :goto_6
    iput-boolean v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedPassive:Z

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_6

    :pswitch_2
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedNetwork:Z

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_5

    move-object v0, p0

    goto :goto_5

    :cond_5
    move-object v0, p0

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startNewLocationPattern(Lcom/nuance/connect/location/LocationSettings;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Lcom/nuance/connect/location/LocationSettings;->getMode()Lcom/nuance/connect/location/LocationSettings$LocationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    iput-object p1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->aggregateSettings:Lcom/nuance/connect/location/LocationSettings;

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Starting new location pattern for mode: ["

    iget-object v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    const-string v3, "]"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Unable to aquire location manager."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationLevel:I

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "No valid permissions for location."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_5

    const-string v0, "network"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/LocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "---- last network requested"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/nuance/connect/location/ConnectLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    :cond_5
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    if-eqz v0, :cond_6

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/LocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "---- last gps requested"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/nuance/connect/location/ConnectLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    :cond_6
    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager$2;->$SwitchMap$com$nuance$connect$location$LocationSettings$LocationMode:[I

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v1}, Lcom/nuance/connect/location/LocationSettings$LocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_7
    :goto_1
    :pswitch_0
    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Completed Starting new location pattern for mode: ["

    iget-object v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    const-string v3, "]"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    iget-object v3, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/ConnectLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->passiveListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    iget-wide v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minTimeFinder:J

    iget v4, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minDistanceFinder:F

    iget-object v5, p0, Lcom/nuance/connect/location/ConnectLocationManager;->passiveListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    :cond_8
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/ConnectLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-wide v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minTimeFinder:J

    iget v4, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minDistanceFinder:F

    iget-object v5, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/ConnectLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->passiveListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    iget-wide v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minTimeFinder:J

    iget v4, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minDistanceFinder:F

    iget-object v5, p0, Lcom/nuance/connect/location/ConnectLocationManager;->passiveListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_9
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_a

    const-string v0, "network"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/LocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/ConnectLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-wide v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minTimeFinder:J

    iget v4, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minDistanceFinder:F

    iget-object v5, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_a
    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->hasFine:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    if-eqz v0, :cond_7

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Lcom/nuance/connect/location/LocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;-><init>(Lcom/nuance/connect/location/ConnectLocationManager;)V

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-wide v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minTimeFinder:J

    iget v4, p0, Lcom/nuance/connect/location/ConnectLocationManager;->minDistanceFinder:F

    iget-object v5, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private stopCurrentLocationPattern()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->passiveListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->passiveListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->passiveListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->networkListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v2, p0, Lcom/nuance/connect/location/ConnectLocationManager;->gpsListener:Lcom/nuance/connect/location/ConnectLocationManager$LocationEventListener;

    :cond_2
    return-void
.end method

.method private updateActiveListeners(Z)V
    .locals 5

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "updateActiveListeners()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    new-instance v2, Lcom/nuance/connect/location/LocationSettings;

    invoke-direct {v2, v0}, Lcom/nuance/connect/location/LocationSettings;-><init>(Lcom/nuance/connect/location/LocationSettings$LocationMode;)V

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/location/LocationSettings;

    invoke-virtual {v0}, Lcom/nuance/connect/location/LocationSettings;->getMode()Lcom/nuance/connect/location/LocationSettings$LocationMode;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/nuance/connect/location/LocationSettings;->getMaxMode(Lcom/nuance/connect/location/LocationSettings$LocationMode;Lcom/nuance/connect/location/LocationSettings$LocationMode;)Lcom/nuance/connect/location/LocationSettings$LocationMode;

    move-result-object v1

    invoke-virtual {v2, v0}, Lcom/nuance/connect/location/LocationSettings;->merge(Lcom/nuance/connect/location/LocationSettings;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->currentMode:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/location/LocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/nuance/connect/location/ConnectLocationManager;->stopCurrentLocationPattern()V

    sget-object v0, Lcom/nuance/connect/location/LocationSettings$LocationMode;->DISABLED:Lcom/nuance/connect/location/LocationSettings$LocationMode;

    invoke-virtual {v1, v0}, Lcom/nuance/connect/location/LocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/nuance/connect/location/ConnectLocationManager;->startNewLocationPattern(Lcom/nuance/connect/location/LocationSettings;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public allowedPassive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedPassive:Z

    return v0
.end method

.method public checkPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedGps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedNetwork:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->allowedPassive:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener(Lcom/nuance/connect/location/ConnectLocationListener;Lcom/nuance/connect/location/LocationSettings;)V
    .locals 4

    sget-object v0, Lcom/nuance/connect/location/ConnectLocationManager;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "registerListener()"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->aggregateSettings:Lcom/nuance/connect/location/LocationSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->lastLocation:Lcom/nuance/connect/location/ConnectLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->lastLocation:Lcom/nuance/connect/location/ConnectLocation;

    invoke-interface {p1, v0}, Lcom/nuance/connect/location/ConnectLocationListener;->onLocation(Lcom/nuance/connect/location/ConnectLocation;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/connect/location/ConnectLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterListener(Lcom/nuance/connect/location/ConnectLocationListener;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/connect/location/ConnectLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/location/ConnectLocationListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/location/ConnectLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/connect/location/ConnectLocationManager;->updateActiveListeners(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
