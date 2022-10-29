.class Lcom/localytics/android/LocationHandler$2;
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

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationHandler;Landroid/location/Location;)V
    .registers 3

    .prologue
    .line 147
    iput-object p1, p0, Lcom/localytics/android/LocationHandler$2;->this$0:Lcom/localytics/android/LocationHandler;

    iput-object p2, p0, Lcom/localytics/android/LocationHandler$2;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/localytics/android/LocationHandler$2;->this$0:Lcom/localytics/android/LocationHandler;

    iget-object v1, p0, Lcom/localytics/android/LocationHandler$2;->val$location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/localytics/android/LocationHandler;->_locationChanged(Landroid/location/Location;)V

    .line 152
    return-void
.end method
