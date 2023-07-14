.class Lcom/localytics/android/InboxManager$4;
.super Ljava/lang/Object;
.source "InboxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InboxManager;->setInboxDetailFragmentDisplaying(Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InboxManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxManager;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/localytics/android/InboxManager$4;->this$0:Lcom/localytics/android/InboxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 613
    iget-object v0, p0, Lcom/localytics/android/InboxManager$4;->this$0:Lcom/localytics/android/InboxManager;

    invoke-static {v0}, Lcom/localytics/android/InboxManager;->access$000(Lcom/localytics/android/InboxManager;)Lcom/localytics/android/InboxManager$ManifestHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/localytics/android/InboxManager$4;->this$0:Lcom/localytics/android/InboxManager;

    invoke-static {v0}, Lcom/localytics/android/InboxManager;->access$100(Lcom/localytics/android/InboxManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/localytics/android/InboxManager$4;->this$0:Lcom/localytics/android/InboxManager;

    invoke-static {v1}, Lcom/localytics/android/InboxManager;->access$000(Lcom/localytics/android/InboxManager;)Lcom/localytics/android/InboxManager$ManifestHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/localytics/android/InboxManager$ManifestHolder;->marketingMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/localytics/android/InboxManager$4;->this$0:Lcom/localytics/android/InboxManager;

    invoke-static {v2}, Lcom/localytics/android/InboxManager;->access$000(Lcom/localytics/android/InboxManager;)Lcom/localytics/android/InboxManager$ManifestHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/localytics/android/InboxManager$ManifestHolder;->config:Ljava/util/Map;

    iget-object v3, p0, Lcom/localytics/android/InboxManager$4;->this$0:Lcom/localytics/android/InboxManager;

    invoke-static {v3}, Lcom/localytics/android/InboxManager;->access$000(Lcom/localytics/android/InboxManager;)Lcom/localytics/android/InboxManager$ManifestHolder;

    move-result-object v3

    iget-boolean v3, v3, Lcom/localytics/android/InboxManager$ManifestHolder;->successful:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/MarketingHandler;->localyticsDidDownloadManifest(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 617
    :cond_0
    return-void
.end method
