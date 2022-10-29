.class Lcom/localytics/android/AnalyticsHandler$9;
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

.field final synthetic val$disabled:I


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;I)V
    .registers 3

    .prologue
    .line 716
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$9;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput p2, p0, Lcom/localytics/android/AnalyticsHandler$9;->val$disabled:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$9;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget v1, p0, Lcom/localytics/android/AnalyticsHandler$9;->val$disabled:I

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_setNotificationsDisabled(I)V
    invoke-static {v0, v1}, Lcom/localytics/android/AnalyticsHandler;->access$500(Lcom/localytics/android/AnalyticsHandler;I)V

    .line 721
    return-void
.end method
