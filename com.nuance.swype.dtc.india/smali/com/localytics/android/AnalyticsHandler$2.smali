.class Lcom/localytics/android/AnalyticsHandler$2;
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


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$2;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$2;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->_isOptedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const-string/jumbo v0, "Data collection is opted out"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 578
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$2;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->_open()V

    goto :goto_0
.end method
