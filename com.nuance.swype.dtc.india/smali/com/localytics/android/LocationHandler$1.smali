.class Lcom/localytics/android/LocationHandler$1;
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

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationHandler;Z)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/localytics/android/LocationHandler$1;->this$0:Lcom/localytics/android/LocationHandler;

    iput-boolean p2, p0, Lcom/localytics/android/LocationHandler$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/localytics/android/LocationHandler$1;->this$0:Lcom/localytics/android/LocationHandler;

    iget-boolean v1, p0, Lcom/localytics/android/LocationHandler$1;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/localytics/android/LocationHandler;->_setLocationMonitoringEnabled(Z)V

    .line 136
    return-void
.end method
