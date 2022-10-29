.class Lcom/localytics/android/CreativeManager$2;
.super Ljava/lang/Object;
.source "CreativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/CreativeManager;->onComplete(Lcom/localytics/android/ICreativeDownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/CreativeManager;

.field final synthetic val$task:Lcom/localytics/android/ICreativeDownloadTask;


# direct methods
.method constructor <init>(Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ICreativeDownloadTask;)V
    .registers 3

    .prologue
    .line 174
    iput-object p1, p0, Lcom/localytics/android/CreativeManager$2;->this$0:Lcom/localytics/android/CreativeManager;

    iput-object p2, p0, Lcom/localytics/android/CreativeManager$2;->val$task:Lcom/localytics/android/ICreativeDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/localytics/android/CreativeManager$2;->val$task:Lcom/localytics/android/ICreativeDownloadTask;

    invoke-interface {v1}, Lcom/localytics/android/ICreativeDownloadTask;->getCampaign()Lcom/localytics/android/MarketingMessage;

    move-result-object v0

    .line 180
    .local v0, "campaign":Lcom/localytics/android/MarketingMessage;
    iget-object v1, p0, Lcom/localytics/android/CreativeManager$2;->this$0:Lcom/localytics/android/CreativeManager;

    invoke-virtual {v1, v0}, Lcom/localytics/android/CreativeManager;->handleCreativeForCampaign(Lcom/localytics/android/MarketingMessage;)V

    .line 182
    iget-object v1, p0, Lcom/localytics/android/CreativeManager$2;->this$0:Lcom/localytics/android/CreativeManager;

    iget-object v2, p0, Lcom/localytics/android/CreativeManager$2;->val$task:Lcom/localytics/android/ICreativeDownloadTask;

    # invokes: Lcom/localytics/android/CreativeManager;->postDownloadCleanup(Lcom/localytics/android/ICreativeDownloadTask;)V
    invoke-static {v1, v2}, Lcom/localytics/android/CreativeManager;->access$000(Lcom/localytics/android/CreativeManager;Lcom/localytics/android/ICreativeDownloadTask;)V

    .line 183
    return-void
.end method
