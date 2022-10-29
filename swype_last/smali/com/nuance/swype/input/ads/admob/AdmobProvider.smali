.class public Lcom/nuance/swype/input/ads/admob/AdmobProvider;
.super Lcom/nuance/swype/input/ads/AdProvider;
.source "AdmobProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/ads/admob/AdmobProvider$AdStatusListener;
    }
.end annotation


# instance fields
.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field private final mShowTestAd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ads/AdProvider;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->show_test_ad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mShowTestAd:Z

    .line 32
    return-void
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/ads/admob/AdmobProvider;I)Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/ads/admob/AdmobProvider;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->getProviderIndependentErrorCode(I)Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/ads/admob/AdmobProvider;Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/ads/admob/AdmobProvider;
    .param p1, "x1"    # Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->notifyAdLoadStatusChanged(Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V

    return-void
.end method

.method static synthetic access$400()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/ads/admob/AdmobProvider;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/ads/admob/AdmobProvider;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/ads/admob/AdmobProvider;Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/ads/admob/AdmobProvider;
    .param p1, "x1"    # Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->notifyAdLoadStatusChanged(Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V

    return-void
.end method

.method private getHashedAndroidId()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 74
    iget-object v3, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "androidId":Ljava/lang/String;
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 78
    .local v1, "hashedAndroidId":[B
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "%32s"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getProviderIndependentErrorCode(I)Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;
    .registers 3
    .param p1, "errorCode"    # I

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_12

    .line 113
    sget-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_UNKNOWN:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    :goto_5
    return-object v0

    .line 105
    :pswitch_6
    sget-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_INTERNAL_ERROR:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    goto :goto_5

    .line 107
    :pswitch_9
    sget-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_INVALID_REQUEST:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    goto :goto_5

    .line 109
    :pswitch_c
    sget-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_NETWORK_ERROR:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    goto :goto_5

    .line 111
    :pswitch_f
    sget-object v0, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->FAILED_NO_FILL:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    goto :goto_5

    .line 103
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public hideAdView()V
    .registers 5

    .prologue
    .line 126
    sget-object v0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hiding admob view"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public loadAd()V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 43
    invoke-super {p0}, Lcom/nuance/swype/input/ads/AdProvider;->loadAd()V

    .line 45
    sget-object v2, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Loading a Admob ad"

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 47
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    sget-object v3, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    .line 48
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 1048
    .local v0, "adRequestBuilder":Lcom/google/android/gms/ads/AdRequest$Builder;
    sget-boolean v2, Lcom/nuance/swype/util/AdsUtil;->sTagForChildDirectedTreatment:Z

    .line 51
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 52
    sget-object v2, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "Setting child directed? "

    aput-object v4, v3, v6

    .line 2048
    sget-boolean v4, Lcom/nuance/swype/util/AdsUtil;->sTagForChildDirectedTreatment:Z

    .line 52
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 54
    iget-boolean v2, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mShowTestAd:Z

    if-eqz v2, :cond_7e

    .line 56
    :try_start_3a
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->getHashedAndroidId()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "deviceIdHash":Ljava/lang/String;
    sget-object v2, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Adding device "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " as a test devices"

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    :try_end_66
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3a .. :try_end_66} :catch_70

    .line 70
    .end local v1    # "deviceIdHash":Ljava/lang/String;
    :goto_66
    iget-object v2, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 71
    return-void

    .line 62
    :catch_70
    move-exception v2

    sget-object v2, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Hashing algo not found. Cannot add this device as test device for ads"

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_66

    .line 66
    :cond_7e
    sget-object v2, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Build does not support showing test ads"

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_66
.end method

.method public setup(Landroid/view/ViewGroup;)V
    .registers 6
    .param p1, "billboardView"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    sget-object v0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Setting up Admob provider"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 37
    sget v0, Lcom/nuance/swype/input/R$id;->keyboard_ad_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 38
    iget-object v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/nuance/swype/input/ads/admob/AdmobProvider$AdStatusListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/ads/admob/AdmobProvider$AdStatusListener;-><init>(Lcom/nuance/swype/input/ads/admob/AdmobProvider;Lcom/nuance/swype/input/ads/admob/AdmobProvider$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 39
    return-void
.end method

.method public showAdView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 119
    sget-object v0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "showing admob view"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 122
    return-void
.end method
