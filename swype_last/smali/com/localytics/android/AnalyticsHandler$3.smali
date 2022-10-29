.class Lcom/localytics/android/AnalyticsHandler$3;
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
    .registers 2

    .prologue
    .line 587
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$3;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$3;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->_isOptedOut()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 593
    const-string/jumbo v0, "Data collection is opted out"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->d(Ljava/lang/String;)I

    .line 598
    :goto_e
    return-void

    .line 597
    :cond_f
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$3;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-virtual {v0}, Lcom/localytics/android/AnalyticsHandler;->_close()V

    goto :goto_e
.end method
