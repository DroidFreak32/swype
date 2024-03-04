.class public Lcom/nuance/swype/input/HtmlTipDialog;
.super Lcom/nuance/swype/input/SwypeDialog;
.source "HtmlTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/HtmlTipDialog$JavaScriptBridge;
    }
.end annotation


# static fields
.field private static final longClickConsumer:Landroid/view/View$OnLongClickListener;


# instance fields
.field private final onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/nuance/swype/input/HtmlTipDialog$1;

    invoke-direct {v0}, Lcom/nuance/swype/input/HtmlTipDialog$1;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/HtmlTipDialog;->longClickConsumer:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onCancelListner"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/nuance/swype/input/SwypeDialog;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nuance/swype/input/HtmlTipDialog;->url:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/nuance/swype/input/HtmlTipDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 41
    iput-object p3, p0, Lcom/nuance/swype/input/HtmlTipDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 42
    return-void
.end method

.method protected static doNotShow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->enableShowEditGestureTip(Z)V

    .line 140
    return-void
.end method

.method protected static showHelp(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showTutorial()V

    .line 126
    return-void
.end method

.method protected static showSettings(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->showSettings()V

    .line 121
    return-void
.end method


# virtual methods
.method protected onCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 47
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 50
    iget-object v3, p0, Lcom/nuance/swype/input/HtmlTipDialog;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 51
    iget-object v3, p0, Lcom/nuance/swype/input/HtmlTipDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, "webView":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    sget-object v3, Lcom/nuance/swype/input/HtmlTipDialog;->longClickConsumer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 56
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 58
    new-instance v3, Lcom/nuance/swype/input/HtmlTipDialog$JavaScriptBridge;

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/HtmlTipDialog$JavaScriptBridge;-><init>(Landroid/app/Dialog;)V

    const-string v4, "SwypeHost"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/nuance/swype/input/HtmlTipDialog;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 62
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-object v0
.end method
