.class Lcom/localytics/android/AnalyticsHandler$4;
.super Ljava/lang/Object;
.source "AnalyticsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/AnalyticsHandler;->handleMessageExtended(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/AnalyticsHandler;

.field final synthetic val$attributes:Ljava/util/Map;

.field final synthetic val$clv:Ljava/lang/Long;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .registers 5

    .prologue
    .line 613
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$4;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput-object p2, p0, Lcom/localytics/android/AnalyticsHandler$4;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/localytics/android/AnalyticsHandler$4;->val$attributes:Ljava/util/Map;

    iput-object p4, p0, Lcom/localytics/android/AnalyticsHandler$4;->val$clv:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 617
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$4;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->_isOptedOut()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 619
    const-string/jumbo v0, "Data collection is opted out"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 624
    :goto_e
    return-void

    .line 623
    :cond_f
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$4;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler$4;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler$4;->val$attributes:Ljava/util/Map;

    iget-object v3, p0, Lcom/localytics/android/AnalyticsHandler$4;->val$clv:Ljava/lang/Long;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    invoke-static {v0, v1, v2, v3}, Lcom/localytics/android/AnalyticsHandler;->access$100(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    goto :goto_e
.end method
