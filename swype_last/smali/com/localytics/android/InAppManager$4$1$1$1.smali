.class Lcom/localytics/android/InAppManager$4$1$1$1;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager$4$1$1;->doneDisplayingCampaign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/localytics/android/InAppManager$4$1$1;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager$4$1$1;)V
    .registers 2

    .prologue
    .line 1652
    iput-object p1, p0, Lcom/localytics/android/InAppManager$4$1$1$1;->this$3:Lcom/localytics/android/InAppManager$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/localytics/android/InAppManager$4$1$1$1;->this$3:Lcom/localytics/android/InAppManager$4$1$1;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$4$1$1;->this$2:Lcom/localytics/android/InAppManager$4$1;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$4$1;->this$1:Lcom/localytics/android/InAppManager$4;

    iget-object v0, v0, Lcom/localytics/android/InAppManager$4;->this$0:Lcom/localytics/android/InAppManager;

    # getter for: Lcom/localytics/android/InAppManager;->mMarketingHandler:Lcom/localytics/android/MarketingHandler;
    invoke-static {v0}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->_processPendingManifest()V

    .line 1657
    return-void
.end method
