.class final Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
.super Ljava/lang/Object;
.source "InAppPurchaser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/inapp/InAppPurchaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PurchaseRequestBundle"
.end annotation


# instance fields
.field mDeveloperString:Ljava/lang/String;

.field mNextInLine:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

.field mSku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 2
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mSku:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mNextInLine:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 321
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mDeveloperString:Ljava/lang/String;

    .line 322
    return-void
.end method
