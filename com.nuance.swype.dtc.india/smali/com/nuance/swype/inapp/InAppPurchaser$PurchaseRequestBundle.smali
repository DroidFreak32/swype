.class final Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;
.super Ljava/lang/Object;
.source "InAppPurchaser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/inapp/InAppPurchaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PurchaseRequestBundle"
.end annotation


# instance fields
.field mDeveloperString:Ljava/lang/String;

.field private mNextInLine:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field mSku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mSku:Ljava/lang/String;

    .line 360
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mNextInLine:Ljava/lang/ref/WeakReference;

    .line 361
    invoke-static {}, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->generateNewToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mDeveloperString:Ljava/lang/String;

    .line 362
    return-void
.end method

.method private static generateNewToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 369
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v1

    .line 367
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 368
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, "InAppPurchaser"

    const-string/jumbo v2, "generateNewToken:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getNextInLine()Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mNextInLine:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/InAppPurchaser$PurchaseRequestBundle;->mNextInLine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    goto :goto_0
.end method
