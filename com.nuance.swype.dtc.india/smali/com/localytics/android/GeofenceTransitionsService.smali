.class public Lcom/localytics/android/GeofenceTransitionsService;
.super Landroid/app/IntentService;
.source "GeofenceTransitionsService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "GeofenceTransitionsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private eventForTransition(I)Lcom/localytics/android/Region$Event;
    .locals 1
    .param p1, "transition"    # I

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    sget-object v0, Lcom/localytics/android/Region$Event;->ENTER:Lcom/localytics/android/Region$Event;

    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/localytics/android/Region$Event;->EXIT:Lcom/localytics/android/Region$Event;

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private logError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 74
    const-string/jumbo v0, "Geofence: Unknown error"

    .line 75
    .local v0, "message":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 88
    :goto_0
    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 89
    return-void

    .line 78
    :pswitch_0
    const-string/jumbo v0, "Geofence: Geofence not available"

    .line 79
    goto :goto_0

    .line 81
    :pswitch_1
    const-string/jumbo v0, "Geofence: Too many geofences"

    .line 82
    goto :goto_0

    .line 84
    :pswitch_2
    const-string/jumbo v0, "Geofence: Too many pending intents"

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object v0

    .line 25
    .local v0, "event":Lcom/google/android/gms/location/GeofencingEvent;
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->hasError()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getErrorCode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/localytics/android/GeofenceTransitionsService;->logError(I)V

    .line 56
    .end local v0    # "event":Lcom/google/android/gms/location/GeofencingEvent;
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local v0    # "event":Lcom/google/android/gms/location/GeofencingEvent;
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition()I

    move-result v4

    .line 32
    .local v4, "transition":I
    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    .line 35
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object v6

    .line 36
    .local v6, "triggeringGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 37
    .local v3, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/Geofence;

    .line 39
    .local v1, "geofence":Lcom/google/android/gms/location/Geofence;
    new-instance v7, Lcom/localytics/android/CircularRegion$Builder;

    invoke-direct {v7}, Lcom/localytics/android/CircularRegion$Builder;-><init>()V

    invoke-interface {v1}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/localytics/android/CircularRegion$Builder;->setUniqueId(Ljava/lang/String;)Lcom/localytics/android/CircularRegion$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/localytics/android/CircularRegion$Builder;->build()Lcom/localytics/android/CircularRegion;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 45
    .end local v1    # "geofence":Lcom/google/android/gms/location/Geofence;
    :cond_3
    invoke-direct {p0, v4}, Lcom/localytics/android/GeofenceTransitionsService;->eventForTransition(I)Lcom/localytics/android/Region$Event;

    move-result-object v5

    .line 46
    .local v5, "transitionEvent":Lcom/localytics/android/Region$Event;
    if-eqz v5, :cond_0

    .line 48
    invoke-static {v3, v5}, Lcom/localytics/android/Localytics;->triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    goto :goto_0

    .line 53
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "regions":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/Region;>;"
    .end local v5    # "transitionEvent":Lcom/localytics/android/Region$Event;
    .end local v6    # "triggeringGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    :cond_4
    const-string/jumbo v7, "Geofence transition ignored - not enter or exit"

    invoke-static {v7}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method
