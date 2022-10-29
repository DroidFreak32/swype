.class public Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
.super Landroid/app/Activity;
.source "PopupDialogThemeActivity.java"


# static fields
.field public static final EXTRA_THEME_BUNDLE_SKU:Ljava/lang/String; = "com.nuance.swype.input.settings.PopupDialogThemeActivity.bundle_sku"

.field public static final EXTRA_THEME_CATEGORY_ID:Ljava/lang/String; = "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

.field public static final EXTRA_THEME_ID:Ljava/lang/String; = "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

.field public static final EXTRA_THEME_REQUEST:Ljava/lang/String; = "com.nuance.swype.input.settings.PopupDialogThemeActivity.Dialog_request"

.field public static final EXTRA_THEME_SKU:Ljava/lang/String; = "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

.field public static final EXTRA_THEME_SOURCE:Ljava/lang/String; = "extra_theme_source"

.field public static final EXTRA_THEME_VIEW_INDEX:Ljava/lang/String; = "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_view_index"

.field public static final MSG_DELAY_SELF_DESTRUCTION:I = 0x186ab

.field private static final MSG_SHOW_BOUNDLE_ONLY_DLG:I = 0x186ac

.field public static final REQUEST_APPLY_THEME:I = 0x2712

.field public static final REQUEST_GO_TO_BUNDLE:I = 0x2716

.field public static final REQUEST_INSTALL_THEME:I = 0x2713

.field public static final REQUEST_PURCHASE:I = 0x2711

.field public static final REQUEST_UNINSTALL_APPLY_THEME:I = 0x2715

.field public static final REQUEST_UNINSTALL_THEME:I = 0x2714

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private bundleSku:Ljava/lang/String;

.field private buttonPressed:Z

.field private downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

.field private final handlerCallback:Landroid/os/Handler$Callback;

.field private mCancelButton:Landroid/widget/Button;

.field private mConfirmButton:Landroid/widget/Button;

.field private final mHandler:Landroid/os/Handler;

.field private final mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

.field private mThemeNameView:Landroid/widget/TextView;

.field private mThemePreviewView:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

.field private mThemePriceView:Landroid/widget/TextView;

.field private requestID:I

.field private res:Landroid/content/res/Resources;

.field private swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

.field private themeCategory:Ljava/lang/String;

.field private themeManager:Lcom/nuance/swype/input/ThemeManager;

.field private themePreviewHeight:I

.field private themePreviewWidth:I

.field private themeSourceFragment:Ljava/lang/String;

.field private themesku:Ljava/lang/String;

.field private viewIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-string/jumbo v0, "PurchaseThemeActivity"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->buttonPressed:Z

    .line 696
    new-instance v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$6;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 856
    new-instance v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$7;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$7;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->handlerCallback:Landroid/os/Handler$Callback;

    .line 882
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->buttonPressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Landroid/content/res/Resources;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->bundleSku:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
    .param p1, "x1"    # Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;)D
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->parseThemePriceToDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordStoreTransactionFailed(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
    .param p1, "x1"    # Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;
    .param p2, "x2"    # Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordThemesPreview(Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->requestID:I

    return v0
.end method

.method static synthetic access$700()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct/range {p0 .. p7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordBundleThemesPreview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parseThemePriceToDouble(Ljava/lang/String;)D
    .registers 8
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 594
    const-wide/16 v2, 0x0

    .line 595
    .local v2, "result":D
    const-string/jumbo v4, "[^0-9.]+"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "priceWithoutSign":Ljava/lang/String;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 598
    :try_start_14
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1b} :catch_1d

    move-result-wide v2

    .line 603
    :cond_1c
    :goto_1c
    return-wide v2

    .line 599
    :catch_1d
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method private recordBundleThemesPreview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "errors"    # Ljava/lang/String;
    .param p2, "purchase"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "apply"    # Ljava/lang/String;
    .param p5, "from"    # Ljava/lang/String;
    .param p6, "position"    # Ljava/lang/String;
    .param p7, "category"    # Ljava/lang/String;

    .prologue
    .line 679
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 681
    .local v0, "usageData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 682
    const-string/jumbo v1, "Errors"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_13
    const-string/jumbo v1, "Theme Name"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string/jumbo v1, "Apply"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string/jumbo v1, "Purchase"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string/jumbo v1, "Action"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string/jumbo v1, "Previewed From"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string/jumbo v1, "Position"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string/jumbo v1, "Category"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$Event;->BUNDLE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Event;

    invoke-static {v1, v0}, Lcom/nuance/swype/usagedata/UsageData;->recordEvent(Lcom/nuance/swype/usagedata/UsageData$Event;Ljava/util/Map;)V

    .line 694
    return-void
.end method

.method private recordPurchaseDoneInfo(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$PurchaseType;)V
    .registers 5
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->GOOGLE_PLAY:Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    invoke-static {v0, p1, p2, v1}, Lcom/nuance/swype/usagedata/UsageData;->recordStoreTransactionComplete(Ljava/lang/String;Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$PurchaseType;Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;)V

    .line 649
    return-void
.end method

.method private recordStoreTransactionFailed(ILjava/lang/String;)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;->GOOGLE_PLAY:Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;

    invoke-static {v0, v1, p2, p1}, Lcom/nuance/swype/usagedata/UsageData;->recordStoreTransactionFailed(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$PaymentProvider;Ljava/lang/String;I)V

    .line 658
    return-void
.end method

.method private recordThemesPreview(Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "action"    # Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;
    .param p2, "result"    # Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;
    .param p3, "sku"    # Ljava/lang/String;
    .param p4, "from"    # Ljava/lang/String;
    .param p5, "position"    # I
    .param p6, "category"    # Ljava/lang/String;

    .prologue
    .line 667
    new-instance v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;

    invoke-direct {v0}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;-><init>()V

    .line 7062
    iput-object p1, v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;->mAction:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    .line 7067
    iput-object p2, v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;->mResult:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    .line 7072
    iput-object p3, v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;->mThemeName:Ljava/lang/String;

    .line 7077
    iput-object p4, v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;->mPreviewedFrom:Ljava/lang/String;

    .line 7082
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;->mPosition:Ljava/lang/Integer;

    .line 7087
    iput-object p6, v0, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;->mCategory:Ljava/lang/String;

    .line 674
    invoke-virtual {v0}, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview;->commit()V

    .line 675
    return-void
.end method

.method private setupDialog(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;I)V
    .registers 12
    .param p1, "index"    # I
    .param p2, "theme"    # Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    .param p3, "requestId"    # I

    .prologue
    const v7, 0x186ac

    const/16 v6, 0x2715

    .line 262
    invoke-virtual {p2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v0

    .line 263
    .local v0, "seed":Lcom/nuance/swype/util/storage/ThemeItemSeed;
    move-object v1, p2

    .line 266
    .local v1, "themeR":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    sget v3, Lcom/nuance/swype/input/R$id;->purchase_theme_confirm:I

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    .line 267
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    sget v4, Lcom/nuance/swype/input/R$string;->theme_buy_theme:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 268
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;

    sget v5, Lcom/nuance/swype/input/R$string;->theme_buy_theme:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1225
    iget-boolean v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 270
    if-eqz v3, :cond_a0

    .line 271
    if-ne p3, v6, :cond_8b

    .line 272
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    sget v4, Lcom/nuance/swype/input/R$string;->apply:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 273
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;

    sget v5, Lcom/nuance/swype/input/R$string;->apply:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    :cond_42
    :goto_42
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;

    const-string/jumbo v4, "My Themes Tab"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 289
    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v3}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 295
    :cond_52
    :goto_52
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    new-instance v4, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;

    invoke-direct {v4, p0, p1, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    sget v3, Lcom/nuance/swype/input/R$id;->purchase_theme_cancel:I

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mCancelButton:Landroid/widget/Button;

    .line 528
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    sget v3, Lcom/nuance/swype/input/R$id;->purchase_theme_uninstall:I

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 5225
    .local v2, "uninstallButton":Landroid/widget/Button;
    iget-boolean v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isInstalled:Z

    .line 554
    if-eqz v3, :cond_106

    if-ne p3, v6, :cond_106

    .line 555
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 556
    new-instance v3, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$5;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    :goto_8a
    return-void

    .line 275
    .end local v2    # "uninstallButton":Landroid/widget/Button;
    :cond_8b
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    sget v4, Lcom/nuance/swype/input/R$string;->uninstall_button:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 276
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;

    sget v5, Lcom/nuance/swype/input/R$string;->uninstall_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 2214
    :cond_a0
    iget-boolean v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 278
    if-nez v3, :cond_a8

    .line 3206
    iget-boolean v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 278
    if-eqz v3, :cond_bd

    .line 279
    :cond_a8
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    sget v4, Lcom/nuance/swype/input/R$string;->install_button:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 280
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;

    sget v5, Lcom/nuance/swype/input/R$string;->install_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 3214
    :cond_bd
    iget-boolean v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 281
    if-nez v3, :cond_42

    .line 3250
    iget-boolean v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchasable:Z

    .line 281
    if-nez v3, :cond_42

    .line 4194
    iget-object v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    .line 281
    if-eqz v3, :cond_d1

    .line 5194
    iget-object v3, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->price:Ljava/lang/String;

    .line 281
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 282
    :cond_d1
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    sget v4, Lcom/nuance/swype/input/R$string;->buy_bundle:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 283
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;

    sget v5, Lcom/nuance/swype/input/R$string;->buy_bundle_desc:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_42

    .line 291
    :cond_f3
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getType()I

    move-result v3

    sget-object v4, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->KEYBOARD:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v4}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_52

    .line 292
    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$Screen;->GET_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v3}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    goto/16 :goto_52

    .line 589
    .restart local v2    # "uninstallButton":Landroid/widget/Button;
    :cond_106
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_8a
.end method

.method private setupPreviewImage()V
    .registers 4

    .prologue
    .line 607
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    iget v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewWidth:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setWrapperImageWidth(I)V

    .line 608
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    iget v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewHeight:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setWrapperImageHeight(I)V

    .line 609
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 610
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 611
    iget v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 612
    return-void
.end method

.method private updateConnectDownloadableScreenContent()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 615
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v0, :cond_85

    .line 616
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemeNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v0

    .line 6206
    iget-boolean v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchased:Z

    .line 617
    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getThemeItemSeed()Lcom/nuance/swype/util/storage/ThemeItemSeed;

    move-result-object v0

    .line 6214
    iget-boolean v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isFree:Z

    .line 617
    if-eqz v0, :cond_86

    .line 618
    :cond_28
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePriceView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    :goto_2f
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePriceView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setupPreviewImage()V

    .line 625
    sget-object v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "pop up dialog width:"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "  height:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 627
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    iget v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewWidth:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setWrapperImageWidth(I)V

    .line 628
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    iget v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewHeight:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/drawable/ImageViewWrapper;->setWrapperImageHeight(I)V

    .line 629
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/util/ImageCache;->with(Landroid/content/Context;)Lcom/nuance/android/util/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 630
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->custom_progressbar_indeterminate:I

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    .line 629
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/android/util/ImageCache;->loadImage(Ljava/lang/String;ILcom/nuance/swype/util/drawable/ImageViewWrapper;)V

    .line 633
    :cond_85
    return-void

    .line 620
    :cond_86
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePriceView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2f
.end method

.method private updateFreeThemeScreenContent()V
    .registers 5

    .prologue
    .line 826
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v0, :cond_3a

    .line 827
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemeNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePriceView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 830
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setupPreviewImage()V

    .line 832
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/util/ImageCache;->with(Landroid/content/Context;)Lcom/nuance/android/util/ImageCache;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getKeyboardPreviewResId()I

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 833
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getKeyboardPreviewResId()I

    move-result v0

    :goto_33
    sget v2, Lcom/nuance/swype/input/R$drawable;->custom_progressbar_indeterminate:I

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    .line 832
    invoke-virtual {v1, v0, v2, v3}, Lcom/nuance/android/util/ImageCache;->loadImage(IILcom/nuance/swype/util/drawable/ImageViewWrapper;)V

    .line 836
    :cond_3a
    return-void

    .line 833
    :cond_3b
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getPreviewResId()I

    move-result v0

    add-int/lit16 v0, v0, 0xff

    goto :goto_33
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 840
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_37

    .line 841
    const/4 v0, -0x1

    if-ne p2, v0, :cond_20

    .line 842
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getPrice()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 843
    invoke-virtual {v0}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getType()I

    move-result v0

    sget-object v2, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v2}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_34

    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->BUNDLE:Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    .line 842
    :goto_1d
    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordPurchaseDoneInfo(Ljava/lang/String;Lcom/nuance/swype/usagedata/UsageData$PurchaseType;)V

    .line 846
    :cond_20
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ThemeManager;->getThemePurchaser(Landroid/content/Context;)Lcom/nuance/swype/inapp/ThemePurchaser;

    move-result-object v0

    .line 847
    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/inapp/ThemePurchaser;->handlePurchaseResults$40bae86d(IILandroid/content/Intent;)V

    .line 853
    :goto_33
    return-void

    .line 843
    :cond_34
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$PurchaseType;->THEME:Lcom/nuance/swype/usagedata/UsageData$PurchaseType;

    goto :goto_1d

    .line 852
    :cond_37
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_33
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const v13, 0x186ab

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0, v12}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->requestWindowFeature(I)Z

    .line 98
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 99
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 100
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;

    .line 101
    sget v8, Lcom/nuance/swype/input/R$layout;->pop_up_dialog_theme_activity:I

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 102
    .local v7, "view":Landroid/view/ViewGroup;
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setContentView(Landroid/view/View;)V

    .line 103
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;

    sget v9, Lcom/nuance/swype/input/R$dimen;->pop_up_theme_column_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewWidth:I

    .line 105
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;

    sget v9, Lcom/nuance/swype/input/R$dimen;->pop_up_theme_column_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewHeight:I

    .line 109
    sget v8, Lcom/nuance/swype/input/R$id;->purchase_theme_name:I

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemeNameView:Landroid/widget/TextView;

    .line 110
    sget v8, Lcom/nuance/swype/input/R$id;->purchase_theme_price:I

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePriceView:Landroid/widget/TextView;

    .line 111
    sget v8, Lcom/nuance/swype/input/R$id;->purchase_theme_preview_image:I

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mThemePreviewView:Lcom/nuance/swype/util/drawable/ImageViewWrapper;

    .line 113
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    .line 114
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "mySku":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "com.nuance.swype.input.settings.PopupDialogThemeActivity.category_id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentThemeId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;

    .line 117
    iput-boolean v11, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->buttonPressed:Z

    .line 118
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "com.nuance.swype.input.settings.PopupDialogThemeActivity.bundle_sku"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->bundleSku:Ljava/lang/String;

    .line 119
    const/4 v4, 0x1

    .line 121
    .local v4, "onCreateSuccessful":Z
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "extra_theme_source"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_view_index"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I

    .line 124
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;

    if-nez v8, :cond_e2

    .line 125
    const-string/jumbo v8, ""

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;

    .line 126
    sget-object v8, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v9, v12, [Ljava/lang/Object;

    const-string/jumbo v10, "onCreate: themeSourceFragment not provided!"

    aput-object v10, v9, v11

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 129
    :cond_e2
    if-eqz v3, :cond_173

    .line 130
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;

    invoke-virtual {v8, v9, v3}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    .line 131
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->updateFreeThemeScreenContent()V

    .line 132
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->swypeTheme:Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    if-eqz v8, :cond_f7

    .line 133
    iput-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;

    .line 136
    :cond_f7
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;

    const-string/jumbo v9, "My Themes Tab"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16d

    .line 137
    sget-object v8, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v8}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 143
    :goto_107
    sget v8, Lcom/nuance/swype/input/R$id;->purchase_theme_confirm:I

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    .line 144
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    sget v9, Lcom/nuance/swype/input/R$string;->apply:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 145
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->res:Landroid/content/res/Resources;

    sget v10, Lcom/nuance/swype/input/R$string;->apply:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mConfirmButton:Landroid/widget/Button;

    new-instance v9, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;

    invoke-direct {v9, p0, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    sget v8, Lcom/nuance/swype/input/R$id;->purchase_theme_cancel:I

    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mCancelButton:Landroid/widget/Button;

    .line 167
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v9, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;

    invoke-direct {v9, p0, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;-><init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    :cond_143
    :goto_143
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 221
    .local v5, "params":Landroid/view/WindowManager$LayoutParams;
    iget v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themePreviewWidth:I

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 222
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 224
    if-nez v4, :cond_16c

    .line 225
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_165

    .line 226
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    :cond_165
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x1

    invoke-virtual {v8, v13, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 230
    :cond_16c
    return-void

    .line 140
    .end local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_16d
    sget-object v8, Lcom/nuance/swype/usagedata/UsageData$Screen;->GET_THEMES_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v8}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    goto :goto_107

    .line 186
    :cond_173
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_sku"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "sku":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "com.nuance.swype.input.settings.PopupDialogThemeActivity.Dialog_request"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->requestID:I

    .line 190
    sget-object v8, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "SKU selected: "

    aput-object v10, v9, v11

    aput-object v6, v9, v12

    const/4 v10, 0x2

    const-string/jumbo v11, " category id:"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 192
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v8

    if-eqz v8, :cond_1cf

    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;

    .line 193
    invoke-virtual {v8, v9, v6}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v8

    instance-of v8, v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v8, :cond_1cf

    .line 194
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 197
    :cond_1cf
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-nez v8, :cond_1d4

    .line 198
    const/4 v4, 0x0

    .line 200
    :cond_1d4
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v8, :cond_1e5

    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v8

    sget-object v9, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v8, v9, :cond_1e5

    .line 201
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->updateConnectDownloadableScreenContent()V

    .line 204
    :cond_1e5
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v8, :cond_1f1

    .line 205
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSku()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;

    .line 208
    :cond_1f1
    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v8, :cond_143

    iget-object v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    invoke-virtual {v8}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v8

    sget-object v9, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->CONNECT:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v8, v9, :cond_143

    .line 209
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 210
    .local v1, "connectTheme":Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;
    iget v8, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I

    iget v9, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->requestID:I

    invoke-direct {p0, v8, v1, v9}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setupDialog(ILcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;I)V

    .line 212
    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getType()I

    move-result v8

    sget-object v9, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->BUNDLE:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v9}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_143

    .line 213
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 214
    .restart local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v8, 0x0

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 215
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 216
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->purchaseItem()V

    goto/16 :goto_143
.end method

.method protected onStop()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 236
    sget-object v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onStop: buttonPressed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->buttonPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isChangingConfigurations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 237
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->isChangingConfigurations()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isFinishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 236
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 240
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->buttonPressed:Z

    if-nez v0, :cond_86

    .line 241
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_86

    .line 242
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 245
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v0, :cond_87

    iget-object v7, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 247
    .local v7, "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    :goto_54
    if-eqz v7, :cond_86

    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->isConnectTheme()Z

    move-result v0

    if-eqz v0, :cond_86

    check-cast v7, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    .line 248
    .end local v7    # "theme":Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    invoke-virtual {v7}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->getType()I

    move-result v0

    sget-object v1, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->KEYBOARD:Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;

    invoke-virtual {v1}, Lcom/nuance/connect/api/CatalogService$CatalogItem$Type;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_86

    .line 249
    sget-object v0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "It\'s KEYBOARD theme, so recordThemesPreview"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 250
    sget-object v1, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;->CANCEL:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;

    sget-object v2, Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;->SUCCESS:Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeSourceFragment:Ljava/lang/String;

    iget v5, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->viewIndex:I

    iget-object v6, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->recordThemesPreview(Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Action;Lcom/nuance/swype/usagedata/UsageDataEventThemesPreview$Result;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    :cond_86
    return-void

    .line 245
    :cond_87
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeCategory:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themesku:Ljava/lang/String;

    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/ThemeManager;->getSwypeTheme(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v7

    goto :goto_54
.end method

.method protected purchaseItem()V
    .registers 5

    .prologue
    .line 636
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    if-eqz v0, :cond_11

    .line 637
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->downloadableTheme:Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;

    const/16 v1, 0x2711

    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->mPurchaseFinishedListener:Lcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 638
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 637
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/nuance/swype/input/ThemeManager$ConnectDownloadableThemeWrapper;->purchase(Landroid/app/Activity;ILcom/nuance/swype/inapp/util/IabHelper$OnIabPurchaseFinishedListener;Landroid/content/Context;)V

    .line 640
    :cond_11
    return-void
.end method
