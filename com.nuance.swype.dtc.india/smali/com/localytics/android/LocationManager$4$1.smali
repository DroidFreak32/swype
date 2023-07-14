.class Lcom/localytics/android/LocationManager$4$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/LocationManager$4;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager$4;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/localytics/android/LocationManager$4$1;->this$1:Lcom/localytics/android/LocationManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 213
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocationManager$4$1;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string/jumbo v0, "LocationManager successfully removed all geofences"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/localytics/android/LocationManager$4$1;->this$1:Lcom/localytics/android/LocationManager$4;

    iget-object v0, v0, Lcom/localytics/android/LocationManager$4;->this$0:Lcom/localytics/android/LocationManager;

    invoke-static {v0}, Lcom/localytics/android/LocationManager;->access$000(Lcom/localytics/android/LocationManager;)Lcom/localytics/android/LocalyticsDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/localytics/android/LocalyticsDao;->stoppedMonitoringAllGeofences()V

    .line 226
    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LocationManager failed to remove all geofences. Reason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    goto :goto_0
.end method
