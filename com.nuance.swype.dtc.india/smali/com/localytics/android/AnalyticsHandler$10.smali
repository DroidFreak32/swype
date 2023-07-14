.class Lcom/localytics/android/AnalyticsHandler$10;
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

.field final synthetic val$isOptingOut:Z


# direct methods
.method constructor <init>(Lcom/localytics/android/AnalyticsHandler;Z)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/localytics/android/AnalyticsHandler$10;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iput-boolean p2, p0, Lcom/localytics/android/AnalyticsHandler$10;->val$isOptingOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/localytics/android/AnalyticsHandler$10;->this$0:Lcom/localytics/android/AnalyticsHandler;

    iget-boolean v1, p0, Lcom/localytics/android/AnalyticsHandler$10;->val$isOptingOut:Z

    invoke-static {v0, v1}, Lcom/localytics/android/AnalyticsHandler;->access$600(Lcom/localytics/android/AnalyticsHandler;Z)V

    .line 737
    return-void
.end method
