.class Lcom/localytics/android/LocationManager$1$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager$1;->run()V
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
.field final synthetic this$1:Lcom/localytics/android/LocationManager$1;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager$1;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/localytics/android/LocationManager$1$1;->this$1:Lcom/localytics/android/LocationManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 103
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/localytics/android/LocationManager$1$1;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .registers 4
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LocationManager successfully added geofences: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/localytics/android/LocationManager$1$1;->this$1:Lcom/localytics/android/LocationManager$1;

    iget-object v1, v1, Lcom/localytics/android/LocationManager$1;->val$regions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 116
    :goto_1d
    return-void

    .line 113
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LocationManager failed to add geofences: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/localytics/android/LocationManager$1$1;->this$1:Lcom/localytics/android/LocationManager$1;

    iget-object v1, v1, Lcom/localytics/android/LocationManager$1;->val$regions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/localytics/android/LocationManager$1$1;->this$1:Lcom/localytics/android/LocationManager$1;

    iget-object v0, v0, Lcom/localytics/android/LocationManager$1;->this$0:Lcom/localytics/android/LocationManager;

    # invokes: Lcom/localytics/android/LocationManager;->handleErrorStatus(Lcom/google/android/gms/common/api/Status;)V
    invoke-static {v0, p1}, Lcom/localytics/android/LocationManager;->access$300(Lcom/localytics/android/LocationManager;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1d
.end method
