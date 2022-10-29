.class Lcom/localytics/android/InAppMessagesAdapter$1;
.super Ljava/lang/Object;
.source "InAppMessagesAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/InAppMessagesAdapter;->updateDataSet()Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/InAppMessagesAdapter;


# direct methods
.method constructor <init>(Lcom/localytics/android/InAppMessagesAdapter;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/localytics/android/InAppMessagesAdapter$1;->this$0:Lcom/localytics/android/InAppMessagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, "updated":Z
    iget-object v3, p0, Lcom/localytics/android/InAppMessagesAdapter$1;->this$0:Lcom/localytics/android/InAppMessagesAdapter;

    # getter for: Lcom/localytics/android/InAppMessagesAdapter;->mInAppManager:Lcom/localytics/android/InAppManager;
    invoke-static {v3}, Lcom/localytics/android/InAppMessagesAdapter;->access$000(Lcom/localytics/android/InAppMessagesAdapter;)Lcom/localytics/android/InAppManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/localytics/android/InAppManager;->getInAppMessages()Ljava/util/List;

    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/MarketingMessage;

    .line 51
    .local v1, "inApp":Lcom/localytics/android/MarketingMessage;
    const/4 v2, 0x1

    .line 52
    iget-object v3, p0, Lcom/localytics/android/InAppMessagesAdapter$1;->this$0:Lcom/localytics/android/InAppMessagesAdapter;

    # getter for: Lcom/localytics/android/InAppMessagesAdapter;->mInAppMessages:Ljava/util/List;
    invoke-static {v3}, Lcom/localytics/android/InAppMessagesAdapter;->access$100(Lcom/localytics/android/InAppMessagesAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 55
    .end local v1    # "inApp":Lcom/localytics/android/MarketingMessage;
    :cond_26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/localytics/android/InAppMessagesAdapter$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
