.class Lcom/localytics/android/MarketingHandler$11;
.super Ljava/lang/Object;
.source "MarketingHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/MarketingHandler;->handleMessageExtended(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/MarketingHandler;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$marketingMap:Ljava/util/Map;

.field final synthetic val$successful:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/localytics/android/MarketingHandler;Ljava/lang/Boolean;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5

    .prologue
    .line 623
    iput-object p1, p0, Lcom/localytics/android/MarketingHandler$11;->this$0:Lcom/localytics/android/MarketingHandler;

    iput-object p2, p0, Lcom/localytics/android/MarketingHandler$11;->val$successful:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/localytics/android/MarketingHandler$11;->val$marketingMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/localytics/android/MarketingHandler$11;->val$config:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 627
    iget-object v0, p0, Lcom/localytics/android/MarketingHandler$11;->this$0:Lcom/localytics/android/MarketingHandler;

    iget-object v0, v0, Lcom/localytics/android/MarketingHandler;->mPlacesManager:Lcom/localytics/android/PlacesManager;

    iget-object v1, p0, Lcom/localytics/android/MarketingHandler$11;->val$successful:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/localytics/android/MarketingHandler$11;->val$marketingMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/localytics/android/MarketingHandler$11;->val$config:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/localytics/android/PlacesManager;->_processMarketingObject(ZLjava/util/Map;Ljava/util/Map;)V

    .line 628
    return-void
.end method
