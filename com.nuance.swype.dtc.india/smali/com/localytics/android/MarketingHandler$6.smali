.class Lcom/localytics/android/MarketingHandler$6;
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

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$6;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$6;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$6;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mPushManager:Lcom/localytics/android/PushManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$6;->val$data:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/localytics/android/PushManager;->_handlePushReceived(Landroid/os/Bundle;)Z

    .line 552
    return-void
.end method
