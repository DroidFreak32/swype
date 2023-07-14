.class Lcom/localytics/android/LocationHandler$5;
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

.field final synthetic val$event:Lcom/localytics/android/Region$Event;

.field final synthetic val$region:Lcom/localytics/android/Region;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationHandler;Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/localytics/android/LocationHandler$5;->this$0:Lcom/localytics/android/LocationHandler;

    iput-object p2, p0, Lcom/localytics/android/LocationHandler$5;->val$region:Lcom/localytics/android/Region;

    iput-object p3, p0, Lcom/localytics/android/LocationHandler$5;->val$event:Lcom/localytics/android/Region$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/localytics/android/LocationHandler$5;->this$0:Lcom/localytics/android/LocationHandler;

    iget-object v1, p0, Lcom/localytics/android/LocationHandler$5;->val$region:Lcom/localytics/android/Region;

    iget-object v2, p0, Lcom/localytics/android/LocationHandler$5;->val$event:Lcom/localytics/android/Region$Event;

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/LocationHandler;->_triggerRegion(Lcom/localytics/android/Region;Lcom/localytics/android/Region$Event;)V

    .line 198
    return-void
.end method
