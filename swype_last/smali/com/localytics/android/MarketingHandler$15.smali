.class Lcom/localytics/android/MarketingHandler$15;
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

.field final synthetic val$listener:Lcom/localytics/android/InboxRefreshListener;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/InboxRefreshListener;)V
    .registers 3

    .prologue
    .line 691
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$15;->val$listener:Lcom/localytics/android/InboxRefreshListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$15;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$15;->val$listener:Lcom/localytics/android/InboxRefreshListener;

    invoke-virtual {v0, v1}, Lcom/localytics/android/InboxManager;->_getInboxCampaignsAsync(Lcom/localytics/android/InboxRefreshListener;)V

    .line 696
    return-void
.end method
