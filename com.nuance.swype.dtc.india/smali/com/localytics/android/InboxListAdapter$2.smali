.class Lcom/localytics/android/InboxListAdapter$2;
.super Ljava/lang/Object;
.source "InboxListAdapter.java"

# interfaces
.implements Lcom/localytics/android/InboxRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InboxListAdapter;->refreshData(Lcom/localytics/android/InboxListAdapter$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InboxListAdapter;

.field final synthetic val$listener:Lcom/localytics/android/InboxListAdapter$Listener;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxListAdapter;Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/localytics/android/InboxListAdapter$2;->this$0:Lcom/localytics/android/InboxListAdapter;

    iput-object p2, p0, Lcom/localytics/android/InboxListAdapter$2;->val$listener:Lcom/localytics/android/InboxListAdapter$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localyticsRefreshedInboxCampaigns(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    iget-object v0, p0, Lcom/localytics/android/InboxListAdapter$2;->this$0:Lcom/localytics/android/InboxListAdapter;

    iget-object v1, p0, Lcom/localytics/android/InboxListAdapter$2;->val$listener:Lcom/localytics/android/InboxListAdapter$Listener;

    invoke-static {v0, p1, v1}, Lcom/localytics/android/InboxListAdapter;->access$200(Lcom/localytics/android/InboxListAdapter;Ljava/util/List;Lcom/localytics/android/InboxListAdapter$Listener;)V

    .line 131
    return-void
.end method
