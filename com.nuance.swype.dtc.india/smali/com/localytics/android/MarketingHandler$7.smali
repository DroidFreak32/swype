.class Lcom/localytics/android/MarketingHandler$7;
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

.field final synthetic val$campaignId:I


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;I)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$7;->this$0:Lcom/localytics/android/MarketingHandler;

    iput p2, p0, Lcom/localytics/android/MarketingHandler$7;->val$campaignId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$7;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    iget v1, p0, Lcom/localytics/android/MarketingHandler$7;->val$campaignId:I

    invoke-virtual {v0, v1}, Lcom/localytics/android/InAppManager;->_setInAppMessageAsNotDisplayed(I)Z

    .line 568
    return-void
.end method
