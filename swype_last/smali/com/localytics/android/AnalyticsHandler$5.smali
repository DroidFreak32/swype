.class Lcom/localytics/android/AnalyticsHandler$5;
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

.field final synthetic val$screen:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 635
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$5;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput-object p2, p0, Lcom/localytics/android/AnalyticsHandler$5;->val$screen:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$5;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->_isOptedOut()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 641
    const-string/jumbo v0, "Data collection is opted out"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 646
    :goto_e
    return-void

    .line 645
    :cond_f
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$5;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler$5;->val$screen:Ljava/lang/String;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_tagScreen(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/localytics/android/AnalyticsHandler;->access$200(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    goto :goto_e
.end method
