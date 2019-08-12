.class public Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;
.super Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadableTheme"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/ThemeManager$DownloadableTheme$PURCHASED_STATE;
    }
.end annotation


# instance fields
.field private mCategoryIdString:Ljava/lang/String;

.field private mPrice:Ljava/lang/String;

.field private mSku:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "resId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "nameResId"    # I
    .param p4, "previewResId"    # I
    .param p5, "keyboardPreviewId"    # I
    .param p6, "locked"    # Z
    .param p7, "sku"    # Ljava/lang/String;
    .param p8, "categoryIdString"    # Ljava/lang/String;
    .param p9, "currentCategoryId"    # Ljava/lang/String;

    .prologue
    .line 220
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;-><init>(ILjava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mSku:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mCategoryIdString:Ljava/lang/String;

    .line 223
    return-void
.end method

.method private getDetails(Ljava/lang/String;)Lcom/nuance/swype/inapp/util/SkuDetails;
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swype/inapp/ThemePurchaser;->getDetails(Ljava/lang/String;)Lcom/nuance/swype/inapp/util/SkuDetails;

    move-result-object v0

    .line 249
    return-object v0
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mCategoryIdString:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mPrice:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mPrice:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getDetails(Ljava/lang/String;)Lcom/nuance/swype/inapp/util/SkuDetails;

    move-result-object v0

    .line 240
    .local v0, "productDetails":Lcom/nuance/swype/inapp/util/SkuDetails;
    if-eqz v0, :cond_1

    .line 241
    iget-object v1, v0, Lcom/nuance/swype/inapp/util/SkuDetails;->mPrice:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mPrice:Ljava/lang/String;

    .line 244
    .end local v0    # "productDetails":Lcom/nuance/swype/inapp/util/SkuDetails;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mPrice:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mPrice:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public hasPurchased()Z
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mSku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/inapp/ThemePurchaser;->hasPurchased(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public purchase(Landroid/app/Activity;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "listener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 254
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/nuance/swype/inapp/ThemePurchaser;->purchase(Landroid/app/Activity;Ljava/lang/String;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    .line 255
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->mPrice:Ljava/lang/String;

    .line 235
    return-void
.end method
