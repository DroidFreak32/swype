.class public Lcom/fsck/k9/view/AccessibleWebView;
.super Landroid/widget/TextView;
.source "AccessibleWebView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/AccessibleWebView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/fsck/k9/view/AccessibleWebView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/view/AccessibleWebView;)V
    .locals 3
    .param p0, "x0"    # Lcom/fsck/k9/view/AccessibleWebView;

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/fsck/k9/view/AccessibleWebView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/fsck/k9/activity/AccessibleEmailContentActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "content"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fsck/k9/view/AccessibleWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 50
    iput-object p1, p0, Lcom/fsck/k9/view/AccessibleWebView;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/AccessibleWebView;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/fsck/k9/view/AccessibleWebView;->setFocusableInTouchMode(Z)V

    .line 54
    new-instance v0, Lcom/fsck/k9/view/AccessibleWebView$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/view/AccessibleWebView$1;-><init>(Lcom/fsck/k9/view/AccessibleWebView;)V

    invoke-virtual {p0, v0}, Lcom/fsck/k9/view/AccessibleWebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
