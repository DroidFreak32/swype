.class Lcom/localytics/android/InAppManager$1;
.super Ljava/lang/Object;
.source "InAppManager.java"

# interfaces
.implements Lcom/localytics/android/CreativeManager$LastDownloadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppManager;->_processMarketingObject(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InAppManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppManager;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/localytics/android/InAppManager$1;->this$0:Lcom/localytics/android/InAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastDownloaded()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/localytics/android/InAppManager$1;->this$0:Lcom/localytics/android/InAppManager;

    invoke-static {v0}, Lcom/localytics/android/InAppManager;->access$000(Lcom/localytics/android/InAppManager;)Lcom/localytics/android/MarketingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/localytics/android/MarketingHandler;->_processPendingManifest()V

    .line 194
    return-void
.end method
