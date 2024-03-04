.class public Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
.super Landroid/app/Activity;
.source "PopupDialogThemeActivity.java"


# static fields
.field public static final EXTRA_THEME_ID:Ljava/lang/String; = "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

.field public static final EXTRA_THEME_SKU:Ljava/lang/String; = "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

.field public static final REQUEST_APPLY_THEME:I = 0x2712

.field public static final REQUEST_PURCHASE:I = 0x2711

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

.field private localyticsValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmButton:Landroid/widget/Button;

.field private mLock:Landroid/widget/ImageView;

.field private mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

.field private mThemeNameView:Landroid/widget/TextView;

.field private mThemePreviewView:Landroid/widget/ImageView;

.field private mThemePriceView:Landroid/widget/TextView;

.field private startBrowsingTime:J

.field private swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

.field themeManager:Lcom/nuance/swype/input/ThemeManager;

.field private themeName:Ljava/lang/String;

.field private uniqueThemeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "PurchaseThemeActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeName:Ljava/lang/String;

    .line 244
    new-instance v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->uniqueThemeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordLocalyticsOnCloseActivity(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    return-object v0
.end method

.method private getBrowingTimeInterval(J)Ljava/lang/String;
    .locals 13
    .param p1, "time"    # J

    .prologue
    const-wide/32 v10, 0x493e0

    const-wide/32 v8, 0x1d4c0

    const-wide/32 v6, 0xea60

    const-wide/16 v4, 0x7530

    const-wide/16 v2, 0x1388

    .line 178
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    .line 179
    const-string v0, "0-5s"

    .line 191
    :goto_0
    return-object v0

    .line 180
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    cmp-long v0, p1, v4

    if-gtz v0, :cond_1

    .line 181
    const-string v0, "5s-30s"

    goto :goto_0

    .line 182
    :cond_1
    cmp-long v0, p1, v4

    if-lez v0, :cond_2

    cmp-long v0, p1, v6

    if-gtz v0, :cond_2

    .line 183
    const-string v0, "30s-1m"

    goto :goto_0

    .line 184
    :cond_2
    cmp-long v0, p1, v6

    if-lez v0, :cond_3

    cmp-long v0, p1, v8

    if-gtz v0, :cond_3

    .line 185
    const-string v0, "1m-2m"

    goto :goto_0

    .line 186
    :cond_3
    cmp-long v0, p1, v8

    if-lez v0, :cond_4

    cmp-long v0, p1, v10

    if-gtz v0, :cond_4

    .line 187
    const-string v0, "2m-5m"

    goto :goto_0

    .line 188
    :cond_4
    cmp-long v0, p1, v10

    if-lez v0, :cond_5

    .line 189
    const-string v0, "5m +"

    goto :goto_0

    .line 191
    :cond_5
    const-string v0, "0-5s"

    goto :goto_0
.end method

.method private recordLocalyticsOnCloseActivity(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 7
    .param p1, "purchase"    # Ljava/lang/String;
    .param p2, "isPurchase"    # Z
    .param p3, "errors"    # Ljava/lang/String;
    .param p4, "isError"    # Z

    .prologue
    const/4 v6, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-static {}, Lcom/nuance/android/compat/LocalyticsCompat;->open()V

    .line 204
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "theme name"

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->startBrowsingTime:J

    sub-long v0, v2, v4

    .line 207
    .local v0, "browsingTime":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->startBrowsingTime:J

    .line 208
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "browsing time"

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getBrowingTimeInterval(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->isGoogleTrialBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "trial vs. paid"

    const-string v4, "trial"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "purchase"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    if-eqz p4, :cond_2

    .line 219
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "errors"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_1
    sget-boolean v2, Lcom/nuance/swype/input/settings/ThemesPrefs;->isVisited:Z

    if-eqz v2, :cond_3

    .line 224
    sput-boolean v6, Lcom/nuance/swype/input/settings/ThemesPrefs;->isVisited:Z

    .line 225
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "theme options"

    const-string v4, "visited"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :goto_2
    sget-boolean v2, Lcom/nuance/swype/input/settings/Themes;->isMoreView:Z

    if-eqz v2, :cond_4

    .line 232
    sput-boolean v6, Lcom/nuance/swype/input/settings/Themes;->isMoreView:Z

    .line 233
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "preview point"

    const-string v4, "expanded view"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :goto_3
    const-string v2, "Theme Preview"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/nuance/android/compat/LocalyticsCompat;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 242
    .end local v0    # "browsingTime":J
    :cond_0
    return-void

    .line 214
    .restart local v0    # "browsingTime":J
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "trial vs. paid"

    const-string v4, "paid"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "errors"

    const-string v4, "user left"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 228
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "theme options"

    const-string v4, "not visited"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 236
    :cond_4
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    const-string v3, "preview point"

    const-string v4, "scroll view"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private updateDownloadableScreenContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 299
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemeNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePriceView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePriceView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getKeyboardPreviewResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mLock:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    :cond_0
    return-void
.end method

.method private updateFreeThemeScreenContent()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mLock:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemeNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getNameResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 313
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePriceView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getKeyboardPreviewResId()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getKeyboardPreviewResId()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getPreviewResId()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 323
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/inapp/ThemePurchaser;->handlePurchaseResults$40bae86d(IILandroid/content/Intent;)V

    .line 330
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->requestWindowFeature(I)Z

    .line 64
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 65
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 67
    sget v6, Lcom/nuance/swype/input/R$layout;->pop_up_dialog_theme_activity:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 68
    .local v4, "view":Landroid/view/ViewGroup;
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setContentView(Landroid/view/View;)V

    .line 71
    sget v5, Lcom/nuance/swype/input/R$id;->purchase_theme_name:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemeNameView:Landroid/widget/TextView;

    .line 72
    sget v5, Lcom/nuance/swype/input/R$id;->purchase_theme_price:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePriceView:Landroid/widget/TextView;

    .line 73
    sget v5, Lcom/nuance/swype/input/R$id;->purchase_theme_preview_image:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Landroid/widget/ImageView;

    .line 74
    sget v5, Lcom/nuance/swype/input/R$id;->theme_lock_purchase:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mLock:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .local v1, "args":Landroid/os/Bundle;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeName:Ljava/lang/String;

    .line 78
    if-eqz v1, :cond_2

    .line 79
    const-string v5, "theme_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->uniqueThemeId:Ljava/lang/String;

    .line 80
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v6, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->uniqueThemeId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 81
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->updateFreeThemeScreenContent()V

    .line 82
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v5, :cond_0

    .line 83
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeName:Ljava/lang/String;

    .line 86
    :cond_0
    sget v5, Lcom/nuance/swype/input/R$id;->purchase_theme_confirm:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    .line 87
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    sget v6, Lcom/nuance/swype/input/R$string;->apply:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 88
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->apply:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    new-instance v6, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;

    invoke-direct {v6, p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v5, Lcom/nuance/swype/input/R$id;->purchase_theme_cancel:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mCancelButton:Landroid/widget/Button;

    .line 112
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;

    invoke-direct {v6, p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 161
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->pop_up_theme_column_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 163
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 168
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/android/compat/LocalyticsCompat;->isLocalyticsClassExistingAndContributionaAllowed(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/BuildInfo;->getSwypePreferenceAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nuance/android/compat/LocalyticsCompat;->createLocalyticsSession(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/stats/LocalyticsUtils;

    .line 171
    invoke-static {}, Lcom/nuance/android/compat/LocalyticsCompat;->open()V

    .line 172
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->localyticsValues:Ljava/util/Map;

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->startBrowsingTime:J

    .line 175
    :cond_1
    return-void

    .line 130
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "sku":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    invoke-virtual {v5, v3}, Lcom/nuance/swype/input/ThemeManager;->getThemeForSku(Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    .line 132
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->updateDownloadableScreenContent()V

    .line 133
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    if-eqz v5, :cond_3

    .line 134
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    invoke-virtual {v5}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeName:Ljava/lang/String;

    .line 137
    :cond_3
    sget v5, Lcom/nuance/swype/input/R$id;->purchase_theme_confirm:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    .line 138
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    sget v6, Lcom/nuance/swype/input/R$string;->theme_buy_theme:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 139
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$string;->theme_buy_theme:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    new-instance v6, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    invoke-direct {v6, p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget v5, Lcom/nuance/swype/input/R$id;->purchase_theme_cancel:I

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mCancelButton:Landroid/widget/Button;

    .line 150
    iget-object v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;

    invoke-direct {v6, p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected purchaseItem()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;

    const/16 v1, 0x2711

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-virtual {v0, p0, v1, v2}, Lcom/nuance/swype/input/ThemeManager$DownloadableTheme;->purchase(Landroid/app/Activity;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;)V

    .line 198
    :cond_0
    return-void
.end method
