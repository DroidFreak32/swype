.class public final Lcom/localytics/android/InboxDetailSupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "InboxDetailSupportFragment.java"


# instance fields
.field private mController:Lcom/localytics/android/InboxWebViewController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 47
    return-void
.end method

.method private createInboxWebViewController()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/localytics/android/InboxWebViewController;

    invoke-direct {v0}, Lcom/localytics/android/InboxWebViewController;-><init>()V

    iput-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    .line 137
    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/localytics/android/InboxCampaign;)Lcom/localytics/android/InboxDetailSupportFragment;
    .locals 3
    .param p0, "campaign"    # Lcom/localytics/android/InboxCampaign;

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg_campaign"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    new-instance v1, Lcom/localytics/android/InboxDetailSupportFragment;

    invoke-direct {v1}, Lcom/localytics/android/InboxDetailSupportFragment;-><init>()V

    .line 39
    .local v1, "fragment":Lcom/localytics/android/InboxDetailSupportFragment;
    invoke-virtual {v1, v0}, Lcom/localytics/android/InboxDetailSupportFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public final getCampaign()Lcom/localytics/android/InboxCampaign;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0}, Lcom/localytics/android/InboxWebViewController;->getCampaign()Lcom/localytics/android/InboxCampaign;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getWebViewManager()Lcom/localytics/android/MarketingWebViewManager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0}, Lcom/localytics/android/InboxWebViewController;->getWebViewManager()Lcom/localytics/android/MarketingWebViewManager;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    const-string/jumbo v0, "[InboxDetailSupportFragment]: onAttach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 92
    invoke-direct {p0}, Lcom/localytics/android/InboxDetailSupportFragment;->createInboxWebViewController()V

    .line 93
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0, p1}, Lcom/localytics/android/InboxWebViewController;->onAttach(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-string/jumbo v0, "[InboxDetailSupportFragment]: onAttach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 82
    invoke-direct {p0}, Lcom/localytics/android/InboxDetailSupportFragment;->createInboxWebViewController()V

    .line 83
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0, p1}, Lcom/localytics/android/InboxWebViewController;->onAttach(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    const-string/jumbo v0, "[InboxDetailSupportFragment]: onCreate"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0, p0}, Lcom/localytics/android/InboxWebViewController;->onCreate(Lcom/localytics/android/InboxDetailSupportFragment;)V

    .line 103
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const-string/jumbo v0, "[InboxDetailSupportFragment]: onCreateView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0, p0}, Lcom/localytics/android/InboxWebViewController;->onCreateView(Landroid/support/v4/app/Fragment;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 116
    const-string/jumbo v0, "[InboxDetailSupportFragment]: onDestroy"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0, p0}, Lcom/localytics/android/InboxWebViewController;->onDestroy(Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public final onDetach()V
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "[InboxDetailSupportFragment]: onDetach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 126
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 128
    iget-object v0, p0, Lcom/localytics/android/InboxDetailSupportFragment;->mController:Lcom/localytics/android/InboxWebViewController;

    invoke-virtual {v0}, Lcom/localytics/android/InboxWebViewController;->onDetach()V

    .line 129
    return-void
.end method
