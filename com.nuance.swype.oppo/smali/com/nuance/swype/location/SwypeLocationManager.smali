.class public final Lcom/nuance/swype/location/SwypeLocationManager;
.super Ljava/lang/Object;
.source "SwypeLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/location/SwypeLocationManager$3;,
        Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private volatile aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

.field private allowedGps:Z

.field private allowedNetwork:Z

.field private allowedPassive:Z

.field private attemptOnceGPS:Z

.field private attemptOnceNetwork:Z

.field private ctx:Landroid/content/Context;

.field private volatile currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

.field private gpsEnabled:Z

.field private gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private hasCoarse:Z

.field private hasFine:Z

.field private volatile lastLocation:Lcom/nuance/swype/location/SwypeLocation;

.field private lastLocationProcessed:J

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/swype/location/SwypeLocationListener;",
            "Lcom/nuance/swype/location/SwypeLocationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private locationLevel:I

.field private locationManager:Landroid/location/LocationManager;

.field private final mHandler:Landroid/os/Handler;

.field private networkEnabled:Z

.field private networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

.field private passiveListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "SwypeLocation"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    .line 53
    iput v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationLevel:I

    .line 54
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    .line 55
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    .line 56
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsEnabled:Z

    .line 57
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkEnabled:Z

    .line 60
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    .line 61
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedNetwork:Z

    .line 63
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedPassive:Z

    .line 65
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->lastLocationProcessed:J

    .line 69
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    .line 79
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->attemptOnceNetwork:Z

    .line 80
    iput-boolean v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->attemptOnceGPS:Z

    .line 138
    new-instance v0, Lcom/nuance/swype/location/SwypeLocationManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/location/SwypeLocationManager$1;-><init>(Lcom/nuance/swype/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->handlerCallback:Landroid/os/Handler$Callback;

    .line 170
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/nuance/swype/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    .line 132
    invoke-direct {p0}, Lcom/nuance/swype/location/SwypeLocationManager;->setupLocationService()V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/location/SwypeLocationManager;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/nuance/swype/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/location/SwypeLocationManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/location/SwypeLocationManager;)Lcom/nuance/swype/location/SwypeLocationSettings;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

    return-object v0
.end method

.method static synthetic access$1200$67f8497(Lcom/nuance/swype/location/SwypeLocationManager;Lcom/nuance/swype/location/SwypeLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;
    .param p1, "x1"    # Lcom/nuance/swype/location/SwypeLocation;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/nuance/swype/location/SwypeLocationManager;->sendUpdate$58f9526e(Lcom/nuance/swype/location/SwypeLocation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/location/SwypeLocationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/nuance/swype/location/SwypeLocationManager;->setupLocationService()V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/location/SwypeLocationManager;)Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    return-object v0
.end method

.method static synthetic access$400$2eeff448(Lcom/nuance/swype/location/SwypeLocationManager;)V
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/location/SwypeLocationManager;->updateActiveListeners(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/location/SwypeLocationManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->lastLocationProcessed:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/location/SwypeLocationManager;)V
    .locals 10
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    const-wide/32 v8, 0xea60

    const-wide/16 v2, 0x0

    const/16 v6, 0x7d0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "attemptFetchOnce()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

    iget-boolean v0, v0, Lcom/nuance/swype/location/SwypeLocationSettings;->activeSearch:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, " -- not allowed to active search."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->attemptOnceNetwork:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    if-nez v0, :cond_3

    iput-boolean v5, p0, Lcom/nuance/swype/location/SwypeLocationManager;->attemptOnceNetwork:Z

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/swype/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->attemptOnceGPS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    if-nez v0, :cond_0

    iput-boolean v5, p0, Lcom/nuance/swype/location/SwypeLocationManager;->attemptOnceGPS:Z

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/swype/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    iget-object v3, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static synthetic access$700(Lcom/nuance/swype/location/SwypeLocationManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/location/SwypeLocationManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->attemptOnceGPS:Z

    return v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/location/SwypeLocationManager;)Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    return-object v0
.end method

.method static synthetic access$902$3c12c8f6(Lcom/nuance/swype/location/SwypeLocationManager;)Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/location/SwypeLocationManager;

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    return-object v0
.end method

.method private declared-synchronized processLocationUpdate(Landroid/location/Location;)V
    .locals 19
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 465
    monitor-enter p0

    if-nez p1, :cond_1

    .line 466
    :try_start_0
    sget-object v2, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Recieved Location Update, but was null. Not Processing."

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 470
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->lastLocationProcessed:J

    .line 471
    new-instance v18, Lcom/nuance/swype/location/SwypeLocation;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/nuance/swype/location/SwypeLocation;-><init>(Landroid/location/Location;)V

    .line 473
    .local v18, "sLoc":Lcom/nuance/swype/location/SwypeLocation;
    sget-object v2, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Location Update: Time: ["

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "] "

    const-string v6, "Provider: ["

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    const-string v8, "] "

    const-string v9, "Acuracy: ["

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v11, "] "

    const-string v12, "Long: ["

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const-string v14, "] "

    const-string v15, "Lat: ["

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v2 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->lastLocation:Lcom/nuance/swype/location/SwypeLocation;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/location/SwypeLocationManager;->lastLocation:Lcom/nuance/swype/location/SwypeLocation;

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/nuance/swype/location/SwypeLocation;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    iget-object v2, v3, Lcom/nuance/swype/location/SwypeLocation;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-wide/32 v6, 0x36ee80

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_6

    .line 485
    sget-object v2, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Not a better location then the previous last location. Stopping Processing."

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 465
    .end local v18    # "sLoc":Lcom/nuance/swype/location/SwypeLocation;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 479
    .restart local v18    # "sLoc":Lcom/nuance/swype/location/SwypeLocation;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const-wide/32 v6, -0x36ee80

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    :try_start_2
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/nuance/swype/location/SwypeLocation;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    iget-object v3, v3, Lcom/nuance/swype/location/SwypeLocation;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float v3, v4, v3

    float-to-int v3, v3

    if-gez v3, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    if-lez v3, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 489
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

    if-nez v2, :cond_7

    .line 492
    sget-object v2, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Error processing location update without configuration"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 493
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nuance/swype/location/SwypeLocationManager;->updateActiveListeners(Z)V

    goto/16 :goto_0

    .line 498
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

    iget-boolean v2, v2, Lcom/nuance/swype/location/SwypeLocationSettings;->geocode:Z

    if-eqz v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

    iget-wide v4, v4, Lcom/nuance/swype/location/SwypeLocationSettings;->lastGeocode:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

    iget-wide v4, v4, Lcom/nuance/swype/location/SwypeLocationSettings;->geoCodeInterval:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 503
    sget-object v2, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "handle Geo Coding now, firing off thread"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nuance/swype/location/SwypeLocationSettings;->lastGeocode:J

    .line 506
    new-instance v2, Lcom/nuance/swype/location/SwypeLocationManager$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/nuance/swype/location/SwypeLocationManager$2;-><init>(Lcom/nuance/swype/location/SwypeLocationManager;Lcom/nuance/swype/location/SwypeLocation;)V

    invoke-virtual {v2}, Lcom/nuance/swype/location/SwypeLocationManager$2;->start()V

    .line 557
    sget-object v2, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "handle Geo Coding -- completed"

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 562
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->attemptOnceGPS:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    if-eqz v2, :cond_8

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 564
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    .line 566
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->attemptOnceNetwork:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    if-eqz v2, :cond_0

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 568
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    goto/16 :goto_0

    .line 559
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nuance/swype/location/SwypeLocationManager;->sendUpdate$58f9526e(Lcom/nuance/swype/location/SwypeLocation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private declared-synchronized sendUpdate$58f9526e(Lcom/nuance/swype/location/SwypeLocation;)V
    .locals 7
    .param p1, "location"    # Lcom/nuance/swype/location/SwypeLocation;

    .prologue
    const/4 v5, 0x0

    .line 575
    monitor-enter p0

    const/4 v3, 0x0

    .line 577
    .local v3, "updateListeners":Z
    :try_start_0
    iget-object v4, p0, Lcom/nuance/swype/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 579
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/swype/location/SwypeLocationListener;Lcom/nuance/swype/location/SwypeLocationSettings;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/location/SwypeLocationListener;

    .line 580
    .local v2, "listener":Lcom/nuance/swype/location/SwypeLocationListener;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/location/SwypeLocationSettings;

    .line 582
    iget-object v4, v4, Lcom/nuance/swype/location/SwypeLocationSettings;->mode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    sget-object v6, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->GET_LOCATION:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v4, v6}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_1

    .line 585
    invoke-interface {v2, p1}, Lcom/nuance/swype/location/SwypeLocationListener;->onLocationComplete(Lcom/nuance/swype/location/SwypeLocation;)V

    .line 586
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 582
    goto :goto_1

    .line 588
    :cond_1
    invoke-interface {v2, p1}, Lcom/nuance/swype/location/SwypeLocationListener;->onLocation(Lcom/nuance/swype/location/SwypeLocation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 575
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/nuance/swype/location/SwypeLocationListener;Lcom/nuance/swype/location/SwypeLocationSettings;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/nuance/swype/location/SwypeLocationListener;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 593
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/nuance/swype/location/SwypeLocationManager;->lastLocation:Lcom/nuance/swype/location/SwypeLocation;

    .line 595
    if-eqz v3, :cond_3

    .line 597
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nuance/swype/location/SwypeLocationManager;->updateActiveListeners(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private setupLocationService()V
    .locals 17

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/nuance/swype/input/IMEApplication;

    .line 187
    .local v15, "ime":Lcom/nuance/swype/input/IMEApplication;
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v15, v1}, Lcom/nuance/swype/input/IMEApplication;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    .line 189
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    .line 195
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsEnabled:Z

    .line 198
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->networkEnabled:Z

    .line 201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->getLocationLevel()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->locationLevel:I

    .line 203
    move-object/from16 v0, p0

    iget v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->locationLevel:I

    packed-switch v1, :pswitch_data_0

    .line 222
    .end local p0    # "this":Lcom/nuance/swype/location/SwypeLocationManager;
    :goto_3
    sget-object v1, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "Setup of Location Service: Level: ["

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nuance/swype/location/SwypeLocationManager;->locationLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "] fine: ["

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "] course: ["

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "] allowed gps: ["

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "] network: ["

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedNetwork:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "] passive: ["

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedPassive:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual/range {v1 .. v14}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    return-void

    .line 190
    .restart local p0    # "this":Lcom/nuance/swype/location/SwypeLocationManager;
    :cond_1
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v15, v1}, Lcom/nuance/swype/input/IMEApplication;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    goto/16 :goto_0

    .line 195
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 198
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 205
    :pswitch_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    .line 206
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedNetwork:Z

    move-object/from16 v16, p0

    .line 218
    .end local p0    # "this":Lcom/nuance/swype/location/SwypeLocationManager;
    .local v16, "this":Lcom/nuance/swype/location/SwypeLocationManager;
    :goto_4
    const/4 v1, 0x0

    .end local v16    # "this":Lcom/nuance/swype/location/SwypeLocationManager;
    :goto_5
    move-object/from16 v0, v16

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedPassive:Z

    goto :goto_3

    .line 210
    .restart local p0    # "this":Lcom/nuance/swype/location/SwypeLocationManager;
    :pswitch_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    .line 211
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->networkEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedNetwork:Z

    .line 212
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedPassive:Z

    goto/16 :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_6

    .line 216
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    .line 217
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->networkEnabled:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedNetwork:Z

    .line 218
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move-object/from16 v16, p0

    goto :goto_5

    :cond_5
    move-object/from16 v16, p0

    .end local p0    # "this":Lcom/nuance/swype/location/SwypeLocationManager;
    .restart local v16    # "this":Lcom/nuance/swype/location/SwypeLocationManager;
    goto :goto_4

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized updateActiveListeners(Z)V
    .locals 12
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "updateActiveListeners()"

    invoke-virtual {v0, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 251
    sget-object v7, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    .line 252
    .local v7, "newMode":Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    new-instance v8, Lcom/nuance/swype/location/SwypeLocationSettings;

    invoke-direct {v8, v7}, Lcom/nuance/swype/location/SwypeLocationSettings;-><init>(Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;)V

    .line 254
    .local v8, "newSettings":Lcom/nuance/swype/location/SwypeLocationSettings;
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/location/SwypeLocationSettings;

    .line 258
    .local v9, "setting":Lcom/nuance/swype/location/SwypeLocationSettings;
    iget-object v0, v9, Lcom/nuance/swype/location/SwypeLocationSettings;->mode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-static {v0, v7}, Lcom/nuance/swype/location/SwypeLocationSettings;->getMaxMode(Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;)Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    move-result-object v7

    .line 260
    iget-object v0, v9, Lcom/nuance/swype/location/SwypeLocationSettings;->mode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    iget-object v3, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->mode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-static {v0, v3}, Lcom/nuance/swype/location/SwypeLocationSettings;->getMaxMode(Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;)Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    move-result-object v0

    iput-object v0, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->mode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    iget-wide v4, v9, Lcom/nuance/swype/location/SwypeLocationSettings;->interval:J

    iget-wide v10, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->interval:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->interval:J

    iget-boolean v0, v9, Lcom/nuance/swype/location/SwypeLocationSettings;->geocode:Z

    if-nez v0, :cond_0

    iget-boolean v0, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->geocode:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    iput-boolean v0, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->geocode:Z

    iget-boolean v0, v9, Lcom/nuance/swype/location/SwypeLocationSettings;->geocode:Z

    if-nez v0, :cond_1

    iget-boolean v0, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->geocode:Z

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_2
    iput-boolean v0, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->geocode:Z

    iget-wide v4, v9, Lcom/nuance/swype/location/SwypeLocationSettings;->geoCodeInterval:J

    iget-wide v10, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->geoCodeInterval:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->geoCodeInterval:J

    iget-wide v4, v9, Lcom/nuance/swype/location/SwypeLocationSettings;->lastGeocode:J

    iget-wide v10, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->lastGeocode:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->lastGeocode:J

    iget-boolean v0, v9, Lcom/nuance/swype/location/SwypeLocationSettings;->activeSearch:Z

    if-nez v0, :cond_2

    iget-boolean v0, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->activeSearch:Z

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    :goto_3
    iput-boolean v0, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->activeSearch:Z

    iget-object v0, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    iget-object v3, v9, Lcom/nuance/swype/location/SwypeLocationSettings;->typeRequested:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "newMode":Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    .end local v8    # "newSettings":Lcom/nuance/swype/location/SwypeLocationSettings;
    .end local v9    # "setting":Lcom/nuance/swype/location/SwypeLocationSettings;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "newMode":Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;
    .restart local v8    # "newSettings":Lcom/nuance/swype/location/SwypeLocationSettings;
    .restart local v9    # "setting":Lcom/nuance/swype/location/SwypeLocationSettings;
    :cond_3
    move v0, v1

    .line 260
    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    .line 263
    .end local v9    # "setting":Lcom/nuance/swype/location/SwypeLocationSettings;
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v7, v0}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_b

    .line 267
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->passiveListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/swype/location/SwypeLocationManager;->passiveListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->passiveListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    :cond_9
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    .line 269
    :cond_a
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v7, v0}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 272
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    iget-object v0, v8, Lcom/nuance/swype/location/SwypeLocationSettings;->mode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    iput-object v8, p0, Lcom/nuance/swype/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting new location pattern for mode: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_c

    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Unable to aquire location manager."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :cond_b
    :goto_4
    monitor-exit p0

    return-void

    .line 272
    :cond_c
    :try_start_2
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_e

    :cond_d
    iget v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationLevel:I

    if-nez v0, :cond_f

    :cond_e
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "No valid permissions for location."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    sget-object v1, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->DISABLED:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    if-eq v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_10

    const-string v0, "network"

    invoke-virtual {v8, v0}, Lcom/nuance/swype/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "---- last network requested"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v0}, Lcom/nuance/swype/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    :cond_10
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_11

    const-string v0, "gps"

    invoke-virtual {v8, v0}, Lcom/nuance/swype/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "---- last gps requested"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v0}, Lcom/nuance/swype/location/SwypeLocationManager;->processLocationUpdate(Landroid/location/Location;)V

    :cond_11
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager$3;->$SwitchMap$com$nuance$swype$location$SwypeLocationSettings$LocationMode:[I

    iget-object v1, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1}, Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_12
    :goto_5
    :pswitch_0
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Completed Starting new location pattern for mode: ["

    iget-object v2, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    const-string v3, "]"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/location/SwypeLocationManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    iget-object v3, p0, Lcom/nuance/swype/location/SwypeLocationManager;->currentMode:Lcom/nuance/swype/location/SwypeLocationSettings$LocationMode;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    :pswitch_1
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_13

    new-instance v0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/swype/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->passiveListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/32 v2, 0x1b7740

    const v4, 0x44c94000    # 1610.0f

    iget-object v5, p0, Lcom/nuance/swype/location/SwypeLocationManager;->passiveListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_5

    :cond_13
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_12

    new-instance v0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/swype/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x1b7740

    const v4, 0x44c94000    # 1610.0f

    iget-object v5, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_5

    :pswitch_2
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/swype/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->passiveListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/32 v2, 0x1b7740

    const v4, 0x44c94000    # 1610.0f

    iget-object v5, p0, Lcom/nuance/swype/location/SwypeLocationManager;->passiveListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_14
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasCoarse:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedNetwork:Z

    if-eqz v0, :cond_15

    const-string v0, "network"

    invoke-virtual {v8, v0}, Lcom/nuance/swype/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/swype/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0x1b7740

    const v4, 0x44c94000    # 1610.0f

    iget-object v5, p0, Lcom/nuance/swype/location/SwypeLocationManager;->networkListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_15
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->hasFine:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    if-eqz v0, :cond_12

    const-string v0, "gps"

    invoke-virtual {v8, v0}, Lcom/nuance/swype/location/SwypeLocationSettings;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-direct {v0, p0}, Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;-><init>(Lcom/nuance/swype/location/SwypeLocationManager;)V

    iput-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0x1b7740

    const v4, 0x44c94000    # 1610.0f

    iget-object v5, p0, Lcom/nuance/swype/location/SwypeLocationManager;->gpsListener:Lcom/nuance/swype/location/SwypeLocationManager$LocationEventListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final allowedPassive()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedPassive:Z

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedGps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedNetwork:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->allowedPassive:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final registerListener(Lcom/nuance/swype/location/SwypeLocationListener;Lcom/nuance/swype/location/SwypeLocationSettings;)V
    .locals 2
    .param p1, "listener"    # Lcom/nuance/swype/location/SwypeLocationListener;
    .param p2, "setting"    # Lcom/nuance/swype/location/SwypeLocationSettings;

    .prologue
    .line 643
    sget-object v0, Lcom/nuance/swype/location/SwypeLocationManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "registerListener()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 645
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->aggregateSettings:Lcom/nuance/swype/location/SwypeLocationSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->lastLocation:Lcom/nuance/swype/location/SwypeLocation;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->lastLocation:Lcom/nuance/swype/location/SwypeLocation;

    invoke-interface {p1, v0}, Lcom/nuance/swype/location/SwypeLocationListener;->onLocation(Lcom/nuance/swype/location/SwypeLocation;)V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/location/SwypeLocationManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/location/SwypeLocationManager;->updateActiveListeners(Z)V

    .line 653
    return-void
.end method
