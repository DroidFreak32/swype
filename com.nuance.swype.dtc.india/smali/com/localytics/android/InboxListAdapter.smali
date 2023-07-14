.class public Lcom/localytics/android/InboxListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InboxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InboxListAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/localytics/android/InboxCampaign;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloadsThumbnails:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/localytics/android/InboxListAdapter;->mDownloadsThumbnails:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/InboxListAdapter;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/InboxListAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/localytics/android/InboxListAdapter;->setCampaigns(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/localytics/android/InboxListAdapter;Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/InboxListAdapter;
    .param p1, "x1"    # Lcom/localytics/android/InboxListAdapter$Listener;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/localytics/android/InboxListAdapter;->refreshData(Lcom/localytics/android/InboxListAdapter$Listener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/localytics/android/InboxListAdapter;Ljava/util/List;Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 0
    .param p0, "x0"    # Lcom/localytics/android/InboxListAdapter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/localytics/android/InboxListAdapter$Listener;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/localytics/android/InboxListAdapter;->inboxRefreshed(Ljava/util/List;Lcom/localytics/android/InboxListAdapter$Listener;)V

    return-void
.end method

.method private inboxRefreshed(Ljava/util/List;Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 1
    .param p2, "listener"    # Lcom/localytics/android/InboxListAdapter$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/localytics/android/InboxCampaign;",
            ">;",
            "Lcom/localytics/android/InboxListAdapter$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "campaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    invoke-direct {p0, p1}, Lcom/localytics/android/InboxListAdapter;->setCampaigns(Ljava/util/List;)V

    .line 139
    iget-boolean v0, p0, Lcom/localytics/android/InboxListAdapter;->mDownloadsThumbnails:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p1}, Lcom/localytics/android/Localytics;->downloadInboxThumbnails(Ljava/util/List;)V

    .line 144
    :cond_0
    if-eqz p2, :cond_1

    .line 146
    invoke-interface {p2}, Lcom/localytics/android/InboxListAdapter$Listener;->didFinishLoadingCampaigns()V

    .line 148
    :cond_1
    return-void
.end method

.method private refreshData(Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/localytics/android/InboxListAdapter$Listener;

    .prologue
    .line 125
    new-instance v0, Lcom/localytics/android/InboxListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/InboxListAdapter$2;-><init>(Lcom/localytics/android/InboxListAdapter;Lcom/localytics/android/InboxListAdapter$Listener;)V

    invoke-static {v0}, Lcom/localytics/android/Localytics;->refreshInboxCampaigns(Lcom/localytics/android/InboxRefreshListener;)V

    .line 133
    return-void
.end method

.method private setCampaigns(Ljava/util/List;)V
    .locals 3
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
    .line 114
    .local p1, "inboxCampaigns":Ljava/util/List;, "Ljava/util/List<Lcom/localytics/android/InboxCampaign;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/localytics/android/InboxListAdapter;->setNotifyOnChange(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/localytics/android/InboxListAdapter;->clear()V

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/InboxCampaign;

    .line 118
    .local v0, "campaign":Lcom/localytics/android/InboxCampaign;
    invoke-virtual {p0, v0}, Lcom/localytics/android/InboxListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v0    # "campaign":Lcom/localytics/android/InboxCampaign;
    :cond_0
    invoke-virtual {p0}, Lcom/localytics/android/InboxListAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method


# virtual methods
.method public getData(Lcom/localytics/android/InboxListAdapter$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/localytics/android/InboxListAdapter$Listener;

    .prologue
    .line 76
    new-instance v0, Lcom/localytics/android/InboxListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/InboxListAdapter$1;-><init>(Lcom/localytics/android/InboxListAdapter;Lcom/localytics/android/InboxListAdapter$Listener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/localytics/android/InboxListAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 59
    new-instance p2, Lcom/localytics/android/InboxListItem;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/localytics/android/InboxListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/localytics/android/InboxListItem;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 62
    check-cast v0, Lcom/localytics/android/InboxListItem;

    .line 63
    .local v0, "item":Lcom/localytics/android/InboxListItem;
    invoke-virtual {p0, p1}, Lcom/localytics/android/InboxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/InboxCampaign;

    iget-boolean v2, p0, Lcom/localytics/android/InboxListAdapter;->mDownloadsThumbnails:Z

    invoke-virtual {v0, v1, v2}, Lcom/localytics/android/InboxListItem;->populateViews(Lcom/localytics/android/InboxCampaign;Z)V

    .line 65
    return-object v0
.end method

.method public setDownloadsThumbnails(Z)V
    .locals 0
    .param p1, "downloadsThumbnails"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/localytics/android/InboxListAdapter;->mDownloadsThumbnails:Z

    .line 110
    return-void
.end method
