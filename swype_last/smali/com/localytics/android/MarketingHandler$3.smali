.class Lcom/localytics/android/MarketingHandler$3;
.super Ljava/lang/Object;
.source "MarketingHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/MarketingHandler;->getInboxCampaignsUnreadCount()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$3;->this$0:Lcom/localytics/android/MarketingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$3;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInboxManager:Lcom/localytics/android/InboxManager;

    invoke-virtual {v0}, Lcom/localytics/android/InboxManager;->_getInboxCampaignsUnreadCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/localytics/android/MarketingHandler$3;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
