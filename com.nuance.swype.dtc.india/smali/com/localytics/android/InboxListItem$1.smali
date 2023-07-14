.class Lcom/localytics/android/InboxListItem$1;
.super Landroid/content/BroadcastReceiver;
.source "InboxListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InboxListItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InboxListItem;


# direct methods
.method constructor <init>(Lcom/localytics/android/InboxListItem;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/localytics/android/InboxListItem$1;->this$0:Lcom/localytics/android/InboxListItem;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/localytics/android/InboxListItem$1;->this$0:Lcom/localytics/android/InboxListItem;

    invoke-static {v0}, Lcom/localytics/android/InboxListItem;->access$000(Lcom/localytics/android/InboxListItem;)J

    move-result-wide v0

    const-string/jumbo v2, "campaign_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/localytics/android/InboxListItem$1;->this$0:Lcom/localytics/android/InboxListItem;

    iget-object v1, p0, Lcom/localytics/android/InboxListItem$1;->this$0:Lcom/localytics/android/InboxListItem;

    invoke-static {v1}, Lcom/localytics/android/InboxListItem;->access$100(Lcom/localytics/android/InboxListItem;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/localytics/android/InboxListItem;->access$200(Lcom/localytics/android/InboxListItem;Landroid/net/Uri;)V

    .line 68
    :cond_0
    return-void
.end method
