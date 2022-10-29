.class Lcom/localytics/android/InboxWebViewController$2;
.super Ljava/lang/Object;
.source "InboxWebViewController.java"

# interfaces
.implements Lcom/localytics/android/CreativeManager$FirstDownloadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InboxWebViewController;->loadCreative(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InboxWebViewController;

.field final synthetic val$numRetries:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxWebViewController;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 205
    iput-object p1, p0, Lcom/localytics/android/InboxWebViewController$2;->this$0:Lcom/localytics/android/InboxWebViewController;

    iput-object p2, p0, Lcom/localytics/android/InboxWebViewController$2;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/localytics/android/InboxWebViewController$2;->val$numRetries:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstDownloaded()V
    .registers 5

    .prologue
    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    new-instance v1, Lcom/localytics/android/InboxWebViewController$2$1;

    invoke-direct {v1, p0}, Lcom/localytics/android/InboxWebViewController$2$1;-><init>(Lcom/localytics/android/InboxWebViewController$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    return-void
.end method
