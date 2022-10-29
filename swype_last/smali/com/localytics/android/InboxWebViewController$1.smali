.class Lcom/localytics/android/InboxWebViewController$1;
.super Ljava/lang/Object;
.source "InboxWebViewController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InboxWebViewController;->onCreateView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InboxWebViewController;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxWebViewController;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/localytics/android/InboxWebViewController$1;->this$0:Lcom/localytics/android/InboxWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 147
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_c

    move-object v0, p1

    .line 149
    check-cast v0, Landroid/webkit/WebView;

    .line 151
    .local v0, "webView":Landroid/webkit/WebView;
    packed-switch p2, :pswitch_data_1a

    .line 163
    .end local v0    # "webView":Landroid/webkit/WebView;
    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1

    .line 154
    .restart local v0    # "webView":Landroid/webkit/WebView;
    :pswitch_e
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 156
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 157
    const/4 v1, 0x1

    goto :goto_d

    .line 151
    nop

    :pswitch_data_1a
    .packed-switch 0x4
        :pswitch_e
    .end packed-switch
.end method
