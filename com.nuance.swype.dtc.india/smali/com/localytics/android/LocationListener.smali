.class public interface abstract Lcom/localytics/android/LocationListener;
.super Ljava/lang/Object;
.source "LocationListener.java"


# virtual methods
.method public abstract localyticsDidTriggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
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
.end method

.method public abstract localyticsDidUpdateLocation(Landroid/location/Location;)V
.end method

.method public abstract localyticsDidUpdateMonitoredGeofences(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/CircularRegion;",
            ">;)V"
        }
    .end annotation
.end method
