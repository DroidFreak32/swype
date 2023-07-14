.class Lcom/localytics/android/MarketingHandler$12;
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

.field final synthetic val$campaignId:J

.field final synthetic val$read:Z


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;JZ)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$12;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-wide p2, p0, Lcom/localytics/android/MarketingHandler$12;->val$campaignId:J

    iput-boolean p4, p0, Lcom/localytics/android/MarketingHandler$12;->val$read:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$12;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    iget-wide v2, p0, Lcom/localytics/android/MarketingHandler$12;->val$campaignId:J

    iget-boolean v1, p0, Lcom/localytics/android/MarketingHandler$12;->val$read:Z

    invoke-virtual {v0, v2, v3, v1}, Lcom/localytics/android/InboxManager;->_setInboxCampaignRead(JZ)Z

    .line 647
    return-void
.end method
