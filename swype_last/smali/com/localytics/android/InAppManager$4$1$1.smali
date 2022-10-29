.class Lcom/localytics/android/InAppManager$4$1$1;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Lcom/localytics/android/InAppDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$4$1;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/localytics/android/InAppManager$4$1;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$4$1;)V
    .registers 2

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/localytics/android/InAppManager$4$1$1;->this$2:Lcom/localytics/android/InAppManager$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doneDisplayingCampaign()V
    .registers 3

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/localytics/android/InAppManager$4$1$1;->this$2:Lcom/localytics/android/InAppManager$4$1;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;
    invoke-static {v0}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    new-instance v1, Lcom/localytics/android/InAppManager$4$1$1$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/InAppManager$4$1$1$1;-><init>(Lcom/localytics/android/InAppManager$4$1$1;)V

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingHandler;->post(Ljava/lang/Runnable;)Z

    .line 1659
    return-void
.end method
