.class Lcom/localytics/android/AnalyticsHandler$7;
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

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 677
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$7;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput-object p2, p0, Lcom/localytics/android/AnalyticsHandler$7;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/localytics/android/AnalyticsHandler$7;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 681
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$7;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler$7;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/localytics/android/AnalyticsHandler$7;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/AnalyticsHandler;->_setIdentifier(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void
.end method
