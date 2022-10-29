.class Lcom/localytics/android/AnalyticsHandler$11;
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

.field final synthetic val$newSenderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 748
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$11;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput-object p2, p0, Lcom/localytics/android/AnalyticsHandler$11;->val$newSenderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 752
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$11;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-object v1, p0, Lcom/localytics/android/AnalyticsHandler$11;->val$newSenderId:Ljava/lang/String;

    # invokes: Lcom/localytics/android/AnalyticsHandler;->_registerPush(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/localytics/android/AnalyticsHandler;->access$700(Lcom/localytics/android/AnalyticsHandler;Ljava/lang/String;)V

    .line 753
    return-void
.end method
