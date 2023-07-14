.class Lcom/localytics/android/MarketingHandler$14;
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

.field final synthetic val$callback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

.field final synthetic val$campaign:Lcom/localytics/android/InboxCampaign;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$14;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$14;->val$campaign:Lcom/localytics/android/InboxCampaign;

    iput-object p3, p0, Lcom/localytics/android/MarketingHandler$14;->val$callback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$14;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$14;->val$campaign:Lcom/localytics/android/InboxCampaign;

    iget-object v2, p0, Lcom/localytics/android/MarketingHandler$14;->val$callback:Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/InboxManager;->_priorityDownloadCreative(Lcom/localytics/android/InboxCampaign;Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;)V

    .line 680
    return-void
.end method
