.class public final Lcom/localytics/android/InboxDetailFragment;
.super Landroid/app/Fragment;
.source "InboxDetailFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mController:Lcom/localytics/android/InboxWebViewController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 51
    return-void
.end method

.method private createInboxWebViewController()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    if-nez v0, :cond_b

    .line 140
    new-instance v0, Lcom/localytics/android/InboxWebViewController;

    invoke-direct {v0}, Lcom/localytics/android/InboxWebViewController;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    .line 142
    :cond_b
    return-void
.end method

.method public static newInstance(Lcom/localytics/android/InboxCampaign;)Lcom/localytics/android/InboxDetailFragment;
    .registers 4
    .param p0, "campaign"    # Lcom/localytics/android/InboxCampaign;

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg_campaign"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    new-instance v1, Lcom/localytics/android/InboxDetailFragment;

    invoke-direct {v1}, Lcom/localytics/android/InboxDetailFragment;-><init>()V

    .line 43
    .local v1, "fragment":Lcom/localytics/android/InboxDetailFragment;
    invoke-virtual {v1, v0}, Lcom/localytics/android/InboxDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public final getCampaign()Lcom/localytics/android/InboxCampaign;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    if-eqz v0, :cond_b

    .line 63
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0}, Lcom/localytics/android/InboxWebViewController;->getCampaign()Lcom/localytics/android/InboxCampaign;

    move-result-object v0

    .line 66
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final getWebViewManager()Lcom/localytics/android/MarketingWebViewManager;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    if-eqz v0, :cond_b

    .line 74
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0}, Lcom/localytics/android/InboxWebViewController;->getWebViewManager()Lcom/localytics/android/MarketingWebViewManager;

    move-result-object v0

    .line 77
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 93
    const-string/jumbo v0, "[InboxDetailFragment]: onAttach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    invoke-direct {p0}, Lcom/localytics/android/InboxDetailFragment;->createInboxWebViewController()V

    .line 97
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0, p1}, Lcom/localytics/android/InboxWebViewController;->onAttach(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string/jumbo v0, "[InboxDetailFragment]: onAttach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 86
    invoke-direct {p0}, Lcom/localytics/android/InboxDetailFragment;->createInboxWebViewController()V

    .line 87
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0, p1}, Lcom/localytics/android/InboxWebViewController;->onAttach(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const-string/jumbo v0, "[InboxDetailFragment]: onCreate"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lcom/localytics/android/InboxDetailFragment;->createInboxWebViewController()V

    .line 107
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0, p0}, Lcom/localytics/android/InboxWebViewController;->onCreate(Lcom/localytics/android/InboxDetailFragment;)V

    .line 108
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    const-string/jumbo v0, "[InboxDetailFragment]: onCreateView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0, p0}, Lcom/localytics/android/InboxWebViewController;->onCreateView(Lcom/localytics/android/InboxDetailFragment;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .registers 2

    .prologue
    .line 121
    const-string/jumbo v0, "[InboxDetailFragment]: onDestroy"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 122
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0, p0}, Lcom/localytics/android/InboxWebViewController;->onDestroy(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public final onDetach()V
    .registers 2

    .prologue
    .line 130
    const-string/jumbo v0, "[InboxDetailFragment]: onDetach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 131
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 133
    iget-object v0, p0, Lcom/localytics/android/InboxDetailFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0}, Lcom/localytics/android/InboxWebViewController;->onDetach()V

    .line 134
    return-void
.end method
