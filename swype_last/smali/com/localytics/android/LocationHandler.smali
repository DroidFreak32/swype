.class Lcom/localytics/android/LocationHandler;
.super Lcom/localytics/android/BaseHandler;
.source "LocationHandler.java"

# interfaces
.implements Lcom/localytics/android/LocationChangedListener;
.implements Lcom/localytics/android/ManifestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/LocationHandler$15;
    }
.end annotation


# static fields
.field private static final LOCATION_SQUARED_DELTA_FORMAT:Ljava/lang/String; = "((%s - %s) * (%s - %s) + (%s - %s) * (%s - %s) * %s) LIMIT %s"

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x192

.field private static final MESSAGE_MANIFEST_CONFIG:I = 0x194

.field private static final MESSAGE_SET_LOCATION_MONITORING_ENABLED:I = 0x191

.field private static final MESSAGE_STOPPED_MONITORING_ALL_GEOFENCES:I = 0x193

.field private static final MESSAGE_TRIGGER_REGION:I = 0x195

.field private static final MESSAGE_TRIGGER_REGIONS:I = 0x196


# instance fields
.field private final mListeners:Lcom/localytics/android/ListenersSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/localytics/android/ListenersSet",
            "<",
            "Lcom/localytics/android/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Lcom/localytics/android/LocationManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V
    .registers 4
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/localytics/android/LocationHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;Lcom/localytics/android/LocationManager;)V

    .line 80
    return-void
.end method

.method constructor <init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;Lcom/localytics/android/LocationManager;)V
    .registers 6
    .param p1, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "locationManager"    # Lcom/localytics/android/LocationManager;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/BaseHandler;-><init>(Lcom/localytics/android/LocalyticsDao;Landroid/os/Looper;)V

    .line 85
    const-string/jumbo v0, "Location"

    iput-object v0, p0, Lcom/localytics/android/LocationHandler;->siloName:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/localytics/android/ListenersSet;

    const-class v1, Lcom/localytics/android/LocationListener;

    invoke-direct {v0, v1}, Lcom/localytics/android/ListenersSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    .line 88
    if-eqz p3, :cond_1a

    .line 90
    iput-object p3, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    .line 91
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    invoke-virtual {v0, p1, p0}, Lcom/localytics/android/LocationManager;->initialize(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/LocationChangedListener;)V

    .line 94
    :cond_1a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method

.method private _callListenersDidTriggerRegionsOnMainThread(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .registers 4
    .param p1, "region"    # Lcom/localytics/android/Region;
    .param p2, "event"    # Lcom/localytics/android/Region$Event;

    .prologue
    .line 826
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 827
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-direct {p0, v0, p2}, Lcom/localytics/android/LocationHandler;->_callListenersDidTriggerRegionsOnMainThread(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    .line 829
    return-void
.end method

.method private _callListenersDidTriggerRegionsOnMainThread(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .registers 5
    .param p2, "event"    # Lcom/localytics/android/Region$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 834
    new-instance v1, Lcom/localytics/android/LocationHandler$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/localytics/android/LocationHandler$14;-><init>(Lcom/localytics/android/LocationHandler;Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 842
    return-void
.end method

.method private _geofenceAttributes(Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 911
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 912
    .local v6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocationHandler;->_getPlaceId(Ljava/lang/String;)J

    move-result-wide v10

    .line 913
    .local v10, "placeId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_60

    .line 915
    const/4 v7, 0x0

    .line 918
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_10
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "geofences_attributes"

    const/4 v2, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v13, "place_id"

    aput-object v13, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 923
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_36
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_5b

    .line 925
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 927
    const-string/jumbo v0, "key"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 928
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 929
    .local v12, "val":Ljava/lang/String;
    invoke-interface {v6, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_10 .. :try_end_58} :catchall_61

    .line 923
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 934
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "val":Ljava/lang/String;
    :cond_5b
    if-eqz v7, :cond_60

    .line 936
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 941
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "i":I
    :cond_60
    return-object v6

    .line 934
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_61
    move-exception v0

    if-eqz v7, :cond_67

    .line 936
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_67
    throw v0
.end method

.method private _getGeofencePopulated(Ljava/lang/String;)Lcom/localytics/android/CircularRegion;
    .registers 13
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 847
    const/4 v6, 0x0

    .line 850
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_4
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "geofences"

    const/4 v2, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v10, "identifier"

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 855
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 857
    new-instance v0, Lcom/localytics/android/CircularRegion$Builder;

    invoke-direct {v0}, Lcom/localytics/android/CircularRegion$Builder;-><init>()V

    const-string/jumbo v1, "place_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setPlaceId(J)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string/jumbo v1, "identifier"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/CircularRegion$Builder;->setUniqueId(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/CircularRegion$Builder;->setName(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string/jumbo v1, "latitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setLatitude(D)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string/jumbo v1, "longitude"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setLongitude(D)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string/jumbo v1, "radius"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/CircularRegion$Builder;->setRadius(I)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    const-string/jumbo v0, "enter_analytics_enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_cf

    move v0, v8

    :goto_98
    invoke-virtual {v1, v0}, Lcom/localytics/android/CircularRegion$Builder;->setEnterAnalyticsEnabled(Z)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    const-string/jumbo v0, "exit_analytics_enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_d1

    move v0, v8

    :goto_aa
    invoke-virtual {v1, v0}, Lcom/localytics/android/CircularRegion$Builder;->setExitAnalyticsEnabled(Z)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    const-string/jumbo v1, "schema_version"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/CircularRegion$Builder;->setSchemaVersion(I)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_geofenceAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/CircularRegion$Builder;->setAttributes(Ljava/util/Map;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/CircularRegion$Builder;->build()Lcom/localytics/android/CircularRegion;
    :try_end_c8
    .catchall {:try_start_4 .. :try_end_c8} :catchall_da

    move-result-object v0

    .line 873
    if-eqz v6, :cond_ce

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 879
    :cond_ce
    :goto_ce
    return-object v0

    :cond_cf
    move v0, v9

    .line 857
    goto :goto_98

    :cond_d1
    move v0, v9

    goto :goto_aa

    .line 873
    :cond_d3
    if-eqz v6, :cond_d8

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d8
    move-object v0, v7

    .line 879
    goto :goto_ce

    .line 873
    :catchall_da
    move-exception v0

    if-eqz v6, :cond_e0

    .line 875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e0
    throw v0
.end method

.method private _getGeofencesToMonitor(DD)Ljava/util/List;
    .registers 16
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 473
    .local v7, "geofences":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    const/4 v6, 0x0

    .line 477
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_6
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 478
    .local v8, "longitudeFudge":D
    const-string/jumbo v0, "((%s - %s) * (%s - %s) + (%s - %s) * (%s - %s) * %s) LIMIT %s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "latitude"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "latitude"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "longitude"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "longitude"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget v3, Lcom/localytics/android/Constants;->GEOFENCES_MONITORING_LIMIT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 482
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "geofences"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 483
    :goto_71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 485
    invoke-direct {p0, v6}, Lcom/localytics/android/LocationHandler;->createCircularRegion(Landroid/database/Cursor;)Lcom/localytics/android/CircularRegion;

    move-result-object v10

    .line 486
    .local v10, "region":Lcom/localytics/android/CircularRegion;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catchall {:try_start_6 .. :try_end_7e} :catchall_7f

    goto :goto_71

    .line 490
    .end local v5    # "sortOrder":Ljava/lang/String;
    .end local v8    # "longitudeFudge":D
    .end local v10    # "region":Lcom/localytics/android/CircularRegion;
    :catchall_7f
    move-exception v0

    if-eqz v6, :cond_85

    .line 492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_85
    throw v0

    .line 490
    .restart local v5    # "sortOrder":Ljava/lang/String;
    .restart local v8    # "longitudeFudge":D
    :cond_86
    if-eqz v6, :cond_8b

    .line 492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_8b
    return-object v7
.end method

.method private _getLocationManager()Lcom/localytics/android/LocationManager;
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    if-nez v0, :cond_18

    invoke-static {}, Lcom/localytics/android/PlayServicesUtils;->isLocationAvailable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 107
    new-instance v0, Lcom/localytics/android/LocationManager;

    invoke-direct {v0}, Lcom/localytics/android/LocationManager;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    .line 108
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-virtual {v0, v1, p0}, Lcom/localytics/android/LocationManager;->initialize(Lcom/localytics/android/LocalyticsDao;Lcom/localytics/android/LocationChangedListener;)V

    .line 111
    :cond_18
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocationManager:Lcom/localytics/android/LocationManager;

    return-object v0
.end method

.method private _getRegionEnteredTime(Ljava/lang/String;)J
    .registers 4
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 1056
    const-string/jumbo v0, "entered_time"

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/LocationHandler;->_getRegionTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private _getRegionExitedTime(Ljava/lang/String;)J
    .registers 4
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 1061
    const-string/jumbo v0, "exited_time"

    invoke-direct {p0, p1, v0}, Lcom/localytics/android/LocationHandler;->_getRegionTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private _getRegionTime(Ljava/lang/String;Ljava/lang/String;)J
    .registers 11
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 1066
    const/4 v6, 0x0

    .line 1069
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "geofences"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v7, "identifier"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1075
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1077
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_43

    move-result-wide v0

    .line 1082
    if-eqz v6, :cond_3a

    .line 1084
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1088
    :cond_3a
    :goto_3a
    return-wide v0

    .line 1082
    :cond_3b
    if-eqz v6, :cond_40

    .line 1084
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1088
    :cond_40
    const-wide/16 v0, 0x0

    goto :goto_3a

    .line 1082
    :catchall_43
    move-exception v0

    if-eqz v6, :cond_49

    .line 1084
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_49
    throw v0
.end method

.method private _getTagEventAttributes(Lcom/localytics/android/Region;)Ljava/util/Map;
    .registers 8
    .param p1, "region"    # Lcom/localytics/android/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/Region;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1039
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 1040
    .local v1, "uniqueId":Ljava/lang/String;
    const-string/jumbo v3, "Localytics Place ID"

    invoke-virtual {p0, v1}, Lcom/localytics/android/LocationHandler;->_getPlaceId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const-string/jumbo v3, "Region Identifier"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-string/jumbo v3, "Region Type"

    invoke-virtual {p1}, Lcom/localytics/android/Region;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string/jumbo v3, "Schema Version - Client"

    const-string/jumbo v4, "5"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-string/jumbo v3, "Schema Version - Server"

    invoke-virtual {p1}, Lcom/localytics/android/Region;->getSchemaVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    iget-object v3, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->isWifiEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, "wifiEnabled":Ljava/lang/String;
    const-string/jumbo v3, "Wifi Enabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    invoke-virtual {p1}, Lcom/localytics/android/Region;->getAttributes()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1051
    return-object v0
.end method

.method private _handleManifestConfig(Ljava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_83

    .line 518
    const-string/jumbo v2, "places_data_last_modified"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/localytics/android/JsonHelper;->getSafeLongFromMap(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v12

    .line 519
    .local v12, "placesLastModified":J
    const-string/jumbo v2, "places_data_url"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/localytics/android/JsonHelper;->getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "placesDataUrl":Ljava/lang/String;
    const/4 v15, 0x1

    .line 521
    .local v15, "schemaVersion":I
    const-string/jumbo v2, "schema_version"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 523
    const-string/jumbo v2, "schema_version"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/localytics/android/JsonHelper;->getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result v15

    .line 526
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "info"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "places_data_last_modified"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 528
    .local v11, "query":Landroid/database/Cursor;
    :try_start_40
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 529
    const-string/jumbo v2, "places_data_last_modified"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 530
    .local v16, "storedPlacesLastModified":J
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_8c

    move-result v2

    if-nez v2, :cond_67

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-eqz v2, :cond_67

    cmp-long v2, v12, v16

    if-lez v2, :cond_80

    .line 532
    :cond_67
    :try_start_67
    invoke-static {v10}, Lcom/localytics/android/MarketingDownloader;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 533
    .local v14, "result":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 534
    .local v9, "placesData":Lorg/json/JSONObject;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 535
    new-instance v9, Lorg/json/JSONObject;

    .end local v9    # "placesData":Lorg/json/JSONObject;
    invoke-direct {v9, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 537
    .restart local v9    # "placesData":Lorg/json/JSONObject;
    :cond_7b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12, v13, v15}, Lcom/localytics/android/LocationHandler;->_handlePlacesData(Lorg/json/JSONObject;JI)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_80} :catch_84
    .catch Lorg/json/JSONException; {:try_start_67 .. :try_end_80} :catch_91
    .catchall {:try_start_67 .. :try_end_80} :catchall_8c

    .line 546
    .end local v9    # "placesData":Lorg/json/JSONObject;
    .end local v14    # "result":Ljava/lang/String;
    .end local v16    # "storedPlacesLastModified":J
    :cond_80
    :goto_80
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 549
    .end local v10    # "placesDataUrl":Ljava/lang/String;
    .end local v11    # "query":Landroid/database/Cursor;
    .end local v12    # "placesLastModified":J
    .end local v15    # "schemaVersion":I
    :cond_83
    return-void

    .line 538
    .restart local v10    # "placesDataUrl":Ljava/lang/String;
    .restart local v11    # "query":Landroid/database/Cursor;
    .restart local v12    # "placesLastModified":J
    .restart local v15    # "schemaVersion":I
    .restart local v16    # "storedPlacesLastModified":J
    :catch_84
    move-exception v8

    .line 539
    .local v8, "e":Ljava/io/IOException;
    :try_start_85
    const-string/jumbo v2, "IOException while downloading places data"

    invoke-static {v2, v8}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_8c

    goto :goto_80

    .line 546
    .end local v8    # "e":Ljava/io/IOException;
    .end local v16    # "storedPlacesLastModified":J
    :catchall_8c
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 540
    .restart local v16    # "storedPlacesLastModified":J
    :catch_91
    move-exception v8

    .line 541
    .local v8, "e":Lorg/json/JSONException;
    :try_start_92
    const-string/jumbo v2, "JSONException while downloading places data"

    invoke-static {v2, v8}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_8c

    goto :goto_80
.end method

.method private _parseGeofence(Lorg/json/JSONObject;I)Landroid/content/ContentValues;
    .registers 11
    .param p1, "geofence"    # Lorg/json/JSONObject;
    .param p2, "schemaVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 765
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 766
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "place_id"

    const-string/jumbo v6, "place_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 767
    const-string/jumbo v3, "identifier"

    const-string/jumbo v6, "identifier"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string/jumbo v3, "latitude"

    const-string/jumbo v6, "latitude"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 769
    const-string/jumbo v3, "longitude"

    const-string/jumbo v6, "longitude"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 770
    const-string/jumbo v3, "radius"

    const-string/jumbo v6, "radius"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    const-string/jumbo v3, "name"

    const-string/jumbo v6, "name"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string/jumbo v3, "schema_version"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string/jumbo v3, "enter_analytics_enabled"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 775
    .local v0, "enterAnalyticsEnabled":Z
    const-string/jumbo v3, "exit_analytics_enabled"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 776
    .local v1, "exitAnalyticsEnabled":Z
    const-string/jumbo v6, "enter_analytics_enabled"

    if-eqz v0, :cond_97

    move v3, v4

    :goto_83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    const-string/jumbo v3, "exit_analytics_enabled"

    if-eqz v1, :cond_99

    :goto_8f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    return-object v2

    :cond_97
    move v3, v5

    .line 776
    goto :goto_83

    :cond_99
    move v4, v5

    .line 777
    goto :goto_8f
.end method

.method private _removeDeactivatedGeofences(Lorg/json/JSONArray;)V
    .registers 19
    .param p1, "geofences"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 586
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v9, "removedGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/localytics/android/LocationHandler;->_getMonitoredGeofences()Ljava/util/List;

    move-result-object v8

    .line 588
    .local v8, "monitoredGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    if-eqz p1, :cond_a9

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_a9

    .line 590
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 591
    .local v1, "downloadedGeofenceIdentifiers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_30

    .line 593
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 594
    .local v2, "fence":Lorg/json/JSONObject;
    const-string/jumbo v11, "identifier"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 591
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 597
    .end local v2    # "fence":Lorg/json/JSONObject;
    :cond_30
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v10, "stopMonitoring":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/localytics/android/CircularRegion;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/localytics/android/CircularRegion;

    .line 600
    .local v7, "monitoredFence":Lcom/localytics/android/CircularRegion;
    invoke-virtual {v7}, Lcom/localytics/android/CircularRegion;->getUniqueId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    .line 602
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 605
    .end local v7    # "monitoredFence":Lcom/localytics/android/CircularRegion;
    :cond_53
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/localytics/android/LocationHandler;->_getLocationManager()Lcom/localytics/android/LocationManager;

    move-result-object v6

    .line 608
    .local v6, "locationManager":Lcom/localytics/android/LocationManager;
    if-eqz v6, :cond_64

    .line 610
    invoke-virtual {v6, v10}, Lcom/localytics/android/LocationManager;->removeGeofences(Ljava/util/List;)V

    .line 611
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/localytics/android/LocationHandler;->_stoppedMonitoringGeofences(Ljava/util/List;)V

    .line 614
    :cond_64
    new-instance v11, Lcom/localytics/android/LocationHandler$12;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/localytics/android/LocationHandler$12;-><init>(Lcom/localytics/android/LocationHandler;)V

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/localytics/android/BaseProvider;->buildSqlInClause(Lorg/json/JSONArray;Lcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "inClause":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v12, "geofences"

    const-string/jumbo v13, "%s NOT IN %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "identifier"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 630
    .end local v1    # "downloadedGeofenceIdentifiers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "inClause":Ljava/lang/String;
    .end local v6    # "locationManager":Lcom/localytics/android/LocationManager;
    .end local v10    # "stopMonitoring":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/localytics/android/CircularRegion;>;"
    :goto_8f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_a8

    .line 632
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 633
    new-instance v12, Lcom/localytics/android/LocationHandler$13;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9}, Lcom/localytics/android/LocationHandler$13;-><init>(Lcom/localytics/android/LocationHandler;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 642
    :cond_a8
    return-void

    .line 626
    :cond_a9
    invoke-interface {v9, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 627
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v12, "geofences"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_8f
.end method

.method private _removeEnteredTime(Ljava/lang/String;)V
    .registers 5
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 989
    const-wide/16 v0, 0x0

    const-string/jumbo v2, "entered_time"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/localytics/android/LocationHandler;->_updateTime(Ljava/lang/String;JLjava/lang/String;)V

    .line 990
    return-void
.end method

.method private _saveGeofence(Lorg/json/JSONObject;Landroid/support/v4/util/LongSparseArray;I)J
    .registers 14
    .param p1, "geofence"    # Lorg/json/JSONObject;
    .param p3, "schemaVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/content/ContentValues;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p2, "localGeofences":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/content/ContentValues;>;"
    const-wide/16 v4, 0x0

    .line 683
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_validateGeofence(Lorg/json/JSONObject;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 685
    const-string/jumbo v6, "geofence data is invalid:\n%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;)I

    move-wide v2, v4

    .line 710
    :cond_1d
    :goto_1d
    return-wide v2

    .line 689
    :cond_1e
    invoke-direct {p0, p1, p3}, Lcom/localytics/android/LocationHandler;->_parseGeofence(Lorg/json/JSONObject;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 691
    .local v0, "newValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "place_id"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 692
    .local v2, "placeId":J
    invoke-virtual {p2, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 693
    .local v1, "oldValues":Landroid/content/ContentValues;
    if-eqz v1, :cond_5c

    .line 696
    const-string/jumbo v6, "is_monitored"

    const-string/jumbo v7, "is_monitored"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string/jumbo v6, "entered_time"

    const-string/jumbo v7, "entered_time"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string/jumbo v6, "exited_time"

    const-string/jumbo v7, "exited_time"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    :cond_5c
    iget-object v6, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v7, "geofences"

    invoke-virtual {v6, v7, v0}, Lcom/localytics/android/BaseProvider;->replace(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 702
    cmp-long v4, v2, v4

    if-lez v4, :cond_1d

    .line 704
    const-string/jumbo v4, "attributes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/localytics/android/LocationHandler;->_saveGeofenceAttributes(JLorg/json/JSONObject;)V

    goto :goto_1d
.end method

.method private _saveGeofenceAttributes(JLorg/json/JSONObject;)V
    .registers 15
    .param p1, "placeId"    # J
    .param p3, "attributes"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 716
    iget-object v3, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "geofences_attributes"

    const-string/jumbo v5, "%s = ?"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "place_id"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Lcom/localytics/android/BaseProvider;->remove(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 721
    if-eqz p3, :cond_5a

    .line 723
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 724
    .local v0, "allKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 726
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 728
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "place_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 729
    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string/jumbo v3, "value"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v3, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "geofences_attributes"

    invoke-virtual {v3, v4, v2}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_26

    .line 735
    .end local v0    # "allKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_5a
    return-void
.end method

.method private _saveGeofences(Lorg/json/JSONArray;I)V
    .registers 6
    .param p1, "geofences"    # Lorg/json/JSONArray;
    .param p2, "schemaVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_removeDeactivatedGeofences(Lorg/json/JSONArray;)V

    .line 574
    if-eqz p1, :cond_1a

    .line 576
    invoke-virtual {p0}, Lcom/localytics/android/LocationHandler;->_queryGeofencesInfo()Landroid/support/v4/util/LongSparseArray;

    move-result-object v1

    .line 577
    .local v1, "localGeofences":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 579
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lcom/localytics/android/LocationHandler;->_saveGeofence(Lorg/json/JSONObject;Landroid/support/v4/util/LongSparseArray;I)J

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 582
    .end local v0    # "i":I
    .end local v1    # "localGeofences":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/content/ContentValues;>;"
    :cond_1a
    return-void
.end method

.method private _stoppedMonitoringAllGeofences()V
    .registers 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/localytics/android/LocationHandler;->_getMonitoredGeofences()Ljava/util/List;

    move-result-object v0

    .line 408
    .local v0, "monitoredGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->_stoppedMonitoringGeofences(Ljava/util/List;)V

    .line 409
    return-void
.end method

.method private _tagEnterEvent(Lcom/localytics/android/Region;)V
    .registers 5
    .param p1, "region"    # Lcom/localytics/android/Region;

    .prologue
    .line 1016
    invoke-virtual {p1}, Lcom/localytics/android/Region;->isEnterAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1018
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string/jumbo v1, "Localytics Place Entered"

    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_getTagEventAttributes(Lcom/localytics/android/Region;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1019
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->upload()V

    .line 1021
    :cond_17
    return-void
.end method

.method private _tagExitEvent(Lcom/localytics/android/Region;J)V
    .registers 12
    .param p1, "region"    # Lcom/localytics/android/Region;
    .param p2, "dwellTimeMillis"    # J

    .prologue
    .line 1025
    invoke-virtual {p1}, Lcom/localytics/android/Region;->isExitAnalyticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1027
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_getTagEventAttributes(Lcom/localytics/android/Region;)Ljava/util/Map;

    move-result-object v0

    .line 1028
    .local v0, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    long-to-double v4, p2

    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1029
    .local v2, "dwellTimeMinutes":J
    const-string/jumbo v1, "Dwell Time (minutes)"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    const-string/jumbo v4, "Localytics Place Visited"

    invoke-interface {v1, v4, v0}, Lcom/localytics/android/LocalyticsDao;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1031
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v1}, Lcom/localytics/android/LocalyticsDao;->upload()V

    .line 1033
    .end local v0    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "dwellTimeMinutes":J
    :cond_32
    return-void
.end method

.method private _tagPlacesEvent(Lcom/localytics/android/Region$Event;Lcom/localytics/android/Region;)Z
    .registers 21
    .param p1, "event"    # Lcom/localytics/android/Region$Event;
    .param p2, "region"    # Lcom/localytics/android/Region;

    .prologue
    .line 949
    invoke-virtual/range {p2 .. p2}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    .line 950
    .local v8, "identifier":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v9}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v12

    .line 952
    .local v12, "nowMillis":J
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/localytics/android/LocationHandler;->_getRegionEnteredTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 953
    .local v4, "enteredTimeMillis":J
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/localytics/android/LocationHandler;->_getRegionExitedTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 954
    .local v6, "exitedTimeMillis":J
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 956
    .local v10, "lastEventTimeMillis":J
    sget-object v9, Lcom/localytics/android/LocationHandler$15;->$SwitchMap$com$localytics$android$Region$Event:[I

    invoke-virtual/range {p1 .. p1}, Lcom/localytics/android/Region$Event;->ordinal()I

    move-result v14

    aget v9, v9, v14

    packed-switch v9, :pswitch_data_66

    .line 984
    :cond_27
    const/4 v9, 0x0

    :goto_28
    return v9

    .line 960
    :pswitch_29
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-eqz v9, :cond_37

    sub-long v14, v12, v10

    sget-wide v16, Lcom/localytics/android/Constants;->REGION_THROTTLE_CUTOFF_TIME_MILLIS:J

    cmp-long v9, v14, v16

    if-lez v9, :cond_27

    .line 962
    :cond_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12, v13}, Lcom/localytics/android/LocationHandler;->_saveEnteredTime(Ljava/lang/String;J)V

    .line 963
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/localytics/android/LocationHandler;->_tagEnterEvent(Lcom/localytics/android/Region;)V

    .line 965
    const/4 v9, 0x1

    goto :goto_28

    .line 970
    :pswitch_45
    sub-long v2, v12, v4

    .line 971
    .local v2, "dwellTimeMillis":J
    sget-wide v14, Lcom/localytics/android/Constants;->MIN_REGION_DWELL_TIME_MILLIS:J

    cmp-long v9, v2, v14

    if-ltz v9, :cond_27

    sget-wide v14, Lcom/localytics/android/Constants;->MAX_REGION_DWELL_TIME_MILLIS:J

    cmp-long v9, v2, v14

    if-gtz v9, :cond_27

    .line 974
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12, v13}, Lcom/localytics/android/LocationHandler;->_saveExitedTime(Ljava/lang/String;J)V

    .line 975
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/localytics/android/LocationHandler;->_removeEnteredTime(Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/localytics/android/LocationHandler;->_tagExitEvent(Lcom/localytics/android/Region;J)V

    .line 978
    const/4 v9, 0x1

    goto :goto_28

    .line 956
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_29
        :pswitch_45
    .end packed-switch
.end method

.method private _triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .registers 8
    .param p2, "event"    # Lcom/localytics/android/Region$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 805
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 806
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/localytics/android/Region;

    .line 808
    .local v2, "region":Lcom/localytics/android/Region;
    instance-of v4, v2, Lcom/localytics/android/CircularRegion;

    if-eqz v4, :cond_9

    .line 810
    invoke-virtual {v2}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/localytics/android/LocationHandler;->_getGeofencePopulated(Ljava/lang/String;)Lcom/localytics/android/CircularRegion;

    move-result-object v3

    .line 811
    .local v3, "validRegion":Lcom/localytics/android/CircularRegion;
    if-eqz v3, :cond_9

    invoke-direct {p0, p2, v3}, Lcom/localytics/android/LocationHandler;->_tagPlacesEvent(Lcom/localytics/android/Region$Event;Lcom/localytics/android/Region;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 813
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 818
    .end local v2    # "region":Lcom/localytics/android/Region;
    .end local v3    # "validRegion":Lcom/localytics/android/CircularRegion;
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    .line 820
    invoke-direct {p0, v1, p2}, Lcom/localytics/android/LocationHandler;->_callListenersDidTriggerRegionsOnMainThread(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    .line 822
    :cond_36
    return-void
.end method

.method private _updateGeofencesIsMonitored(ZLjava/lang/String;)V
    .registers 11
    .param p1, "isMonitored"    # Z
    .param p2, "inClause"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 413
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "is_monitored"

    if-eqz p1, :cond_50

    move v1, v2

    :goto_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v4, "geofences"

    const-string/jumbo v5, "%s IN %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "identifier"

    aput-object v7, v6, v3

    aput-object p2, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 421
    if-nez v1, :cond_4f

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to update geofences is_monitored to \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' for IDs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 425
    :cond_4f
    return-void

    :cond_50
    move v1, v3

    .line 414
    goto :goto_d
.end method

.method private _updateTime(Ljava/lang/String;JLjava/lang/String;)V
    .registers 13
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1004
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1005
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1006
    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v2, "geofences"

    const-string/jumbo v3, "%s = ?"

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "identifier"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1012
    return-void
.end method

.method private _validateGeofence(Lorg/json/JSONObject;)Z
    .registers 12
    .param p1, "geofence"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 739
    const-string/jumbo v8, "place_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 740
    .local v6, "placeId":J
    const-string/jumbo v8, "identifier"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, "identifier":Ljava/lang/String;
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 742
    .local v2, "latitude":D
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 743
    .local v4, "longitude":D
    const-string/jumbo v8, "latitude"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    const-string/jumbo v8, "latitude"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Number;

    if-eqz v8, :cond_33

    .line 746
    const-string/jumbo v8, "latitude"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 748
    :cond_33
    const-string/jumbo v8, "longitude"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4e

    const-string/jumbo v8, "longitude"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Number;

    if-eqz v8, :cond_4e

    .line 751
    const-string/jumbo v8, "longitude"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 753
    :cond_4e
    const-string/jumbo v8, "radius"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 756
    .local v1, "radius":I
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_89

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_89

    const-wide v8, -0x3fa9800000000000L    # -90.0

    cmpl-double v8, v2, v8

    if-ltz v8, :cond_89

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpg-double v8, v2, v8

    if-gtz v8, :cond_89

    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpl-double v8, v4, v8

    if-ltz v8, :cond_89

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpg-double v8, v4, v8

    if-gtz v8, :cond_89

    if-lez v1, :cond_89

    const/4 v8, 0x1

    :goto_88
    return v8

    :cond_89
    const/4 v8, 0x0

    goto :goto_88
.end method

.method static synthetic access$000(Lcom/localytics/android/LocationHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/localytics/android/LocationHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/localytics/android/LocationHandler;->_stoppedMonitoringAllGeofences()V

    return-void
.end method

.method static synthetic access$100(Lcom/localytics/android/LocationHandler;Ljava/util/Map;)V
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/LocationHandler;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/localytics/android/LocationHandler;->_handleManifestConfig(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/localytics/android/LocationHandler;Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .registers 3
    .param p0, "x0"    # Lcom/localytics/android/LocationHandler;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/localytics/android/Region$Event;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/LocationHandler;->_triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    return-void
.end method

.method static synthetic access$300(Lcom/localytics/android/LocationHandler;)Lcom/localytics/android/ListenersSet;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/LocationHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/localytics/android/LocationHandler;DD)Ljava/util/List;
    .registers 6
    .param p0, "x0"    # Lcom/localytics/android/LocationHandler;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/localytics/android/LocationHandler;->_getGeofencesToMonitor(DD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createCircularRegion(Landroid/database/Cursor;)Lcom/localytics/android/CircularRegion;
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 502
    const-string/jumbo v1, "identifier"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "identifier":Ljava/lang/String;
    new-instance v1, Lcom/localytics/android/CircularRegion$Builder;

    invoke-direct {v1}, Lcom/localytics/android/CircularRegion$Builder;-><init>()V

    const-string/jumbo v2, "place_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setPlaceId(J)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/localytics/android/CircularRegion$Builder;->setUniqueId(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    const-string/jumbo v2, "latitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setLatitude(D)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    const-string/jumbo v2, "longitude"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/localytics/android/CircularRegion$Builder;->setLongitude(D)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    const-string/jumbo v2, "radius"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/localytics/android/CircularRegion$Builder;->setRadius(I)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/localytics/android/CircularRegion$Builder;->setName(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/localytics/android/LocationHandler;->_geofenceAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/localytics/android/CircularRegion$Builder;->setAttributes(Ljava/util/Map;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/localytics/android/CircularRegion$Builder;->build()Lcom/localytics/android/CircularRegion;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected _deleteUploadedData(I)V
    .registers 2
    .param p1, "maxRowToDelete"    # I

    .prologue
    .line 264
    return-void
.end method

.method protected _getDataToUpload()Ljava/util/TreeMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method protected _getMaxRowToUpload()I
    .registers 2

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method _getMonitoredGeofences()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v7, "monitoredGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    const/4 v6, 0x0

    .line 434
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_6
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "geofences"

    const/4 v2, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v9, "is_monitored"

    aput-object v9, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v9, "1"

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 439
    :goto_2a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 441
    invoke-direct {p0, v6}, Lcom/localytics/android/LocationHandler;->createCircularRegion(Landroid/database/Cursor;)Lcom/localytics/android/CircularRegion;

    move-result-object v8

    .line 442
    .local v8, "region":Lcom/localytics/android/CircularRegion;
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_38

    goto :goto_2a

    .line 447
    .end local v8    # "region":Lcom/localytics/android/CircularRegion;
    :catchall_38
    move-exception v0

    if-eqz v6, :cond_3e

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0

    .line 447
    :cond_3f
    if-eqz v6, :cond_44

    .line 449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 453
    :cond_44
    return-object v7
.end method

.method protected _getPlaceId(Ljava/lang/String;)J
    .registers 10
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 884
    const/4 v6, 0x0

    .line 887
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "geofences"

    const/4 v2, 0x0

    const-string/jumbo v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v7, "identifier"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 892
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 894
    const-string/jumbo v0, "place_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_41

    move-result-wide v0

    .line 899
    if-eqz v6, :cond_38

    .line 901
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 905
    :cond_38
    :goto_38
    return-wide v0

    .line 899
    :cond_39
    if-eqz v6, :cond_3e

    .line 901
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 905
    :cond_3e
    const-wide/16 v0, 0x0

    goto :goto_38

    .line 899
    :catchall_41
    move-exception v0

    if-eqz v6, :cond_47

    .line 901
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v0
.end method

.method protected _getUploadThread(Ljava/util/TreeMap;Ljava/lang/String;)Lcom/localytics/android/BaseUploadThread;
    .registers 4
    .param p2, "customerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/localytics/android/BaseUploadThread;"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method _handlePlacesData(Lorg/json/JSONObject;JI)V
    .registers 11
    .param p1, "placesData"    # Lorg/json/JSONObject;
    .param p2, "lastModified"    # J
    .param p4, "schemaVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 553
    const-string/jumbo v2, "geofences"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/localytics/android/LocationHandler;->_saveGeofences(Lorg/json/JSONArray;I)V

    .line 555
    invoke-direct {p0}, Lcom/localytics/android/LocationHandler;->_getLocationManager()Lcom/localytics/android/LocationManager;

    move-result-object v0

    .line 556
    .local v0, "locationManager":Lcom/localytics/android/LocationManager;
    if-eqz v0, :cond_14

    .line 558
    invoke-virtual {v0}, Lcom/localytics/android/LocationManager;->updateListenersWithLastLocation()V

    .line 561
    :cond_14
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v2

    if-nez v2, :cond_31

    .line 563
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 564
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "places_data_last_modified"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 565
    iget-object v2, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3, v1, v4, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 568
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_31
    iget-object v2, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v2}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 569
    return-void
.end method

.method _init()V
    .registers 4

    .prologue
    .line 229
    new-instance v0, Lcom/localytics/android/LocationProvider;

    iget-object v1, p0, Lcom/localytics/android/LocationHandler;->siloName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/localytics/android/LocationHandler;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-direct {v0, v1, v2}, Lcom/localytics/android/LocationProvider;-><init>(Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    .line 230
    invoke-virtual {p0}, Lcom/localytics/android/LocationHandler;->_initializeInfo()V

    .line 231
    return-void
.end method

.method protected _initializeInfo()V
    .registers 9

    .prologue
    .line 235
    const/4 v6, 0x0

    .line 238
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 239
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 242
    const-string/jumbo v0, "Performing first-time initialization for LocationProvider info table"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 244
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "places_data_last_modified"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string/jumbo v0, "location_monitoring_enabled"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1, v7}, Lcom/localytics/android/BaseProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_48

    .line 252
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_3d
    if-eqz v6, :cond_42

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_42
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    invoke-virtual {v0}, Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V

    .line 259
    return-void

    .line 252
    :catchall_48
    move-exception v0

    if-eqz v6, :cond_4e

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v0
.end method

.method _locationChanged(Landroid/location/Location;)V
    .registers 12
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 330
    if-eqz p1, :cond_4c

    .line 332
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 333
    .local v2, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 335
    .local v6, "longitude":D
    invoke-virtual {p0}, Lcom/localytics/android/LocationHandler;->_getMonitoredGeofences()Ljava/util/List;

    move-result-object v5

    .line 336
    .local v5, "previousGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    invoke-direct {p0, v2, v3, v6, v7}, Lcom/localytics/android/LocationHandler;->_getGeofencesToMonitor(DD)Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, "geofencesToMonitor":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 338
    .local v1, "geofencesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 339
    invoke-interface {v0, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 341
    invoke-direct {p0}, Lcom/localytics/android/LocationHandler;->_getLocationManager()Lcom/localytics/android/LocationManager;

    move-result-object v4

    .line 342
    .local v4, "locationManager":Lcom/localytics/android/LocationManager;
    if-eqz v4, :cond_2f

    .line 344
    invoke-virtual {v4, v1}, Lcom/localytics/android/LocationManager;->removeGeofences(Ljava/util/List;)V

    .line 345
    invoke-virtual {p0, v1}, Lcom/localytics/android/LocationHandler;->_stoppedMonitoringGeofences(Ljava/util/List;)V

    .line 347
    invoke-virtual {v4, v0}, Lcom/localytics/android/LocationManager;->addGeofences(Ljava/util/List;)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->_startedMonitoringGeofences(Ljava/util/List;)V

    .line 351
    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_3b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4c

    .line 353
    :cond_3b
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 354
    new-instance v9, Lcom/localytics/android/LocationHandler$8;

    invoke-direct {v9, p0, v0, v1}, Lcom/localytics/android/LocationHandler$8;-><init>(Lcom/localytics/android/LocationHandler;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    .end local v0    # "geofencesToMonitor":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    .end local v1    # "geofencesToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    .end local v2    # "latitude":D
    .end local v4    # "locationManager":Lcom/localytics/android/LocationManager;
    .end local v5    # "previousGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    .end local v6    # "longitude":D
    :cond_4c
    return-void
.end method

.method protected _onUploadCompleted(ZLjava/lang/String;)V
    .registers 3
    .param p1, "successful"    # Z
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 269
    return-void
.end method

.method _queryGeofencesInfo()Landroid/support/v4/util/LongSparseArray;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    new-instance v11, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v11}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 647
    .local v11, "geofencesInfo":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/content/ContentValues;>;"
    const/4 v10, 0x0

    .line 650
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v5, "geofences"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/localytics/android/BaseProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 651
    :goto_15
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 653
    const-string/jumbo v4, "place_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 654
    .local v18, "placeId":J
    const-string/jumbo v4, "identifier"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 655
    .local v16, "identifier":Ljava/lang/String;
    const-string/jumbo v4, "is_monitored"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 656
    .local v17, "isMonitored":I
    const-string/jumbo v4, "entered_time"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 657
    .local v12, "enteredTime":J
    const-string/jumbo v4, "exited_time"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 659
    .local v14, "exitedTime":J
    new-instance v20, Landroid/content/ContentValues;

    const/4 v4, 0x5

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 660
    .local v20, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "place_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 661
    const-string/jumbo v4, "identifier"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string/jumbo v4, "is_monitored"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    const-string/jumbo v4, "entered_time"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 664
    const-string/jumbo v4, "exited_time"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 665
    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_9b
    .catchall {:try_start_6 .. :try_end_9b} :catchall_9d

    goto/16 :goto_15

    .line 670
    .end local v12    # "enteredTime":J
    .end local v14    # "exitedTime":J
    .end local v16    # "identifier":Ljava/lang/String;
    .end local v17    # "isMonitored":I
    .end local v18    # "placeId":J
    .end local v20    # "values":Landroid/content/ContentValues;
    :catchall_9d
    move-exception v4

    if-eqz v10, :cond_a3

    .line 672
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a3
    throw v4

    .line 670
    :cond_a4
    if-eqz v10, :cond_a9

    .line 672
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_a9
    return-object v11
.end method

.method _saveEnteredTime(Ljava/lang/String;J)V
    .registers 6
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "nowMillis"    # J

    .prologue
    .line 994
    const-string/jumbo v0, "entered_time"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/localytics/android/LocationHandler;->_updateTime(Ljava/lang/String;JLjava/lang/String;)V

    .line 995
    return-void
.end method

.method _saveExitedTime(Ljava/lang/String;J)V
    .registers 6
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "nowMillis"    # J

    .prologue
    .line 999
    const-string/jumbo v0, "exited_time"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/localytics/android/LocationHandler;->_updateTime(Ljava/lang/String;JLjava/lang/String;)V

    .line 1000
    return-void
.end method

.method _setLocationMonitoringEnabled(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 318
    invoke-direct {p0}, Lcom/localytics/android/LocationHandler;->_getLocationManager()Lcom/localytics/android/LocationManager;

    move-result-object v0

    .line 319
    .local v0, "locationManager":Lcom/localytics/android/LocationManager;
    if-eqz v0, :cond_24

    .line 321
    invoke-virtual {v0, p1}, Lcom/localytics/android/LocationManager;->setMonitoringEnabled(Z)V

    .line 322
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "location_monitoring_enabled"

    if-eqz p1, :cond_25

    const/4 v2, 0x1

    :goto_15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    iget-object v2, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3, v1, v4, v4}, Lcom/localytics/android/BaseProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_24
    return-void

    .line 323
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_25
    const/4 v2, 0x0

    goto :goto_15
.end method

.method _startedMonitoringGeofences(Ljava/util/List;)V
    .registers 4
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
    .line 368
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 370
    new-instance v1, Lcom/localytics/android/LocationHandler$9;

    invoke-direct {v1, p0}, Lcom/localytics/android/LocationHandler$9;-><init>(Lcom/localytics/android/LocationHandler;)V

    invoke-static {p1, v1}, Lcom/localytics/android/BaseProvider;->buildSqlInClause(Ljava/util/List;Lcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "inClause":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/localytics/android/LocationHandler;->_updateGeofencesIsMonitored(ZLjava/lang/String;)V

    .line 381
    .end local v0    # "inClause":Ljava/lang/String;
    :cond_13
    return-void
.end method

.method _stoppedMonitoringGeofences(Ljava/util/List;)V
    .registers 4
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
    .line 385
    .local p1, "geofences":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/CircularRegion;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 387
    new-instance v1, Lcom/localytics/android/LocationHandler$10;

    invoke-direct {v1, p0}, Lcom/localytics/android/LocationHandler$10;-><init>(Lcom/localytics/android/LocationHandler;)V

    invoke-static {p1, v1}, Lcom/localytics/android/BaseProvider;->buildSqlInClause(Ljava/util/List;Lcom/localytics/android/BaseProvider$InClauseBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "inClause":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/localytics/android/LocationHandler;->_updateGeofencesIsMonitored(ZLjava/lang/String;)V

    .line 398
    .end local v0    # "inClause":Ljava/lang/String;
    :cond_13
    return-void
.end method

.method _triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .registers 5
    .param p1, "region"    # Lcom/localytics/android/Region;
    .param p2, "event"    # Lcom/localytics/android/Region$Event;

    .prologue
    .line 788
    instance-of v1, p1, Lcom/localytics/android/CircularRegion;

    if-eqz v1, :cond_17

    .line 790
    invoke-virtual {p1}, Lcom/localytics/android/Region;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/localytics/android/LocationHandler;->_getGeofencePopulated(Ljava/lang/String;)Lcom/localytics/android/CircularRegion;

    move-result-object v0

    .line 791
    .local v0, "validRegion":Lcom/localytics/android/CircularRegion;
    if-eqz v0, :cond_17

    invoke-direct {p0, p2, v0}, Lcom/localytics/android/LocationHandler;->_tagPlacesEvent(Lcom/localytics/android/Region$Event;Lcom/localytics/android/Region;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 793
    invoke-direct {p0, v0, p2}, Lcom/localytics/android/LocationHandler;->_callListenersDidTriggerRegionsOnMainThread(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V

    .line 796
    .end local v0    # "validRegion":Lcom/localytics/android/CircularRegion;
    :cond_17
    return-void
.end method

.method addListener(Lcom/localytics/android/LocationListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/localytics/android/LocationListener;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->add(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method getGeofencesToMonitor(DD)Ljava/util/List;
    .registers 12
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lcom/localytics/android/LocationHandler$11;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/localytics/android/LocationHandler$11;-><init>(Lcom/localytics/android/LocationHandler;DD)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocationHandler;->getType(Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected handleMessageExtended(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 122
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_a0

    .line 220
    invoke-super {p0, p1}, Lcom/localytics/android/BaseHandler;->handleMessageExtended(Landroid/os/Message;)V

    .line 224
    :goto_a
    return-void

    .line 126
    :pswitch_b
    const-string/jumbo v7, "Location handler received MESSAGE_SET_LOCATION_MONITORING_ENABLED"

    invoke-static {v7}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 128
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 130
    .local v1, "enabled":Z
    iget-object v7, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v8, Lcom/localytics/android/LocationHandler$1;

    invoke-direct {v8, p0, v1}, Lcom/localytics/android/LocationHandler$1;-><init>(Lcom/localytics/android/LocationHandler;Z)V

    invoke-virtual {v7, v8}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 142
    .end local v1    # "enabled":Z
    :pswitch_24
    const-string/jumbo v7, "Location handler received MESSAGE_LOCATION_CHANGED"

    invoke-static {v7}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 144
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    .line 146
    .local v3, "location":Landroid/location/Location;
    iget-object v7, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v8, Lcom/localytics/android/LocationHandler$2;

    invoke-direct {v8, p0, v3}, Lcom/localytics/android/LocationHandler$2;-><init>(Lcom/localytics/android/LocationHandler;Landroid/location/Location;)V

    invoke-virtual {v7, v8}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 158
    .end local v3    # "location":Landroid/location/Location;
    :pswitch_39
    const-string/jumbo v7, "Location handler received MESSAGE_STOPPED_MONITORING_ALL_GEOFENCES"

    invoke-static {v7}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 160
    iget-object v7, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v8, Lcom/localytics/android/LocationHandler$3;

    invoke-direct {v8, p0}, Lcom/localytics/android/LocationHandler$3;-><init>(Lcom/localytics/android/LocationHandler;)V

    invoke-virtual {v7, v8}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 172
    :pswitch_4a
    const-string/jumbo v7, "Location handler received MESSAGE_MANIFEST_CONFIG"

    invoke-static {v7}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 174
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 176
    .local v0, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v8, Lcom/localytics/android/LocationHandler$4;

    invoke-direct {v8, p0, v0}, Lcom/localytics/android/LocationHandler$4;-><init>(Lcom/localytics/android/LocationHandler;Ljava/util/Map;)V

    invoke-virtual {v7, v8}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 188
    .end local v0    # "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_5f
    const-string/jumbo v7, "Location handler received MESSAGE_TRIGGER_REGION"

    invoke-static {v7}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 190
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 191
    .local v4, "params":[Ljava/lang/Object;
    aget-object v2, v4, v8

    check-cast v2, Lcom/localytics/android/Region$Event;

    .line 192
    .local v2, "event":Lcom/localytics/android/Region$Event;
    aget-object v5, v4, v9

    check-cast v5, Lcom/localytics/android/Region;

    .line 194
    .local v5, "region":Lcom/localytics/android/Region;
    iget-object v7, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v8, Lcom/localytics/android/LocationHandler$5;

    invoke-direct {v8, p0, v5, v2}, Lcom/localytics/android/LocationHandler$5;-><init>(Lcom/localytics/android/LocationHandler;Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V

    invoke-virtual {v7, v8}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 204
    .end local v2    # "event":Lcom/localytics/android/Region$Event;
    .end local v4    # "params":[Ljava/lang/Object;
    .end local v5    # "region":Lcom/localytics/android/Region;
    :pswitch_7f
    const-string/jumbo v7, "Location handler received MESSAGE_TRIGGER_REGIONS"

    invoke-static {v7}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 206
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 207
    .restart local v4    # "params":[Ljava/lang/Object;
    aget-object v2, v4, v8

    check-cast v2, Lcom/localytics/android/Region$Event;

    .line 208
    .restart local v2    # "event":Lcom/localytics/android/Region$Event;
    aget-object v6, v4, v9

    check-cast v6, Ljava/util/List;

    .line 210
    .local v6, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    iget-object v7, p0, Lcom/localytics/android/LocationHandler;->mProvider:Lcom/localytics/android/BaseProvider;

    new-instance v8, Lcom/localytics/android/LocationHandler$6;

    invoke-direct {v8, p0, v6, v2}, Lcom/localytics/android/LocationHandler$6;-><init>(Lcom/localytics/android/LocationHandler;Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    invoke-virtual {v7, v8}, Lcom/localytics/android/BaseProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 122
    :pswitch_data_a0
    .packed-switch 0x191
        :pswitch_b
        :pswitch_24
        :pswitch_39
        :pswitch_4a
        :pswitch_5f
        :pswitch_7f
    .end packed-switch
.end method

.method isLocationMonitoringEnabled()Z
    .registers 2

    .prologue
    .line 293
    new-instance v0, Lcom/localytics/android/LocationHandler$7;

    invoke-direct {v0, p0}, Lcom/localytics/android/LocationHandler$7;-><init>(Lcom/localytics/android/LocationHandler;)V

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->getBool(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public localyticsDidDownloadManifest(Ljava/util/Map;Ljava/util/Map;Z)V
    .registers 5
    .param p3, "successful"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1099
    .local p1, "marketingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_b

    .line 1101
    const/16 v0, 0x194

    invoke-virtual {p0, v0, p2}, Lcom/localytics/android/LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1103
    :cond_b
    return-void
.end method

.method public localyticsWillDownloadManifest()V
    .registers 1

    .prologue
    .line 1094
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/LocationListener;

    invoke-interface {v0, p1}, Lcom/localytics/android/LocationListener;->localyticsDidUpdateLocation(Landroid/location/Location;)V

    .line 1110
    const/16 v0, 0x192

    invoke-virtual {p0, v0, p1}, Lcom/localytics/android/LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 1111
    return-void
.end method

.method setDeveloperListener(Lcom/localytics/android/LocationListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/localytics/android/LocationListener;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;

    invoke-virtual {v0, p1}, Lcom/localytics/android/ListenersSet;->setDevListener(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method setLocationMonitoringEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 313
    const/16 v0, 0x191

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 314
    return-void
.end method

.method stoppedMonitoringAllGeofences()V
    .registers 2

    .prologue
    .line 402
    const/16 v0, 0x193

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 403
    return-void
.end method

.method triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .registers 6
    .param p1, "region"    # Lcom/localytics/android/Region;
    .param p2, "event"    # Lcom/localytics/android/Region$Event;

    .prologue
    .line 783
    const/16 v0, 0x195

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 784
    return-void
.end method

.method triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .registers 6
    .param p2, "event"    # Lcom/localytics/android/Region$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/Region;",
            ">;",
            "Lcom/localytics/android/Region$Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 800
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    const/16 v0, 0x196

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/localytics/android/LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/localytics/android/LocationHandler;->queueMessage(Landroid/os/Message;)Z

    .line 801
    return-void
.end method
