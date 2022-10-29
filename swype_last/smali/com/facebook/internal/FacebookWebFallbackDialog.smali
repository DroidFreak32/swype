.class public Lcom/facebook/internal/FacebookWebFallbackDialog;
.super Lcom/facebook/internal/WebDialog;
.source "FacebookWebFallbackDialog.java"


# static fields
.field private static final OS_BACK_BUTTON_RESPONSE_TIMEOUT_MILLISECONDS:I = 0x5dc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private waitingForDialogToClose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Lcom/facebook/internal/FacebookWebFallbackDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FacebookWebFallbackDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "expectedRedirectUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/facebook/internal/FacebookWebFallbackDialog;->setExpectedRedirectUrl(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$001(Lcom/facebook/internal/FacebookWebFallbackDialog;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/internal/FacebookWebFallbackDialog;

    .prologue
    .line 42
    invoke-super {p0}, Lcom/facebook/internal/WebDialog;->cancel()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 7

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookWebFallbackDialog;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 110
    .local v1, "webView":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/facebook/internal/FacebookWebFallbackDialog;->isPageFinished()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lcom/facebook/internal/FacebookWebFallbackDialog;->isListenerCalled()Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/webkit/WebView;->isShown()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 114
    :cond_18
    invoke-super {p0}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 148
    :cond_1b
    :goto_1b
    return-void

    .line 119
    :cond_1c
    iget-boolean v2, p0, Lcom/facebook/internal/FacebookWebFallbackDialog;->waitingForDialogToClose:Z

    if-nez v2, :cond_1b

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/internal/FacebookWebFallbackDialog;->waitingForDialogToClose:Z

    .line 126
    const-string/jumbo v0, "(function() {  var event = document.createEvent(\'Event\');  event.initEvent(\'fbPlatformDialogMustClose\',true,true);  document.dispatchEvent(event);})();"

    .line 132
    .local v0, "eventJS":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "javascript:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    new-instance v3, Lcom/facebook/internal/FacebookWebFallbackDialog$1;

    invoke-direct {v3, p0}, Lcom/facebook/internal/FacebookWebFallbackDialog$1;-><init>(Lcom/facebook/internal/FacebookWebFallbackDialog;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b
.end method

.method protected parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 57
    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 60
    .local v5, "queryParams":Landroid/os/Bundle;
    const-string/jumbo v6, "bridge_args"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "bridgeArgsJSONString":Ljava/lang/String;
    const-string/jumbo v6, "bridge_args"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 64
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 67
    :try_start_1f
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {v6}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "bridgeArgs":Landroid/os/Bundle;
    const-string/jumbo v6, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_2e} :catch_6a

    .line 76
    .end local v0    # "bridgeArgs":Landroid/os/Bundle;
    :cond_2e
    :goto_2e
    const-string/jumbo v6, "method_results"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "methodResultsJSONString":Ljava/lang/String;
    const-string/jumbo v6, "method_results"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 80
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_59

    .line 81
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    const-string/jumbo v4, "{}"

    .line 85
    :cond_4a
    :try_start_4a
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v6}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    .line 87
    .local v3, "methodResults":Landroid/os/Bundle;
    const-string/jumbo v6, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_59} :catch_74

    .line 95
    .end local v3    # "methodResults":Landroid/os/Bundle;
    :cond_59
    :goto_59
    const-string/jumbo v6, "version"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v6, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    return-object v5

    .line 70
    .end local v4    # "methodResultsJSONString":Ljava/lang/String;
    :catch_6a
    move-exception v2

    .line 71
    .local v2, "je":Lorg/json/JSONException;
    sget-object v6, Lcom/facebook/internal/FacebookWebFallbackDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Unable to parse bridge_args JSON"

    invoke-static {v6, v7, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    .line 88
    .end local v2    # "je":Lorg/json/JSONException;
    .restart local v4    # "methodResultsJSONString":Ljava/lang/String;
    :catch_74
    move-exception v2

    .line 89
    .restart local v2    # "je":Lorg/json/JSONException;
    sget-object v6, Lcom/facebook/internal/FacebookWebFallbackDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Unable to parse bridge_args JSON"

    invoke-static {v6, v7, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_59
.end method
