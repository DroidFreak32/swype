.class Lcom/localytics/android/MarketingHandler$16;
.super Ljava/lang/Object;
.source "MarketingHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/MarketingHandler;->handleMessageExtended(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$event:Lcom/localytics/android/Region$Event;

.field final synthetic val$regions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Ljava/util/List;Lcom/localytics/android/Region$Event;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$16;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$16;->val$regions:Ljava/util/List;

    iput-object p3, p0, Lcom/localytics/android/MarketingHandler$16;->val$event:Lcom/localytics/android/Region$Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 713
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$16;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mPlacesManager:Lcom/localytics/android/PlacesManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$16;->val$regions:Ljava/util/List;

    iget-object v2, p0, Lcom/localytics/android/MarketingHandler$16;->val$event:Lcom/localytics/android/Region$Event;

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/PlacesManager;->_triggerRegions(Ljava/util/List;Lcom/localytics/android/Region$Event;)Z

    .line 714
    return-void
.end method
