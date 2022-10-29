.class Lcom/localytics/android/MarketingHandler$9;
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

.field final synthetic val$currentTimeInMillis:J


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;J)V
    .registers 4

    .prologue
    .line 595
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$9;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-wide p2, p0, Lcom/localytics/android/MarketingHandler$9;->val$currentTimeInMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 599
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$9;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    iget-wide v2, p0, Lcom/localytics/android/MarketingHandler$9;->val$currentTimeInMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/localytics/android/InboxManager;->setLastRefreshTimeMillis(J)V

    .line 600
    return-void
.end method
