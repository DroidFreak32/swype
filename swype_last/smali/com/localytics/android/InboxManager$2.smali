.class Lcom/localytics/android/InboxManager$2;
.super Ljava/lang/Object;
.source "InboxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InboxManager;->_processMarketingObject(ZLjava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InboxManager;

.field final synthetic val$inboxCampaigns:Ljava/util/List;

.field final synthetic val$refreshListener:Lcom/localytics/android/InboxRefreshListener;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxManager;Lcom/localytics/android/InboxRefreshListener;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 196
    iput-object p1, p0, Lcom/localytics/android/InboxManager$2;->this$0:Lcom/localytics/android/InboxManager;

    iput-object p2, p0, Lcom/localytics/android/InboxManager$2;->val$refreshListener:Lcom/localytics/android/InboxRefreshListener;

    iput-object p3, p0, Lcom/localytics/android/InboxManager$2;->val$inboxCampaigns:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/localytics/android/InboxManager$2;->val$refreshListener:Lcom/localytics/android/InboxRefreshListener;

    iget-object v1, p0, Lcom/localytics/android/InboxManager$2;->val$inboxCampaigns:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/localytics/android/InboxRefreshListener;->localyticsRefreshedInboxCampaigns(Ljava/util/List;)V

    .line 201
    return-void
.end method
