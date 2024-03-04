.class public final Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;
.super Ljava/lang/Object;
.source "InAppPurchaser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/inapp/InAppPurchaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryInventoryFinishedListener"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/inapp/InAppPurchaser;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/inapp/InAppPurchaser;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryInventoryFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Inventory;)V
    .locals 5
    .param p1, "result"    # Lcom/nuance/swype/inapp/util/IabResult;
    .param p2, "inv"    # Lcom/nuance/swype/inapp/util/Inventory;

    .prologue
    .line 209
    sget-object v2, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "query completed with result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p1}, Lcom/nuance/swype/inapp/util/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    sget-object v2, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "Updating purchased list with the following: "

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 213
    iget-object v2, p0, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-static {v2}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$000(Lcom/nuance/swype/inapp/InAppPurchaser;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p2, Lcom/nuance/swype/inapp/util/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v3, v2, Lcom/nuance/swype/inapp/InAppPurchaser;->mSkuDetails:Ljava/util/Map;

    iget-object v2, p2, Lcom/nuance/swype/inapp/util/Inventory;->mSkuMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/inapp/util/SkuDetails;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v2, p2, Lcom/nuance/swype/inapp/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\titem "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " purchased"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 218
    iget-object v2, p0, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-static {v2}, Lcom/nuance/swype/inapp/InAppPurchaser;->access$100(Lcom/nuance/swype/inapp/InAppPurchaser;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/ThemeManager;->getPurchasedList(Landroid/content/Context;)Lcom/nuance/swype/inapp/PurchasedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/inapp/PurchasedList;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    iget-object v2, v2, Lcom/nuance/swype/inapp/InAppPurchaser;->mSkuDetails:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 231
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/nuance/swype/inapp/InAppPurchaser;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "qeury failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/nuance/swype/inapp/util/IabResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 233
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->this$0:Lcom/nuance/swype/inapp/InAppPurchaser;

    invoke-virtual {v2, p1}, Lcom/nuance/swype/inapp/InAppPurchaser;->cleanup(Lcom/nuance/swype/inapp/util/IabResult;)V

    .line 234
    return-void
.end method
