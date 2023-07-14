.class Lcom/localytics/android/MarketingHandler$17;
.super Ljava/lang/Object;
.source "MarketingHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/MarketingHandler;->localyticsSessionDidOpen(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$didResumeOldSession:Z

.field final synthetic val$isFirstEverSession:Z

.field final synthetic val$isFirstSessionSinceUpgrade:Z


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;ZZZ)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$17;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-boolean p2, p0, Lcom/localytics/android/MarketingHandler$17;->val$isFirstEverSession:Z

    iput-boolean p3, p0, Lcom/localytics/android/MarketingHandler$17;->val$isFirstSessionSinceUpgrade:Z

    iput-boolean p4, p0, Lcom/localytics/android/MarketingHandler$17;->val$didResumeOldSession:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 748
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 750
    iget-boolean v0, p0, Lcom/localytics/android/MarketingHandler$17;->val$isFirstEverSession:Z

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$17;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    const-string/jumbo v1, "AMP First Run"

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/InAppManager;->_inAppMessageTrigger(Ljava/lang/String;Ljava/util/Map;)V

    .line 754
    :cond_0
    iget-boolean v0, p0, Lcom/localytics/android/MarketingHandler$17;->val$isFirstSessionSinceUpgrade:Z

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$17;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    const-string/jumbo v1, "AMP upgrade"

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/InAppManager;->_inAppMessageTrigger(Ljava/lang/String;Ljava/util/Map;)V

    .line 758
    :cond_1
    iget-boolean v0, p0, Lcom/localytics/android/MarketingHandler$17;->val$didResumeOldSession:Z

    if-nez v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$17;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/InAppManager;->_inAppMessageTrigger(Ljava/lang/String;Ljava/util/Map;)V

    .line 764
    :cond_2
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$17;->this$0:Lcom/localytics/android/MarketingHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/localytics/android/MarketingHandler;->access$002(Lcom/localytics/android/MarketingHandler;Z)Z

    .line 765
    return-void
.end method
