.class Lcom/localytics/android/LocationHandler$14;
.super Ljava/lang/Object;
.source "LocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationHandler;->_callListenersDidTriggerRegionsOnMainThread(Ljava/util/List;Lcom/localytics/android/Region$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationHandler;

.field final synthetic val$event:Lcom/localytics/android/Region$Event;

.field final synthetic val$regions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationHandler;Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .registers 4

    .prologue
    .line 835
    iput-object p1, p0, Lcom/localytics/android/LocationHandler$14;->this$0:Lcom/localytics/android/LocationHandler;

    iput-object p2, p0, Lcom/localytics/android/LocationHandler$14;->val$regions:Ljava/util/List;

    iput-object p3, p0, Lcom/localytics/android/LocationHandler$14;->val$event:Lcom/localytics/android/Region$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 839
    iget-object v0, p0, Lcom/localytics/android/LocationHandler$14;->this$0:Lcom/localytics/android/LocationHandler;

    # getter for: Lcom/localytics/android/LocationHandler;->mListeners:Lcom/localytics/android/ListenersSet;
    invoke-static {v0}, Lcom/localytics/android/LocationHandler;->access$300(Lcom/localytics/android/LocationHandler;)Lcom/localytics/android/ListenersSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/ListenersSet;->getProxy()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/LocationListener;

    iget-object v1, p0, Lcom/localytics/android/LocationHandler$14;->val$regions:Ljava/util/List;

    iget-object v2, p0, Lcom/localytics/android/LocationHandler$14;->val$event:Lcom/localytics/android/Region$Event;

    invoke-interface {v0, v1, v2}, Lcom/localytics/android/LocationListener;->localyticsDidTriggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)V

    .line 840
    return-void
.end method
