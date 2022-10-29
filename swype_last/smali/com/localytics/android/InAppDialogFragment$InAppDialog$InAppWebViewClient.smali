.class final Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;
.super Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;
.source "InAppDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InAppDialogFragment$InAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InAppWebViewClient"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppDialogFragment$InAppDialog;Lcom/localytics/android/MarketingWebViewManager;)V
    .registers 3
    .param p2, "manager"    # Lcom/localytics/android/MarketingWebViewManager;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    .line 437
    invoke-direct {p0, p2}, Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;-><init>(Lcom/localytics/android/MarketingWebViewManager;)V

    .line 438
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 444
    iget-object v7, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v7, v7, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mCampaign:Lcom/localytics/android/InAppCampaign;
    invoke-static {v7}, Lcom/localytics/android/InAppDialogFragment;->access$100(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/InAppCampaign;

    move-result-object v7

    invoke-virtual {v7}, Lcom/localytics/android/InAppCampaign;->getDisplayLocation()Ljava/lang/String;

    move-result-object v7

    .line 445
    const-string/jumbo v8, "center"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e1

    const/high16 v7, 0x41200000    # 10.0f

    iget-object v8, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    shl-int/lit8 v1, v7, 0x1

    .line 446
    .local v1, "margin":I
    :goto_27
    iget-object v7, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v7}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v3, v7, v1

    .line 447
    .local v3, "maxWidth":I
    iget-object v7, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v7}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v2, v7, v1

    .line 448
    .local v2, "maxHeight":I
    iget-object v7, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mWidth:F
    invoke-static {v7}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$300(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)F

    move-result v7

    iget-object v8, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float v5, v7, v8

    .line 449
    .local v5, "viewportWidth":F
    iget-object v7, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mHeight:F
    invoke-static {v7}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$400(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)F

    move-result v7

    iget-object v8, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v8}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$200(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float v4, v7, v8

    .line 452
    .local v4, "viewportHeight":F
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v8, v8, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;
    invoke-static {v8}, Lcom/localytics/android/InAppDialogFragment;->access$500(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Lcom/localytics/android/JavaScriptClient;->getViewportAdjuster(FF)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x1

    const-string/jumbo v9, ";"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v9, v9, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mJavaScriptClient:Lcom/localytics/android/JavaScriptClient;
    invoke-static {v9}, Lcom/localytics/android/InAppDialogFragment;->access$500(Lcom/localytics/android/InAppDialogFragment;)Lcom/localytics/android/JavaScriptClient;

    move-result-object v9

    invoke-virtual {v9}, Lcom/localytics/android/JavaScriptClient;->getJavaScriptBridge()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "javascript":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 460
    iget-object v7, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    # getter for: Lcom/localytics/android/InAppDialogFragment$InAppDialog;->mRootLayout:Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->access$600(Lcom/localytics/android/InAppDialogFragment$InAppDialog;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 461
    iget-object v7, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    iget-object v7, v7, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->this$0:Lcom/localytics/android/InAppDialogFragment;

    # getter for: Lcom/localytics/android/InAppDialogFragment;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/localytics/android/InAppDialogFragment;->access$700(Lcom/localytics/android/InAppDialogFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_e0

    .line 463
    iget-object v6, p0, Lcom/localytics/android/InAppDialogFragment$InAppDialog$InAppWebViewClient;->this$1:Lcom/localytics/android/InAppDialogFragment$InAppDialog;

    invoke-virtual {v6}, Lcom/localytics/android/InAppDialogFragment$InAppDialog;->enterWithAnimation()V

    .line 465
    :cond_e0
    return-void

    .end local v0    # "javascript":Ljava/lang/String;
    .end local v1    # "margin":I
    .end local v2    # "maxHeight":I
    .end local v3    # "maxWidth":I
    .end local v4    # "viewportHeight":F
    .end local v5    # "viewportWidth":F
    :cond_e1
    move v1, v6

    .line 445
    goto/16 :goto_27
.end method
