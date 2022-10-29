.class Lcom/localytics/android/AnalyticsHandler$13;
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
    .line 777
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$13;->this$0:Lcom/localytics/android/AnalyticsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$13;->this$0:Lcom/localytics/android/AnalyticsHandler;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_retrieveTokenFromInstanceId()V
    invoke-static {v0}, Lcom/localytics/android/AnalyticsHandler;->access$900(Lcom/localytics/android/AnalyticsHandler;)V

    .line 782
    return-void
.end method
