.class final Lcom/fsck/k9/view/AccessibleWebView$1;
.super Ljava/lang/Object;
.source "AccessibleWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/view/AccessibleWebView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/fsck/k9/view/AccessibleWebView;


# direct methods
.method constructor <init>(Lcom/fsck/k9/view/AccessibleWebView;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fsck/k9/view/AccessibleWebView$1;->this$0:Lcom/fsck/k9/view/AccessibleWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/view/AccessibleWebView$1;->this$0:Lcom/fsck/k9/view/AccessibleWebView;

    invoke-static {v0}, Lcom/fsck/k9/view/AccessibleWebView;->access$000(Lcom/fsck/k9/view/AccessibleWebView;)V

    .line 60
    return-void
.end method
