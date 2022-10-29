.class Lcom/localytics/android/MarketingHandler$1;
.super Ljava/lang/Object;
.source "MarketingHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/MarketingHandler;->setInAppAsDisplayed(I)Z
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
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$campaignId:I


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;I)V
    .registers 3

    .prologue
    .line 224
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$1;->this$0:Lcom/localytics/android/MarketingHandler;

    iput p2, p0, Lcom/localytics/android/MarketingHandler$1;->val$campaignId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$1;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mInAppManager:Lcom/localytics/android/InAppManager;

    iget v1, p0, Lcom/localytics/android/MarketingHandler$1;->val$campaignId:I

    invoke-virtual {v0, v1}, Lcom/localytics/android/InAppManager;->_setInAppMessageAsDisplayed(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 224
    invoke-virtual {p0}, Lcom/localytics/android/MarketingHandler$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
