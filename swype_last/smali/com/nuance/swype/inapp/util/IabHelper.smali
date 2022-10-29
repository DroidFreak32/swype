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
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field public mDisposed:Z

.field public mIsBound:Z

.field public mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

.field public mPurchasingItemType:Ljava/lang/String;

.field public mRequestCode:I

.field public mService:Lcom/android/vending/billing/IInAppBillingService;

.field public mServiceConn:Landroid/content/ServiceConnection;

.field public mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field public mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDebugLog:Z

    .line 76
    const-string/jumbo v0, "IabHelper"

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z

    .line 81
    iput-boolean v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mIsBound:Z

    .line 83
    iput-boolean v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDisposed:Z

    .line 85
    iput-boolean v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSubscriptionsSupported:Z

    .line 89
    iput-boolean v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncInProgress:Z

    .line 93
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 6
    .param p0, "code"    # I

    .prologue
    .line 814
    const-string/jumbo v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string/jumbo v4, "/"

    .line 817
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string/jumbo v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string/jumbo v4, "/"

    .line 827
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_3b

    .line 830
    rsub-int v2, p0, -0x3e8

    .line 831
    .local v2, "index":I
    if-ltz v2, :cond_22

    array-length v3, v1

    if-ge v2, v3, :cond_22

    aget-object v3, v1, v2

    .line 837
    .end local v2    # "index":I
    :goto_21
    return-object v3

    .line 832
    .restart local v2    # "index":I
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 834
    .end local v2    # "index":I
    :cond_3b
    if-ltz p0, :cond_40

    array-length v3, v0

    if-lt p0, v3, :cond_59

    .line 835
    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 837
    :cond_59
    aget-object v3, v0, p0

    goto :goto_21
.end method

.method public static getResponseDetailedDesc(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "errorStr"    # Ljava/lang/String;
    .param p1, "errorCode"    # I

    .prologue
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logWarn(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return-void
.end method

.method private queryPurchases(Lcom/nuance/swype/inapp/util/Inventory;Ljava/lang/String;)I
    .registers 18
    .param p1, "inv"    # Lcom/nuance/swype/inapp/util/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 906
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Package name: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    const/4 v11, 0x0

    .line 908
    .local v11, "verificationFailed":Z
    const/4 v1, 0x0

    .line 912
    .local v1, "continueToken":Ljava/lang/String;
    :cond_13
    iget-object v12, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v12, :cond_1a

    .line 913
    const/16 v8, -0x3ea

    .line 966
    :goto_19
    return v8

    .line 915
    :cond_1a
    iget-object v12, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v13, 0x3

    iget-object v14, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v12, v13, v14, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 918
    .local v3, "ownedItems":Landroid/os/Bundle;
    invoke-virtual {p0, v3}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 919
    .local v8, "response":I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Owned items response: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    if-eqz v8, :cond_4e

    .line 921
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "getPurchases() failed: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 924
    :cond_4e
    const-string/jumbo v12, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_69

    const-string/jumbo v12, "INAPP_PURCHASE_DATA_LIST"

    .line 925
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_69

    const-string/jumbo v12, "INAPP_DATA_SIGNATURE_LIST"

    .line 926
    invoke-virtual {v3, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_72

    .line 927
    :cond_69
    const-string/jumbo v12, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v12}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 928
    const/16 v8, -0x3ea

    goto :goto_19

    .line 931
    :cond_72
    const-string/jumbo v12, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 933
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v12, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 935
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v12, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 938
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_88
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_ce

    .line 939
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 940
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 941
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 942
    iget-object v12, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v12, v6, v9}, Lcom/nuance/swype/inapp/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c6

    .line 944
    new-instance v5, Lcom/nuance/swype/inapp/util/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/nuance/swype/inapp/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    .local v5, "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    iget-object v12, v5, Lcom/nuance/swype/inapp/util/Purchase;->mToken:Ljava/lang/String;

    .line 946
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_ba

    .line 947
    const-string/jumbo v12, "BUG: empty/null token!"

    invoke-direct {p0, v12}, Lcom/nuance/swype/inapp/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 2089
    :cond_ba
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/nuance/swype/inapp/util/Inventory;->mPurchaseMap:Ljava/util/Map;

    .line 3053
    iget-object v13, v5, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    .line 2089
    invoke-interface {v12, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    .end local v5    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    :goto_c3
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 955
    :cond_c6
    const-string/jumbo v12, "Purchase signature verification **FAILED**. Not adding item."

    invoke-direct {p0, v12}, Lcom/nuance/swype/inapp/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 958
    const/4 v11, 0x1

    goto :goto_c3

    .line 962
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    :cond_ce
    const-string/jumbo v12, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 964
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 966
    if-eqz v11, :cond_e1

    const/16 v8, -0x3eb

    goto/16 :goto_19

    :cond_e1
    const/4 v8, 0x0

    goto/16 :goto_19
.end method

.method private querySkuDetails(Ljava/lang/String;Lcom/nuance/swype/inapp/util/Inventory;Ljava/util/List;)I
    .registers 16
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
    const/4 v8, 0x6

    const/4 v2, 0x0

    .line 971
    iget-object v9, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    if-nez v9, :cond_c

    :cond_a
    move v2, v8

    .line 1024
    :cond_b
    :goto_b
    return v2

    .line 975
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v5, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Lcom/nuance/swype/inapp/util/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 977
    if-eqz p3, :cond_34

    .line 978
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1e
    :goto_1e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 979
    .local v3, "sku":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 980
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 985
    .end local v3    # "sku":Ljava/lang/String;
    :cond_34
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_b

    .line 991
    :cond_3a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_b

    .line 992
    new-instance v6, Ljava/util/ArrayList;

    const/16 v9, 0x13

    .line 993
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v5, v2, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 994
    .local v6, "skuSubList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 995
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 996
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string/jumbo v9, "ITEM_ID_LIST"

    invoke-virtual {v1, v9, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 997
    iget-object v9, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v9, :cond_69

    iget-object v9, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    if-nez v9, :cond_71

    .line 998
    :cond_69
    const-string/jumbo v9, "mService and/or mContext are null.  Exiting."

    invoke-virtual {p0, v9}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    move v2, v8

    .line 999
    goto :goto_b

    .line 1001
    :cond_71
    iget-object v9, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11, p1, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 1004
    .local v4, "skuDetails":Landroid/os/Bundle;
    const-string/jumbo v9, "DETAILS_LIST"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a8

    .line 1005
    invoke-virtual {p0, v4}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v2

    .line 1006
    .local v2, "response":I
    if-eqz v2, :cond_9e

    .line 1007
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getSkuDetails() failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1010
    :cond_9e
    const-string/jumbo v8, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1011
    const/16 v2, -0x3ea

    goto/16 :goto_b

    .line 1015
    .end local v2    # "response":I
    :cond_a8
    const-string/jumbo v9, "DETAILS_LIST"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1018
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1019
    .local v7, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/nuance/swype/inapp/util/SkuDetails;

    invoke-direct {v0, p1, v7}, Lcom/nuance/swype/inapp/util/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    .local v0, "d":Lcom/nuance/swype/inapp/util/SkuDetails;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Got sku details: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3085
    iget-object v10, p2, Lcom/nuance/swype/inapp/util/Inventory;->mSkuMap:Ljava/util/Map;

    .line 4048
    iget-object v11, v0, Lcom/nuance/swype/inapp/util/SkuDetails;->mSku:Ljava/lang/String;

    .line 3085
    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b3
.end method


# virtual methods
.method public final checkNotDisposed()V
    .registers 3

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_d
    return-void
.end method

.method public final checkSetupDone(Ljava/lang/String;)Z
    .registers 4
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_20

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 850
    const/4 v0, 0x0

    .line 853
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public final flagEndAsync()V
    .registers 3

    .prologue
    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncInProgress:Z

    .line 900
    return-void
.end method

.method public final flagStartAsync(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_2e
    iput-object p1, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mAsyncInProgress:Z

    .line 894
    return-void
.end method

.method public final getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 858
    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 859
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_b

    .line 861
    const/4 v1, 0x0

    .line 864
    .end local v0    # "o":Ljava/lang/Object;
    :goto_a
    return v1

    .line 863
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_b
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_16

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_a

    .line 864
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_16
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_22

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_a

    .line 866
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_22
    const-string/jumbo v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 868
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected type for bundle response code: "

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
    .registers 15
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 474
    iget v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mRequestCode:I

    if-eq p1, v7, :cond_6

    const/4 v7, 0x0

    .line 554
    :goto_5
    return v7

    .line 476
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/util/IabHelper;->checkNotDisposed()V

    .line 477
    const-string/jumbo v7, "handleActivityResult"

    invoke-virtual {p0, v7}, Lcom/nuance/swype/inapp/util/IabHelper;->checkSetupDone(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 478
    const/4 v7, 0x0

    goto :goto_5

    .line 481
    :cond_14
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/util/IabHelper;->flagEndAsync()V

    .line 483
    if-nez p3, :cond_35

    .line 484
    const-string/jumbo v7, "Null data in IAB activity result."

    invoke-virtual {p0, v7}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 485
    new-instance v5, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v7, -0x3ea

    const-string/jumbo v8, "Null data in IAB result"

    invoke-direct {v5, v7, v8}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 486
    .local v5, "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v7, :cond_33

    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 487
    :cond_33
    const/4 v7, 0x1

    goto :goto_5

    .line 1874
    .end local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_35
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "RESPONSE_CODE"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1875
    if-nez v7, :cond_ac

    .line 1876
    const-string/jumbo v7, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v7}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1877
    const/4 v4, 0x0

    .line 491
    .local v4, "responseCode":I
    :goto_49
    const-string/jumbo v7, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "purchaseData":Ljava/lang/String;
    const-string/jumbo v7, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v7, -0x1

    if-ne p2, v7, :cond_16f

    if-nez v4, :cond_16f

    .line 498
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Extras: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Expected item type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    if-eqz v3, :cond_7c

    if-nez v0, :cond_f2

    .line 502
    :cond_7c
    const-string/jumbo v7, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v7}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 503
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Extras: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    new-instance v5, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v7, -0x3f0

    const-string/jumbo v8, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v5, v7, v8}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 505
    .restart local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v7, :cond_a9

    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 506
    :cond_a9
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 1879
    .end local v0    # "dataSignature":Ljava/lang/String;
    .end local v3    # "purchaseData":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_ac
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_b7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_49

    .line 1880
    :cond_b7
    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_c3

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-int v4, v8

    goto :goto_49

    .line 1882
    :cond_c3
    const-string/jumbo v8, "Unexpected type for intent response code."

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1884
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unexpected type for intent response code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 511
    .restart local v0    # "dataSignature":Ljava/lang/String;
    .restart local v3    # "purchaseData":Ljava/lang/String;
    .restart local v4    # "responseCode":I
    :cond_f2
    :try_start_f2
    new-instance v2, Lcom/nuance/swype/inapp/util/Purchase;

    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v2, v7, v3, v0}, Lcom/nuance/swype/inapp/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    .local v2, "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    iget-object v6, v2, Lcom/nuance/swype/inapp/util/Purchase;->mSku:Ljava/lang/String;

    .line 515
    .local v6, "sku":Ljava/lang/String;
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v7, v3, v0}, Lcom/nuance/swype/inapp/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15a

    .line 516
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Purchase signature verification FAILED for sku "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 517
    new-instance v5, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v7, -0x3eb

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Signature verification failed for sku "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 518
    .restart local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v7, :cond_136

    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v7, v5, v2}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V
    :try_end_136
    .catch Lorg/json/JSONException; {:try_start_f2 .. :try_end_136} :catch_139

    .line 519
    :cond_136
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 523
    .end local v2    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    .end local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    .end local v6    # "sku":Ljava/lang/String;
    :catch_139
    move-exception v1

    .line 524
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "Failed to parse purchase data."

    invoke-virtual {p0, v7}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 526
    new-instance v5, Lcom/nuance/swype/inapp/util/IabResult;

    const/16 v7, -0x3ea

    const-string/jumbo v8, "Failed to parse purchase data."

    invoke-direct {v5, v7, v8}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 527
    .restart local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v7, :cond_157

    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 528
    :cond_157
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 531
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    .restart local v2    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    .restart local v6    # "sku":Ljava/lang/String;
    :cond_15a
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v7, :cond_16c

    .line 532
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v8, Lcom/nuance/swype/inapp/util/IabResult;

    const/4 v9, 0x0

    const-string/jumbo v10, "Success"

    invoke-direct {v8, v9, v10}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v7, v8, v2}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    .line 554
    .end local v2    # "purchase":Lcom/nuance/swype/inapp/util/Purchase;
    .end local v6    # "sku":Ljava/lang/String;
    :cond_16c
    :goto_16c
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 535
    :cond_16f
    const/4 v7, -0x1

    if-ne p2, v7, :cond_19c

    .line 537
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 538
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v7, :cond_16c

    .line 539
    new-instance v5, Lcom/nuance/swype/inapp/util/IabResult;

    const-string/jumbo v7, "Problem purchashing item."

    invoke-direct {v5, v4, v7}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 540
    .restart local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    goto :goto_16c

    .line 543
    .end local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_19c
    if-nez p2, :cond_1c8

    .line 544
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Purchase canceled - Response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 545
    new-instance v5, Lcom/nuance/swype/inapp/util/IabResult;

    const-string/jumbo v7, "User canceled."

    invoke-direct {v5, v4, v7}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 546
    .restart local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v7, :cond_16c

    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    goto :goto_16c

    .line 549
    .end local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    :cond_1c8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Purchase failed. Result code: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 550
    invoke-static {v4}, Lcom/nuance/swype/inapp/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 549
    invoke-virtual {p0, v7}, Lcom/nuance/swype/inapp/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 551
    new-instance v5, Lcom/nuance/swype/inapp/util/IabResult;

    const-string/jumbo v7, "Unknown purchase response."

    invoke-direct {v5, v4, v7}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 552
    .restart local v5    # "result":Lcom/nuance/swype/inapp/util/IabResult;
    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v7, :cond_16c

    iget-object v7, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mPurchaseListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Purchase;)V

    goto/16 :goto_16c
.end method

.method public final logError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return-void
.end method

.method public final queryInventory$4f5be2a0(ZLjava/util/List;)Lcom/nuance/swype/inapp/util/Inventory;
    .registers 9
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
    .line 576
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/util/IabHelper;->checkNotDisposed()V

    .line 577
    const-string/jumbo v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/nuance/swype/inapp/util/IabHelper;->checkSetupDone(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 578
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const/4 v4, 0x6

    const-string/jumbo v5, "Error refreshing inventory (setup not done)."

    invoke-direct {v3, v4, v5}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 581
    :cond_16
    :try_start_16
    new-instance v1, Lcom/nuance/swype/inapp/util/Inventory;

    invoke-direct {v1}, Lcom/nuance/swype/inapp/util/Inventory;-><init>()V

    .line 582
    .local v1, "inv":Lcom/nuance/swype/inapp/util/Inventory;
    const-string/jumbo v3, "inapp"

    invoke-direct {p0, v1, v3}, Lcom/nuance/swype/inapp/util/IabHelper;->queryPurchases(Lcom/nuance/swype/inapp/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 583
    .local v2, "r":I
    if-eqz v2, :cond_39

    .line 584
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_2d
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_2d} :catch_4d

    .line 611
    .end local v1    # "inv":Lcom/nuance/swype/inapp/util/Inventory;
    .end local v2    # "r":I
    :catch_2d
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const/16 v4, -0x3e9

    const-string/jumbo v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 587
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/nuance/swype/inapp/util/Inventory;
    .restart local v2    # "r":I
    :cond_39
    if-eqz p1, :cond_59

    .line 588
    :try_start_3b
    const-string/jumbo v3, "inapp"

    invoke-direct {p0, v3, v1, p2}, Lcom/nuance/swype/inapp/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/nuance/swype/inapp/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 589
    if-eqz v2, :cond_59

    .line 590
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4d} :catch_2d
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_4d} :catch_4d

    .line 614
    .end local v1    # "inv":Lcom/nuance/swype/inapp/util/Inventory;
    .end local v2    # "r":I
    :catch_4d
    move-exception v0

    .line 615
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const/16 v4, -0x3ea

    const-string/jumbo v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 595
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/nuance/swype/inapp/util/Inventory;
    .restart local v2    # "r":I
    :cond_59
    :try_start_59
    iget-boolean v3, p0, Lcom/nuance/swype/inapp/util/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_83

    .line 596
    const-string/jumbo v3, "subs"

    invoke-direct {p0, v1, v3}, Lcom/nuance/swype/inapp/util/IabHelper;->queryPurchases(Lcom/nuance/swype/inapp/util/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 597
    if-eqz v2, :cond_6f

    .line 598
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 601
    :cond_6f
    if-eqz p1, :cond_83

    .line 602
    const-string/jumbo v3, "subs"

    invoke-direct {p0, v3, v1, p2}, Lcom/nuance/swype/inapp/util/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/nuance/swype/inapp/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 603
    if-eqz v2, :cond_83

    .line 604
    new-instance v3, Lcom/nuance/swype/inapp/util/IabException;

    const-string/jumbo v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/nuance/swype/inapp/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_83} :catch_2d
    .catch Lorg/json/JSONException; {:try_start_59 .. :try_end_83} :catch_4d

    .line 609
    :cond_83
    return-object v1
.end method

.method public final queryInventoryAsync$8e2a111(Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;)V
    .registers 9
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

    .line 646
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 647
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/nuance/swype/inapp/util/IabHelper;->checkNotDisposed()V

    .line 648
    const-string/jumbo v2, "queryInventory"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/inapp/util/IabHelper;->checkSetupDone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 649
    if-eqz p2, :cond_21

    .line 650
    new-instance v2, Lcom/nuance/swype/inapp/util/IabResult;

    const-string/jumbo v3, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v4, v3}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v2, v5}, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Inventory;)V

    .line 693
    :cond_21
    :goto_21
    return-void

    .line 656
    :cond_22
    :try_start_22
    const-string/jumbo v2, "refresh inventory"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/inapp/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_28} :catch_36

    .line 664
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/nuance/swype/inapp/util/IabHelper$2;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/nuance/swype/inapp/util/IabHelper$2;-><init>(Lcom/nuance/swype/inapp/util/IabHelper;Ljava/util/List;Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 692
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_21

    .line 658
    :catch_36
    move-exception v2

    new-instance v1, Lcom/nuance/swype/inapp/util/IabResult;

    const-string/jumbo v2, "Can\'t start another async operation."

    invoke-direct {v1, v4, v2}, Lcom/nuance/swype/inapp/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 660
    .local v1, "r":Lcom/nuance/swype/inapp/util/IabResult;
    if-eqz p2, :cond_21

    .line 661
    invoke-interface {p2, v1, v5}, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Inventory;)V

    goto :goto_21
.end method
