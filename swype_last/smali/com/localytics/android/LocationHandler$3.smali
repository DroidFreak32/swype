.class Lcom/localytics/android/LocationHandler$3;
.super Ljava/lang/Object;
.source "LocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationHandler;->handleMessageExtended(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationHandler;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/localytics/android/LocationHandler$3;->this$0:Lcom/localytics/android/LocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/localytics/android/LocationHandler$3;->this$0:Lcom/localytics/android/LocationHandler;

    # invokes: Lcom/localytics/android/LocationHandler;->_stoppedMonitoringAllGeofences()V
    invoke-static {v0}, Lcom/localytics/android/LocationHandler;->access$000(Lcom/localytics/android/LocationHandler;)V

    .line 166
    return-void
.end method
