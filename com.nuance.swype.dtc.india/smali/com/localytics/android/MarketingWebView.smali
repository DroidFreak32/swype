.class final Lcom/localytics/android/MarketingWebView;
.super Landroid/webkit/WebView;
.source "MarketingWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/MarketingWebView$MarketingWebViewClient;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 24
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/localytics/android/MarketingWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/localytics/android/MarketingWebView;->setBackgroundColor(I)V

    .line 29
    invoke-virtual {p0, v2}, Lcom/localytics/android/MarketingWebView;->setInitialScale(I)V

    .line 31
    invoke-virtual {p0}, Lcom/localytics/android/MarketingWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 32
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 33
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 34
    return-void
.end method
