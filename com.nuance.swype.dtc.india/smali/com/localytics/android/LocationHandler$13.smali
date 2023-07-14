.class Lcom/localytics/android/LocationHandler$13;
.super Ljava/lang/Object;
.source "LocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationHandler;->_removeDeactivatedGeofences(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationHandler;

.field final synthetic val$removedGeofences:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationHandler;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/localytics/android/LocationHandler$13;->this$0:Lcom/localytics/android/LocationHandler;

    iput-object p2, p0, Lcom/localytics/android/LocationHandler$13;->val$removedGeofences:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/localytics/android/LocationHandler$13;->this$0:Lcom/localytics/android/LocationHandler;

    invoke-static {v0}, Lcom/localytics/android/LocationHandler;->access$300(Lcom/localytics/android/LocationHandler;)Lcom/localytics/android/ListenersSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/LocationListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/localytics/android/LocationHandler$13;->val$removedGeofences:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/localytics/android/LocationListener;->localyticsDidUpdateMonitoredGeofences(Ljava/util/List;Ljava/util/List;)V

    .line 639
    return-void
.end method
