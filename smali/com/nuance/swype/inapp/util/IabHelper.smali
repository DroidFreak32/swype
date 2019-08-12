.class public final Lcom/nuance/swype/inapp/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;,
        Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/nuance/swype/inapp/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# instance fields
.field private mAsyncInProgress:Z

.field private mAsyncOperation:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mDebugTag:Ljava/lang/String;

.field public mDisposed:Z

.field public mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

.field public mPurchasingItemType:Ljava/lang/String;

.field public mRequestCode:I

.field public mService:Lcom/android/vending/billing/IInAppBillingService;

.field public mServiceConn:Landroid/content/ServiceConnection;

.field public mSetupDone:Z

.field private mSignatureBase64:Ljava/lang/String;

.field public mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z

    .line 81
    iput-boolean v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDisposed:Z

    .line 85
    iput-boolean v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSubscriptionsSupported:Z

    .line 89
    iput-boolean v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncInProgress:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 810
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 826
    rsub-int v2, p0, -0x3e8

    .line 827
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 833
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 828
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 830
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 831
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 833
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method

.method private logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void
.end method

.method private queryPurchases(Lcom/nuance/swype/inapp/util/Inventory;Ljava/lang/String;)I
    .locals 16
    .param p1, "inv"    # Lcom/nuance/swype/inapp/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 898
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Querying owned items, item type: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 899
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Package name: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    const/4 v12, 0x0

    .line 901
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 904
    .local v1, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 905
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v13, :cond_1

    .line 906
    const/16 v8, -0x3ea

    .line 959
    :goto_0
    return v8

    .line 908
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 911
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 912
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Owned items response: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 913
    if-eqz v8, :cond_2

    .line 914
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getPurchases() failed: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 917
    :cond_2
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 920
    :cond_3
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 921
    const/16 v8, -0x3ea

    goto :goto_0

    .line 924
    :cond_4
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 926
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 928
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 931
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_7

    .line 932
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 933
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 934
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 935
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/inapp/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Landroid/support/v4/app/ActivityCompatHoneycomb;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 936
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Sku is owned: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 937
    new-instance v5, Lcom/nuance/swype/inapp/util/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6}, Lcom/nuance/swype/inapp/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    .local v5, "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    iget-object v13, v5, Lcom/nuance/swype/inapp/util/Purchase;->mToken:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 940
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/swype/inapp/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 941
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 945
    :cond_5
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/nuance/swype/inapp/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    iget-object v14, v5, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    .end local v5    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 948
    :cond_6
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/swype/inapp/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 949
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Purchase data: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 950
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "   Signature: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 951
    const/4 v12, 0x1

    goto :goto_2

    .line 955
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_7
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 956
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Continuation token: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 957
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 959
    if-eqz v12, :cond_8

    const/16 v8, -0x3eb

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private querySkuDetails(Ljava/lang/String;Lcom/nuance/swype/inapp/util/Inventory;Ljava/util/List;)I
    .locals 11
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/nuance/swype/inapp/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/inapp/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 964
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    if-nez v8, :cond_2

    .line 965
    :cond_0
    const/4 v3, 0x6

    .line 1008
    :cond_1
    :goto_0
    return v3

    .line 967
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/nuance/swype/inapp/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 970
    if-eqz p3, :cond_4

    .line 971
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 972
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 973
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 978
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "sku":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 983
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 984
    .local v2, "querySkus":Landroid/os/Bundle;
    const-string v8, "ITEM_ID_LIST"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 985
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 988
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 989
    invoke-virtual {p0, v5}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    .line 990
    .local v3, "response":I
    if-eqz v3, :cond_5

    .line 991
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getSkuDetails() failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 995
    :cond_5
    const-string v8, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 996
    const/16 v3, -0x3ea

    goto :goto_0

    .line 1000
    .end local v3    # "response":I
    :cond_6
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1003
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1004
    .local v7, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/nuance/swype/inapp/util/SkuDetails;

    invoke-direct {v0, v7}, Lcom/nuance/swype/inapp/util/SkuDetails;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v0, "d":Lcom/nuance/swype/inapp/util/SkuDetails;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got sku details: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1006
    iget-object v8, p2, Lcom/nuance/swype/inapp/util/Inventory;->mSkuMap:Ljava/util/Map;

    iget-object v9, v0, Lcom/nuance/swype/inapp/util/SkuDetails;->mSku:Ljava/lang/String;

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public final checkNotDisposed()V
    .locals 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    return-void
.end method

.method public final checkSetupDone(Ljava/lang/String;)Z
    .locals 2
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 843
    const/4 v0, 0x0

    .line 846
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final flagEndAsync()V
    .locals 2

    .prologue
    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncInProgress:Z

    .line 893
    return-void
.end method

.method public final flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncInProgress:Z

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    return-void
.end method

.method public final getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 851
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 852
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 853
    const/4 v1, 0x0

    .line 857
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 856
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 857
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 859
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 861
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final handleActivityResult$40bae869(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 470
    iget v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    const/4 v8, 0x0

    .line 550
    :goto_0
    return v8

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/util/IabHelper;->checkNotDisposed()V

    .line 473
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->checkSetupDone(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 474
    const/4 v8, 0x0

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 479
    if-nez p3, :cond_3

    .line 480
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 481
    new-instance v6, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 482
    .local v6, "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 483
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 486
    .end local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "RESPONSE_CODE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v8, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 487
    .local v5, "responseCode":I
    :goto_1
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_e

    if-nez v5, :cond_e

    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase data: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Data signature: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Expected item type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    if-eqz v4, :cond_4

    if-nez v0, :cond_9

    .line 498
    :cond_4
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 499
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Extras: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    new-instance v6, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 501
    .restart local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 502
    :cond_5
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 486
    .end local v0    # "dataSignature":Ljava/lang/String;
    .end local v4    # "purchaseData":Ljava/lang/String;
    .end local v5    # "responseCode":I
    .end local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_6
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_1

    :cond_7
    instance-of v9, v8, Ljava/lang/Long;

    if-eqz v9, :cond_8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v5, v8

    goto/16 :goto_1

    :cond_8
    const-string v9, "Unexpected type for intent response code."

    invoke-virtual {p0, v9}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected type for intent response code: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 505
    .restart local v0    # "dataSignature":Ljava/lang/String;
    .restart local v4    # "purchaseData":Ljava/lang/String;
    .restart local v5    # "responseCode":I
    :cond_9
    const/4 v2, 0x0

    .line 507
    .local v2, "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    :try_start_0
    new-instance v3, Lcom/nuance/swype/inapp/util/Purchase;

    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4}, Lcom/nuance/swype/inapp/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v2    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    .local v3, "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    :try_start_1
    iget-object v7, v3, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    .line 511
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 512
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 513
    new-instance v6, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Signature verification failed for sku "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 514
    .restart local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 515
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 519
    .end local v3    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    .end local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    .end local v7    # "sku":Ljava/lang/String;
    .restart local v2    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    :catch_0
    move-exception v1

    .line 520
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 522
    new-instance v6, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 523
    .restart local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 524
    :cond_b
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 527
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    .end local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    .restart local v3    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    .restart local v7    # "sku":Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_d

    .line 528
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/nuance/swype/inapp/util/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 550
    .end local v3    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_d
    :goto_3
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 531
    :cond_e
    const/4 v8, -0x1

    if-ne p2, v8, :cond_f

    .line 533
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_d

    .line 535
    new-instance v6, Lcom/nuance/swype/inapp/util/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 536
    .restart local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    goto :goto_3

    .line 539
    .end local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_f
    if-nez p2, :cond_10

    .line 540
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase canceled - Response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    new-instance v6, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 542
    .restart local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    goto :goto_3

    .line 545
    .end local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Purchase failed. Result code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 547
    new-instance v6, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 548
    .restart local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    goto/16 :goto_3

    .line 519
    .end local v6    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    .restart local v3    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    .restart local v2    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    goto/16 :goto_2
.end method

.method public final logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return-void
.end method

.method public final queryInventory$4f5be2a0(ZLjava/util/List;)Lcom/nuance/swype/inapp/util/Inventory;
    .locals 6
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nuance/swype/inapp/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swype/inapp/util/IabException;
        }
    .end annotation

    .prologue
    .line 572
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/util/IabHelper;->checkNotDisposed()V

    .line 573
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/nuance/swype/inapp/util/IabHelper;->checkSetupDone(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 574
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const/4 v4, 0x6

    const-string v5, "Error refreshing inventory (setup not done)."

    invoke-direct {v3, v4, v5}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 577
    :cond_0
    :try_start_0
    new-instance v1, Lcom/nuance/swype/inapp/util/Inventory;

    invoke-direct {v1}, Lcom/nuance/swype/inapp/util/Inventory;-><init>()V

    .line 578
    .local v1, "inv":Lcom/nuance/swype/inapp/util/Inventory;
    const-string v3, "inapp"

    invoke-direct {p0, v1, v3}, Lcom/nuance/swype/inapp/util/IabHelper;->queryPurchases(Lcom/nuance/swype/inapp/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 579
    .local v2, "r":I
    if-eqz v2, :cond_1

    .line 580
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 607
    .end local v1    # "inv":Lcom/nuance/swype/inapp/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 583
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/nuance/swype/inapp/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    if-eqz p1, :cond_2

    .line 584
    :try_start_1
    const-string v3, "inapp"

    invoke-direct {p0, v3, v1, p2}, Lcom/nuance/swype/inapp/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/nuance/swype/inapp/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 585
    if-eqz v2, :cond_2

    .line 586
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 610
    .end local v1    # "inv":Lcom/nuance/swype/inapp/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 611
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 591
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/nuance/swype/inapp/util/Inventory;
    .restart local v2    # "r":I
    :cond_2
    :try_start_2
    iget-boolean v3, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_4

    .line 592
    const-string v3, "subs"

    invoke-direct {p0, v1, v3}, Lcom/nuance/swype/inapp/util/IabHelper;->queryPurchases(Lcom/nuance/swype/inapp/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 593
    if-eqz v2, :cond_3

    .line 594
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 597
    :cond_3
    if-eqz p1, :cond_4

    .line 598
    const-string v3, "subs"

    invoke-direct {p0, v3, v1, p2}, Lcom/nuance/swype/inapp/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/nuance/swype/inapp/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 599
    if-eqz v2, :cond_4

    .line 600
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 605
    :cond_4
    return-object v1
.end method

.method public final queryInventoryAsync$8e2a111(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 6
    .param p2, "listener"    # Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/16 v4, -0x3e9

    .line 642
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 643
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/util/IabHelper;->checkNotDisposed()V

    .line 644
    const-string v2, "queryInventory"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/inapp/util/IabHelper;->checkSetupDone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 645
    if-eqz p2, :cond_0

    .line 646
    new-instance v2, Lcom/nuance/swype/inapp/util/IabResult;

    const-string v3, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v4, v3}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v2, v5}, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Inventory;)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    :try_start_0
    const-string v2, "refresh inventory"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/inapp/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/nuance/swype/inapp/util/IabHelper$2;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/nuance/swype/inapp/util/IabHelper$2;-><init>(Lcom/nuance/swype/inapp/util/IabHelper;Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 654
    :catch_0
    move-exception v2

    new-instance v1, Lcom/nuance/swype/inapp/util/IabResult;

    const-string v2, "Can\'t start another async operation."

    invoke-direct {v1, v4, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 656
    .local v1, "r":Lcom/nuance/swype/inapp/util/IabResult;
    if-eqz p2, :cond_0

    .line 657
    invoke-virtual {p2, v1, v5}, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Inventory;)V

    goto :goto_0
.end method
