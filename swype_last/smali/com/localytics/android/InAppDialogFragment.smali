.class public final Lcom/localytics/android/InAppDialogFragment;
.super Landroid/app/DialogFragment;
.source "InAppDialogFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/InAppDialogFragment$InAppDialog;
    }
.end annotation


# static fields
.field private static final AMP_DESCRIPTION:Ljava/lang/String; = "amp_view"

.field private static final ARG_CAMPAIGN:Ljava/lang/String; = "arg_campaign"

.field private static final CLOSE_BUTTON_DESCRIPTION:Ljava/lang/String; = "close_button"

.field private static final CLOSE_BUTTON_ID:I = 0x1

.field static final DIALOG_TAG:Ljava/lang/String; = "marketing_dialog"

.field private static final WEB_VIEW_ID:I = 0x2

.field private static sDismissButtonImage:Landroid/graphics/Bitmap;

.field private static sDismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;


# instance fields
.field private mCallback:Lcom/localytics/android/InAppDialogCallback;

.field private mCampaign:Lcom/localytics/android/InAppCampaign;

.field private final mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExitAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInAppDialog:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

.field private mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

.field private mListener:Lcom/localytics/android/MessagingListener;

.field private mMessageHandler:Landroid/os/Handler;

.field private mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/localytics/android/InAppDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;

    .line 82
    sget-object v0, Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;->LEFT:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    sput-object v0, Lcom/localytics/android/InAppDialogFragment;->sDismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mExitAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/InAppCampaign;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppDialogFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/localytics/android/InAppDialogFragment;->sDismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/MessagingListener;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppDialogFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mListener:Lcom/localytics/android/MessagingListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/localytics/android/InAppDialogFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppDialogFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/localytics/android/InAppDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/JavaScriptClient;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppDialogFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

    return-object v0
.end method

.method static synthetic access$700(Lcom/localytics/android/InAppDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppDialogFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/MarketingWebViewManager;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppDialogFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/localytics/android/InAppDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/InAppDialogFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mExitAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static getInAppDismissButtonLocation()Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;
    .registers 1

    .prologue
    .line 144
    sget-object v0, Lcom/localytics/android/InAppDialogFragment;->sDismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    return-object v0
.end method

.method static newInstance(Lcom/localytics/android/InAppCampaign;)Lcom/localytics/android/InAppDialogFragment;
    .registers 4
    .param p0, "campaign"    # Lcom/localytics/android/InAppCampaign;

    .prologue
    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "arg_campaign"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 127
    new-instance v1, Lcom/localytics/android/InAppDialogFragment;

    invoke-direct {v1}, Lcom/localytics/android/InAppDialogFragment;-><init>()V

    .line 128
    .local v1, "fragment":Lcom/localytics/android/InAppDialogFragment;
    invoke-virtual {v1, v0}, Lcom/localytics/android/InAppDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    return-object v1
.end method

.method static setDismissButtonImage(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    sget-object v0, Lcom/localytics/android/InAppDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 137
    sget-object v0, Lcom/localytics/android/InAppDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    :cond_9
    sput-object p0, Lcom/localytics/android/InAppDialogFragment;->sDismissButtonImage:Landroid/graphics/Bitmap;

    .line 140
    return-void
.end method

.method static setInAppDismissButtonLocation(Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;)V
    .registers 1
    .param p0, "buttonLocation"    # Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    .prologue
    .line 149
    sput-object p0, Lcom/localytics/android/InAppDialogFragment;->sDismissButtonLocation:Lcom/localytics/android/Localytics$InAppMessageDismissButtonLocation;

    .line 150
    return-void
.end method


# virtual methods
.method final dismissCampaign()V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mInAppDialog:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    if-eqz v0, :cond_15

    .line 156
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;

    if-eqz v0, :cond_10

    .line 158
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    const-string/jumbo v1, "X"

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;->tagMarketingActionEventWithAction(Ljava/lang/String;)V

    .line 160
    :cond_10
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mInAppDialog:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-virtual {v0}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->dismiss()V

    .line 162
    :cond_15
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 192
    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_32

    .line 207
    :goto_6
    return v5

    .line 195
    :pswitch_7
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment;->mInAppDialog:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-virtual {v1}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->dismissWithAnimation()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_6

    .line 202
    :catch_d
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Main handler can\'t handle message %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_24
    :try_start_24
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment;->mInAppDialog:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWebView:Lcom/localytics/android/MarketingWebView;
    invoke-static {v1}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$000(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Lcom/localytics/android/MarketingWebView;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/localytics/android/MarketingWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_d

    goto :goto_6

    .line 192
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_7
        :pswitch_24
    .end packed-switch
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 243
    const-string/jumbo v0, "[InAppDialogFragment]: onActivityCreated"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 244
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 167
    const-string/jumbo v0, "[InAppDialogFragment]: onAttach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 168
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 169
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    if-nez v0, :cond_18

    .line 171
    new-instance v0, Lcom/localytics/android/MarketingWebViewManager;

    invoke-static {}, Lcom/localytics/android/LocalyticsManager;->getInstance()Lcom/localytics/android/LocalyticsManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;-><init>(Lcom/localytics/android/LocalyticsDao;)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    .line 173
    :cond_18
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    invoke-virtual {v0, p1}, Lcom/localytics/android/MarketingWebViewManager;->setContext(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    const-string/jumbo v0, "[InAppDialogFragment]: onCreate"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 180
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mMessageHandler:Landroid/os/Handler;

    .line 182
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;->setMessageHandler(Landroid/os/Handler;)V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/localytics/android/InAppDialogFragment;->setRetainInstance(Z)V

    .line 185
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    const-string/jumbo v0, "[InAppDialogFragment]: onCreateDialog"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 223
    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "arg_campaign"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/InAppCampaign;

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;

    .line 224
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;->setCampaign(Lcom/localytics/android/WebViewCampaign;)V

    .line 225
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;

    if-eqz v0, :cond_34

    .line 227
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;

    invoke-virtual {v1}, Lcom/localytics/android/InAppCampaign;->getEventAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;->getJavaScriptClient(Ljava/util/Map;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;

    .line 230
    :cond_34
    new-instance v0, Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x103000b

    invoke-direct {v0, p0, v1, v2}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;-><init>(Lcom/localytics/android/InAppDialogFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mInAppDialog:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 236
    const-string/jumbo v0, "[InAppDialogFragment]: onCreateView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 237
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .registers 2

    .prologue
    .line 314
    const-string/jumbo v0, "[InAppDialogFragment]: onDestroy"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mListener:Lcom/localytics/android/MessagingListener;

    if-eqz v0, :cond_15

    .line 317
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 319
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mListener:Lcom/localytics/android/MessagingListener;

    invoke-interface {v0}, Lcom/localytics/android/MessagingListener;->localyticsDidDismissInAppMessage()V

    .line 323
    :cond_15
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mCallback:Lcom/localytics/android/InAppDialogCallback;

    if-eqz v0, :cond_1e

    .line 325
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mCallback:Lcom/localytics/android/InAppDialogCallback;

    invoke-interface {v0}, Lcom/localytics/android/InAppDialogCallback;->doneDisplayingCampaign()V

    .line 328
    :cond_1e
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 329
    return-void
.end method

.method public final onDestroyView()V
    .registers 3

    .prologue
    .line 303
    const-string/jumbo v0, "[InAppDialogFragment]: onDestroyView"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 304
    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 306
    invoke-virtual {p0}, Lcom/localytics/android/InAppDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 308
    :cond_1a
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 309
    return-void
.end method

.method public final onDetach()V
    .registers 3

    .prologue
    .line 334
    const-string/jumbo v0, "[InAppDialogFragment]: onDetach"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 335
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 336
    iget-object v0, p0, Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/localytics/android/MarketingWebViewManager;->setContext(Landroid/content/Context;)V

    .line 337
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 257
    const-string/jumbo v1, "[InAppDialogFragment]: onDismiss"

    invoke-static {v1}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 260
    :try_start_6
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;

    if-eqz v1, :cond_12

    .line 262
    iget-object v1, p0, Lcom/localytics/android/InAppDialogFragment;->mWebViewManager:Lcom/localytics/android/MarketingWebViewManager;

    const-string/jumbo v2, "X"

    invoke-virtual {v1, v2}, Lcom/localytics/android/MarketingWebViewManager;->tagMarketingActionEventWithAction(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_16

    .line 269
    :cond_12
    :goto_12
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 270
    return-void

    .line 265
    :catch_16
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MarketingDialogFragment onDismiss"

    invoke-static {v1, v0}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public final onPause()V
    .registers 2

    .prologue
    .line 282
    const-string/jumbo v0, "[InAppDialogFragment]: onPause"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 283
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 284
    return-void
.end method

.method public final onResume()V
    .registers 2

    .prologue
    .line 275
    const-string/jumbo v0, "[InAppDialogFragment]: onResume"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 276
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 277
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 296
    const-string/jumbo v0, "[InAppDialogFragment]: onSaveInstanceState"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 297
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    return-void
.end method

.method public final onStart()V
    .registers 2

    .prologue
    .line 250
    const-string/jumbo v0, "[InAppDialogFragment]: onStart"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 251
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 252
    return-void
.end method

.method public final onStop()V
    .registers 2

    .prologue
    .line 289
    const-string/jumbo v0, "[InAppDialogFragment]: onStop"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 290
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 291
    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    const-string/jumbo v0, "[InAppDialogFragment]: onViewStateRestored"

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 214
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 215
    return-void
.end method

.method final setDialogCallback(Lcom/localytics/android/InAppDialogCallback;)Lcom/localytics/android/InAppDialogFragment;
    .registers 2
    .param p1, "callback"    # Lcom/localytics/android/InAppDialogCallback;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/localytics/android/InAppDialogFragment;->mCallback:Lcom/localytics/android/InAppDialogCallback;

    .line 348
    return-object p0
.end method

.method final setMessagingListener(Lcom/localytics/android/MessagingListener;)Lcom/localytics/android/InAppDialogFragment;
    .registers 2
    .param p1, "listener"    # Lcom/localytics/android/MessagingListener;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/localytics/android/InAppDialogFragment;->mListener:Lcom/localytics/android/MessagingListener;

    .line 342
    return-object p0
.end method
