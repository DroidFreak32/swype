.class public Lcom/nuance/swype/input/store/ThemeTabHostManager;
.super Ljava/lang/Object;
.source "ThemeTabHostManager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;,
        Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;,
        Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;
    }
.end annotation


# static fields
.field public static final MAIN_TABS_TAG:Ljava/lang/String; = "maintabs"

.field private static final MSG_DELAY_SCROLL_VIEW_TABS:I = 0x186a0

.field public static final VIEWALL_TABS_TAG:Ljava/lang/String; = "viewalltabs"

.field private static currentCategoryTitle:Ljava/lang/String;

.field private static currentFragmentInfo:Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

.field private static doNotLogVisitCount:Z

.field private static final lock:Ljava/lang/Object;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private fm:Landroid/support/v4/app/FragmentManager;

.field private fragmentArea:Landroid/widget/FrameLayout;

.field private hScrollView:Landroid/widget/HorizontalScrollView;

.field handlerCallback:Landroid/os/Handler$Callback;

.field private isDestroyed:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mStoreWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

.field private mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

.field private mainTabsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field public themesStartPointTime:J

.field private viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

.field private viewAllTabsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "ThemeTabHostManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->doNotLogVisitCount:Z

    .line 61
    new-instance v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    invoke-direct {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentFragmentInfo:Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->themesStartPointTime:J

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabsList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabsList:Ljava/util/ArrayList;

    .line 830
    new-instance v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager$1;-><init>(Lcom/nuance/swype/input/store/ThemeTabHostManager;)V

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->handlerCallback:Landroid/os/Handler$Callback;

    .line 860
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mStoreWeak:Ljava/lang/ref/WeakReference;

    .line 83
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->fm:Landroid/support/v4/app/FragmentManager;

    .line 84
    new-instance v0, Lcom/nuance/swype/input/store/ThemePageAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/store/ThemePageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    .line 85
    new-instance v0, Lcom/nuance/swype/input/store/ThemePageAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/store/ThemePageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    .line 86
    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->initialiseTabHost()V

    .line 87
    return-void
.end method

.method private static AddTab(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "tabSpec"    # Landroid/widget/TabHost$TabSpec;

    .prologue
    .line 317
    new-instance v0, Lcom/nuance/swype/input/store/ThemeTabFactory;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/store/ThemeTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 318
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/store/ThemeTabHostManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/store/ThemeTabHostManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/store/ThemeTabHostManager;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/store/ThemeTabHostManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/store/ThemeTabHostManager;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/store/ThemeTabHostManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private checkTOS(I)Z
    .locals 4
    .param p1, "tabId"    # I

    .prologue
    const/4 v1, 0x0

    .line 524
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 528
    :cond_1
    const/4 v0, 0x0

    .line 529
    .local v0, "checked":Z
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->GET_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    .line 531
    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->ordinal()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 532
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showLegalRequirements(ZZLandroid/os/Bundle;)V

    .line 533
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getStore()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mStoreWeak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mStoreWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewAllAdapterReusable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 553
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    if-eqz v3, :cond_0

    .line 554
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 555
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 556
    .local v0, "fm":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lcom/nuance/swype/input/settings/ThemesFragment;

    if-eqz v3, :cond_1

    .line 557
    check-cast v0, Lcom/nuance/swype/input/settings/ThemesFragment;

    .end local v0    # "fm":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/ThemesFragment;->getAdapterThemeCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 564
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 554
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private recordCategoryBrowseTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "currentCategory"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 182
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    .line 183
    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    const/4 p1, 0x0

    .line 187
    :cond_0
    sget-object v3, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentCategoryTitle:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 188
    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentCategoryTitle:Ljava/lang/String;

    .line 190
    .local v2, "categoryName":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/Connect;->getCatalogService()Lcom/nuance/swypeconnect/ac/ACCatalogService;

    move-result-object v0

    .line 191
    .local v0, "catalogService":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    if-eqz v0, :cond_1

    .line 192
    sget-object v3, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentCategoryTitle:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/nuance/swypeconnect/ac/ACCatalogService;->getCategoryKeyForCategoryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "categoryKey":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    move-object v2, v1

    .line 198
    .end local v1    # "categoryKey":Ljava/lang/String;
    :cond_1
    iget-wide v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->themesStartPointTime:J

    sub-long v4, p2, v4

    invoke-static {v2, v4, v5}, Lcom/nuance/swype/usagedata/UsageData;->recordCategoryBrowse(Ljava/lang/String;J)V

    .line 201
    .end local v0    # "catalogService":Lcom/nuance/swypeconnect/ac/ACCatalogService;
    .end local v2    # "categoryName":Ljava/lang/String;
    :cond_2
    sput-object p1, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentCategoryTitle:Ljava/lang/String;

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->themesStartPointTime:J

    .line 203
    return-void
.end method

.method private refreshTabTitleColor(I)Ljava/lang/String;
    .locals 7
    .param p1, "currentTab"    # I

    .prologue
    .line 476
    const-string/jumbo v1, ""

    .line 477
    .local v1, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    if-nez v5, :cond_0

    .line 478
    const-string/jumbo v5, ""

    .line 499
    :goto_0
    return-object v5

    .line 480
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    .line 481
    .local v4, "widget":Landroid/widget/TabWidget;
    sget v5, Lcom/nuance/swype/input/R$drawable;->settings_tab_widget_divider:I

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->setDividerDrawable(I)V

    .line 482
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 483
    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 486
    .local v3, "v":Landroid/view/View;
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 487
    .local v2, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 490
    if-ne p1, v0, :cond_2

    .line 491
    sget v5, Lcom/nuance/swype/input/R$drawable;->settings_tab_widget_background_selected:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 492
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$color;->theme_tab_title_selected:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    :cond_2
    sget v5, Lcom/nuance/swype/input/R$drawable;->settings_tab_widget_background_normal:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 496
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$color;->theme_tab_title_unselected:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .end local v2    # "tv":Landroid/widget/TextView;
    .end local v3    # "v":Landroid/view/View;
    :cond_3
    move-object v5, v1

    .line 499
    goto :goto_0
.end method

.method private setCurrentTab(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "source"    # Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 103
    if-nez p1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->onPageSelected(I)V

    .line 106
    :cond_0
    return-void
.end method

.method private showLegalRequirements(ZZLandroid/os/Bundle;)V
    .locals 7
    .param p1, "tosRequired"    # Z
    .param p2, "optInRequired"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 336
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/SettingsV11;

    .line 337
    .local v1, "store":Lcom/nuance/swype/input/settings/SettingsV11;
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->isTosCurrentlyShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "showLegalRequirements...tosRequired: "

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "...optInRequired: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 340
    invoke-static {v1, p1, p2, p3}, Lcom/nuance/swype/connect/ConnectLegal;->getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 343
    const/16 v2, 0xc8

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->startActivityForResult(Landroid/content/Intent;I)V

    .line 344
    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/settings/SettingsV11;->setTosCurrentlyShown(Z)V

    .line 347
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateStoreUiProperties()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 503
    sget-object v1, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "updateStoreUiProperties..."

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 504
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 505
    .local v0, "store":Landroid/support/v4/app/FragmentActivity;
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeViewPager;->getCurrentItem()I

    move-result v1

    .line 508
    if-nez v1, :cond_0

    .line 509
    sget v1, Lcom/nuance/swype/input/R$string;->pref_menu_themes:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 514
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/store/ThemeViewPager;->setScrollDisabled(Z)V

    .line 521
    :goto_1
    return-void

    .line 511
    :cond_0
    sget v1, Lcom/nuance/swype/input/R$string;->store:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 517
    :cond_1
    sget v1, Lcom/nuance/swype/input/R$string;->view_all_content:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/store/ThemeViewPager;->setScrollDisabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isDestroyed:Z

    .line 91
    return-void
.end method

.method public getCurrentFragmentInfo()Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;
    .locals 1

    .prologue
    .line 544
    sget-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentFragmentInfo:Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    return-object v0
.end method

.method public getCurrentFragmentSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 775
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->fragmentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 776
    const-string/jumbo v0, "Bundle View Tab"

    .line 790
    :goto_0
    return-object v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 778
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 779
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isCurrentTabBuyThemes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    const-string/jumbo v0, "Get Themes Tab"

    goto :goto_0

    .line 783
    :cond_1
    const-string/jumbo v0, "My Themes Tab"

    goto :goto_0

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    const-string/jumbo v0, "Category View Tab"

    goto :goto_0

    .line 789
    :cond_3
    sget-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getCurrentFragmentSource: could not determine source, returning empty string"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 790
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    return v0
.end method

.method public hideTabHost()V
    .locals 6

    .prologue
    const v5, 0x186a0

    const/4 v4, 0x0

    .line 699
    sget-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "hideTabHost..."

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 701
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->recordCategoryBrowseTime(Ljava/lang/String;J)V

    .line 702
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->fragmentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 708
    :cond_1
    return-void
.end method

.method public highlightTitle(I)V
    .locals 6
    .param p1, "currentPos"    # I

    .prologue
    const/4 v5, 0x0

    .line 109
    sget-object v1, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "highlightTitle...currentPos: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/store/ThemeViewPager;->setCurrentItem(I)V

    .line 111
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 112
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->refreshTabTitleColor(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "title":Ljava/lang/String;
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->updateStoreUiProperties()V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->recordCategoryBrowseTime(Ljava/lang/String;J)V

    .line 115
    return-void
.end method

.method public initialiseTabHost()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 323
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 324
    .local v0, "store":Landroid/support/v4/app/FragmentActivity;
    sget v1, Lcom/nuance/swype/input/R$id;->viewpager:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/store/ThemeViewPager;

    iput-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    .line 325
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/store/ThemeViewPager;->setScrollDisabled(Z)V

    .line 326
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/store/ThemeViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 327
    sget v1, Lcom/nuance/swype/input/R$id;->content_frame:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->fragmentArea:Landroid/widget/FrameLayout;

    .line 328
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->fragmentArea:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->fragmentArea:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 330
    sget v1, Lcom/nuance/swype/input/R$id;->horizontalScrollView:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hScrollView:Landroid/widget/HorizontalScrollView;

    .line 331
    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    .line 332
    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    .line 333
    return-void
.end method

.method public isCurrentTabBuyThemes()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 659
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 660
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 661
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 662
    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "current is in buy themes."

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 663
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeViewPager;->getCurrentItem()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 669
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 663
    goto :goto_0

    .line 668
    :cond_1
    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "current is not in buy themes."

    aput-object v3, v0, v1

    invoke-interface {v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v0, v1

    .line 669
    goto :goto_0
.end method

.method public isDownloadableThemesDataAvailable()Z
    .locals 6

    .prologue
    .line 863
    const/4 v1, 0x1

    .line 864
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 4657
    .local v0, "mCatalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    iget-boolean v2, v0, Lcom/nuance/swype/inapp/CatalogManager;->mServiceEnabled:Z

    .line 865
    if-nez v2, :cond_0

    .line 866
    const/4 v1, 0x0

    .line 868
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->getAllSKUs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->getAllSKUs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 869
    :cond_1
    const/4 v1, 0x0

    .line 871
    :cond_2
    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "isDownloadableThemesDataAvailable...return: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 872
    return v1
.end method

.method public isMainTabActive()Z
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x1

    .line 678
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStoreActive()Z
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isTabHostShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentTab()I

    move-result v0

    sget-object v1, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->GET_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isViewAllTabActive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTabHostShown()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 654
    sget-object v3, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "isTabHostShown..."

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 654
    goto :goto_0

    :cond_1
    move v1, v2

    .line 655
    goto :goto_1
.end method

.method public isViewAllTabActive()Z
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const/4 v0, 0x1

    .line 687
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x186a0

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 718
    sget-object v3, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "onBackPressed..."

    aput-object v5, v4, v2

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 719
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 720
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 722
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 723
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->fragmentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 725
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 727
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    if-eqz v2, :cond_3

    .line 729
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentFragmentInfo:Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    .line 730
    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->getType()I

    move-result v2

    sget-object v3, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->BUNDLE_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 734
    :cond_1
    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentFragmentInfo:Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->getBundleSku()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentFragmentInfo:Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    .line 735
    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->getType()I

    move-result v2

    sget-object v3, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->BUNDLE_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 737
    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 740
    :cond_2
    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentFragmentInfo:Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->getSourceFragmentType()I

    move-result v2

    sget-object v3, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->BUY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 743
    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentFragmentInfo:Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showViewAllTabsList(Ljava/lang/String;)V

    .line 751
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/SettingsV11;

    .line 752
    .local v0, "store":Lcom/nuance/swype/input/settings/SettingsV11;
    invoke-virtual {v0, v8}, Lcom/nuance/swype/input/settings/SettingsV11;->setCurrentFragment(Landroid/support/v4/app/Fragment;)V

    .line 753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->themesStartPointTime:J

    .line 755
    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->getActionbarManager()Lcom/nuance/swype/input/store/ThemeActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeActionBarManager;->restoreActionBar()V

    .line 771
    .end local v0    # "store":Lcom/nuance/swype/input/settings/SettingsV11;
    :goto_1
    return v1

    .line 747
    :cond_4
    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->ON_BACK:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showMainTabsList(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V

    goto :goto_0

    .line 758
    :cond_5
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    .line 759
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 760
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 761
    goto :goto_1

    .line 762
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->themesStartPointTime:J

    .line 765
    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->ON_BACK:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showMainTabsList(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V

    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v8, v2, v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->recordCategoryBrowseTime(Ljava/lang/String;J)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 771
    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 244
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 10
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 249
    sget-object v6, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "onPageScrolled...arg0: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "...arg1: "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "...arg2: "

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 250
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v6}, Lcom/nuance/swype/input/store/ThemeViewPager;->getCurrentItem()I

    move-result v3

    .line 251
    .local v3, "pos":I
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    .line 252
    .local v4, "preTabPosition":I
    sget-object v6, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "onPageScrolled...pos: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "...preTabPosition: "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 253
    if-eq v3, v4, :cond_3

    const/4 v6, 0x1

    .line 254
    :goto_0
    if-eqz v6, :cond_4

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->checkTOS(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v6

    if-nez v6, :cond_4

    .line 255
    sget-object v6, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->MY_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    invoke-virtual {v6}, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->ordinal()I

    move-result v3

    .line 256
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v6

    if-eq v6, v3, :cond_0

    .line 257
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 259
    :cond_0
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v6}, Lcom/nuance/swype/input/store/ThemeViewPager;->getCurrentItem()I

    move-result v6

    if-eq v6, v4, :cond_1

    .line 260
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v6, v4}, Lcom/nuance/swype/input/store/ThemeViewPager;->setCurrentItem(I)V

    .line 287
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->setCatlogCallBackListener(I)V

    .line 288
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v6}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/store/ThemePageAdapter;

    .line 289
    .local v2, "pageAdapter":Lcom/nuance/swype/input/store/ThemePageAdapter;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getCount()I

    move-result v6

    if-le v6, v3, :cond_2

    .line 290
    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 291
    .local v1, "fm":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_2

    .line 292
    instance-of v6, v1, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;

    if-eqz v6, :cond_7

    move-object v6, v1

    check-cast v6, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;

    invoke-virtual {v6}, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;->getFragmentSource()I

    move-result v6

    sget-object v7, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->MY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    .line 293
    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 294
    check-cast v1, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;

    .end local v1    # "fm":Landroid/support/v4/app/Fragment;
    const-string/jumbo v6, "my_themes"

    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;->updateThemes(Ljava/lang/String;)V

    .line 300
    .end local v2    # "pageAdapter":Lcom/nuance/swype/input/store/ThemePageAdapter;
    :cond_2
    :goto_2
    return-void

    .line 253
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 263
    :cond_4
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 266
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 267
    .local v5, "width":I
    if-lez v5, :cond_2

    .line 270
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getDisplayWidth()I

    move-result v6

    .line 271
    div-int v0, v6, v5

    .line 272
    .local v0, "availableTabCount":I
    sget-object v6, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "onPageScrolled...tab width:  "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "...availableTabCount: "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "...mTabHost.getTabWidget().getChildCount(): "

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    .line 273
    invoke-virtual {v9}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 272
    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 275
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 276
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v7, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v3

    mul-int/2addr v7, v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 280
    :goto_3
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v6

    if-eq v6, v3, :cond_5

    .line 281
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 283
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->updateStoreUiProperties()V

    goto/16 :goto_1

    .line 278
    :cond_6
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hScrollView:Landroid/widget/HorizontalScrollView;

    mul-int v7, v3, v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_3

    .line 295
    .end local v0    # "availableTabCount":I
    .end local v5    # "width":I
    .restart local v1    # "fm":Landroid/support/v4/app/Fragment;
    .restart local v2    # "pageAdapter":Lcom/nuance/swype/input/store/ThemePageAdapter;
    :cond_7
    instance-of v6, v1, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    if-eqz v6, :cond_2

    .line 296
    check-cast v1, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    .end local v1    # "fm":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;->updateThemes()V

    goto/16 :goto_2
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 304
    sget-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onPageSelected...pos: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isMainTabActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->doNotLogVisitCount:Z

    if-nez v0, :cond_0

    .line 306
    sget-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->MY_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 307
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->MY_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->GET_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 310
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 11
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const v10, 0x186a0

    const/4 v9, 0x1

    .line 119
    iget-boolean v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isDestroyed:Z

    if-eqz v5, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    if-nez v5, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->initialiseTabHost()V

    .line 125
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    .line 126
    .local v1, "pos":I
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->checkTOS(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v5

    if-nez v5, :cond_3

    .line 127
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    sget-object v6, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->MY_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    invoke-virtual {v6}, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 128
    sget-object v5, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->MY_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    invoke-virtual {v5}, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->ordinal()I

    move-result v1

    .line 131
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 132
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 137
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-ne v1, v9, :cond_5

    .line 138
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/settings/SettingsV11;

    .line 139
    .local v3, "store":Lcom/nuance/swype/input/settings/SettingsV11;
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/nuance/swype/input/settings/SettingsV11;->showNotAvailableDialogForGoogleTrial(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/SettingsV11;->showNetworkFailureDialog()Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    .end local v3    # "store":Lcom/nuance/swype/input/settings/SettingsV11;
    :cond_5
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/store/ThemeViewPager;->getCurrentItem()I

    move-result v2

    .line 150
    .local v2, "preTabPosition":I
    if-eq v2, v1, :cond_6

    .line 151
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v5, v1, v9}, Lcom/nuance/swype/input/store/ThemeViewPager;->setCurrentItem(IZ)V

    .line 154
    :cond_6
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->refreshTabTitleColor(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "title":Ljava/lang/String;
    sget-object v5, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "onTabChanged...refreshTabTitle: "

    aput-object v8, v6, v7

    aput-object v4, v6, v9

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->updateStoreUiProperties()V

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {p0, v4, v6, v7}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->recordCategoryBrowseTime(Ljava/lang/String;J)V

    .line 160
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->setCatlogCallBackListener(I)V

    .line 162
    if-eq v2, v1, :cond_0

    .line 163
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 164
    .local v0, "msg":Landroid/os/Message;
    iput v10, v0, Landroid/os/Message;->what:I

    .line 165
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 166
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 167
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 168
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    :cond_7
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x32

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onUserLeaveHint()V
    .locals 4

    .prologue
    .line 712
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 713
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->recordCategoryBrowseTime(Ljava/lang/String;J)V

    .line 715
    :cond_0
    return-void
.end method

.method public refreshMainTabsList()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    iget-object v1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/store/ThemeViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 351
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v1, "maintabs"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/store/ThemePageAdapter;->setCurrentFragments(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeViewPager;->invalidate()V

    .line 353
    return-void
.end method

.method public setCatlogCallBackListener(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 206
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    if-nez v3, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/store/ThemePageAdapter;

    .line 210
    .local v2, "pageAdapter":Lcom/nuance/swype/input/store/ThemePageAdapter;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getCount()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 212
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getRegisteredFragmentByCategory(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 219
    .local v0, "fm":Landroid/support/v4/app/Fragment;
    :goto_1
    if-eqz v0, :cond_0

    .line 220
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 221
    .local v1, "mCatalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->setUpService()V

    .line 223
    instance-of v3, v0, Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;

    if-eqz v3, :cond_3

    .line 224
    check-cast v0, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    .end local v0    # "fm":Landroid/support/v4/app/Fragment;
    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->BUNDLE:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    invoke-virtual {v1, v0, v3}, Lcom/nuance/swype/inapp/CatalogManager;->setCatalogCallBackListener(Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;)V

    goto :goto_0

    .line 217
    .end local v1    # "mCatalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_2
    invoke-virtual {v2, p1}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .restart local v0    # "fm":Landroid/support/v4/app/Fragment;
    goto :goto_1

    .line 225
    .restart local v1    # "mCatalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_3
    instance-of v3, v0, Lcom/nuance/swype/input/settings/ThemesFragment;

    if-eqz v3, :cond_5

    .line 226
    instance-of v3, v0, Lcom/nuance/swype/input/store/ThemeFragmentController$MyThemesFragment;

    if-eqz v3, :cond_4

    .line 227
    sget-object v3, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "my themes"

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move-object v3, v0

    .line 228
    check-cast v3, Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/ThemesFragment;->setCurrentTheme()V

    .line 229
    check-cast v0, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    .end local v0    # "fm":Landroid/support/v4/app/Fragment;
    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->MY_THEMES:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    invoke-virtual {v1, v0, v3}, Lcom/nuance/swype/inapp/CatalogManager;->setCatalogCallBackListener(Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;)V

    goto :goto_0

    .line 232
    .restart local v0    # "fm":Landroid/support/v4/app/Fragment;
    :cond_4
    check-cast v0, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    .end local v0    # "fm":Landroid/support/v4/app/Fragment;
    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    invoke-virtual {v1, v0, v3}, Lcom/nuance/swype/inapp/CatalogManager;->setCatalogCallBackListener(Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;)V

    goto :goto_0

    .line 234
    .restart local v0    # "fm":Landroid/support/v4/app/Fragment;
    :cond_5
    instance-of v3, v0, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    if-eqz v3, :cond_0

    .line 235
    check-cast v0, Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;

    .end local v0    # "fm":Landroid/support/v4/app/Fragment;
    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    invoke-virtual {v1, v0, v3}, Lcom/nuance/swype/inapp/CatalogManager;->setCatalogCallBackListener(Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;)V

    goto :goto_0
.end method

.method public showMainTabsList(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V
    .locals 11
    .param p1, "tabId"    # I
    .param p2, "source"    # Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 404
    sget-object v4, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "showMainTabsList...tabId: "

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "...source: "

    aput-object v6, v5, v9

    const/4 v6, 0x3

    aput-object p2, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 405
    sget-object v5, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentFragmentInfo:Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    if-ne p1, v8, :cond_0

    sget-object v4, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->BUY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    .line 406
    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v4

    .line 405
    :goto_0
    invoke-virtual {v5, v4, v10, v10}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->initialize(ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 411
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showOnlyMyThemesTab(Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V

    .line 473
    :goto_1
    return-void

    .line 406
    :cond_0
    sget-object v4, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->MY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    .line 407
    invoke-virtual {v4}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v4

    goto :goto_0

    .line 415
    :cond_1
    sget-object v4, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->CATALOG_CALLBACK:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    if-ne p2, v4, :cond_2

    .line 416
    sput-boolean v8, Lcom/nuance/swype/input/store/ThemeTabHostManager;->doNotLogVisitCount:Z

    .line 422
    :goto_2
    sget-object v4, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->ON_BACK:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    if-ne p2, v4, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    .line 423
    invoke-virtual {v4}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getCount()I

    move-result v4

    if-ne v4, v9, :cond_4

    .line 424
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/store/ThemeViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 425
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 426
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 427
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost$TabSpec;

    .line 428
    .local v3, "spec":Landroid/widget/TabHost$TabSpec;
    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_3

    .line 419
    .end local v3    # "spec":Landroid/widget/TabHost$TabSpec;
    :cond_2
    sput-boolean v7, Lcom/nuance/swype/input/store/ThemeTabHostManager;->doNotLogVisitCount:Z

    goto :goto_2

    .line 430
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 431
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    .line 432
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 431
    invoke-static {v4, v5}, Lcom/nuance/swype/input/store/ThemeFragmentController;->newInstance(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)Lcom/nuance/swype/input/store/ThemeFragmentController;

    move-result-object v4

    sget-object v5, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->ON_BACK:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    .line 432
    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/store/ThemeFragmentController;->getMainTabThemeFragments(Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)Ljava/util/List;

    move-result-object v0

    .line 433
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v5, "maintabs"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/swype/input/store/ThemePageAdapter;->addFragments(Ljava/lang/String;Ljava/util/List;)V

    .line 434
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v5, "maintabs"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/store/ThemePageAdapter;->setCurrentFragments(Ljava/lang/String;)V

    .line 435
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 437
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->refreshTabTitleColor(I)Ljava/lang/String;

    .line 438
    sget-object v4, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "showMainTabsList...mainTabsList not empty...refreshTabTitle"

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 439
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->updateStoreUiProperties()V

    goto/16 :goto_1

    .line 442
    .end local v0    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    :cond_4
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 443
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/store/ThemeViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 444
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 445
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 447
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v5, "myThemes"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->store_my_themes:I

    .line 448
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 447
    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 449
    .local v2, "myThemesspec":Landroid/widget/TabHost$TabSpec;
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v5, "getThemes"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    sget v6, Lcom/nuance/swype/input/R$string;->get_themes:I

    .line 450
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 449
    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 451
    .local v1, "getThemesspec":Landroid/widget/TabHost$TabSpec;
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v4, v5, v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->AddTab(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 452
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v4, v5, v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->AddTab(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 453
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 459
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    .line 460
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 459
    invoke-static {v4, v5}, Lcom/nuance/swype/input/store/ThemeFragmentController;->newInstance(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)Lcom/nuance/swype/input/store/ThemeFragmentController;

    move-result-object v4

    sget-object v5, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->INIT:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    .line 460
    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/store/ThemeFragmentController;->getMainTabThemeFragments(Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)Ljava/util/List;

    move-result-object v0

    .line 461
    .restart local v0    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v5, "maintabs"

    invoke-virtual {v4, v5, v0}, Lcom/nuance/swype/input/store/ThemePageAdapter;->addFragments(Ljava/lang/String;Ljava/util/List;)V

    .line 462
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v5, "maintabs"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/store/ThemePageAdapter;->setCurrentFragments(Ljava/lang/String;)V

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->setCurrentTab(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V

    .line 465
    sget-object v4, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->CATALOG_CALLBACK:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    if-ne p2, v4, :cond_5

    .line 466
    sput-boolean v7, Lcom/nuance/swype/input/store/ThemeTabHostManager;->doNotLogVisitCount:Z

    .line 469
    :cond_5
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->refreshTabTitleColor(I)Ljava/lang/String;

    .line 470
    sget-object v4, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "showMainTabsList...mainTabsList empty...refreshTabTitle"

    aput-object v6, v5, v7

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 471
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->updateStoreUiProperties()V

    .line 472
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->setCatlogCallBackListener(I)V

    goto/16 :goto_1
.end method

.method public showOnlyMyThemesTab(Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V
    .locals 8
    .param p1, "source"    # Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 356
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 357
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/store/ThemeViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 358
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 359
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 360
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost$TabSpec;

    .line 361
    .local v2, "spec":Landroid/widget/TabHost$TabSpec;
    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    .line 363
    .end local v2    # "spec":Landroid/widget/TabHost$TabSpec;
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 364
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v4, "maintabs"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/store/ThemePageAdapter;->setCurrentFragments(Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, v6, p1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->setCurrentTab(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V

    .line 366
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    invoke-virtual {v3, p0}, Lcom/nuance/swype/input/store/ThemeViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 367
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 368
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 370
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 373
    :cond_1
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->refreshTabTitleColor(I)Ljava/lang/String;

    .line 374
    sget-object v3, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "showOnlyMyThemesTab...mainTabsList not empty...refreshTabTitle"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 375
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->updateStoreUiProperties()V

    .line 401
    :goto_1
    return-void

    .line 378
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/store/ThemeViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 379
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 380
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 382
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v4, "myThemes"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    sget v5, Lcom/nuance/swype/input/R$string;->store_my_themes:I

    .line 383
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 385
    .local v1, "myThemesspec":Landroid/widget/TabHost$TabSpec;
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v3, v4, v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->AddTab(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 386
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 391
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    .line 392
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 391
    invoke-static {v3, v4}, Lcom/nuance/swype/input/store/ThemeFragmentController;->newInstance(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)Lcom/nuance/swype/input/store/ThemeFragmentController;

    move-result-object v3

    .line 392
    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/store/ThemeFragmentController;->getMyThemesFragment(Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)Ljava/util/List;

    move-result-object v0

    .line 393
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v4, "maintabs"

    invoke-virtual {v3, v4, v0}, Lcom/nuance/swype/input/store/ThemePageAdapter;->addFragments(Ljava/lang/String;Ljava/util/List;)V

    .line 394
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mainTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v4, "maintabs"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/store/ThemePageAdapter;->setCurrentFragments(Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, v6, p1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->setCurrentTab(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V

    .line 396
    iget-object v3, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 398
    invoke-direct {p0, v6}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->refreshTabTitleColor(I)Ljava/lang/String;

    .line 399
    sget-object v3, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "showOnlyMyThemesTab...mainTabsList empty...refreshTabTitle"

    aput-object v5, v4, v6

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 400
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->updateStoreUiProperties()V

    goto :goto_1
.end method

.method public showTabHost()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 691
    sget-object v0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "showTabHost..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 692
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 693
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->fragmentArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 697
    :cond_0
    return-void
.end method

.method public showViewAllTabsList(Ljava/lang/String;)V
    .locals 14
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 568
    sget-object v9, Lcom/nuance/swype/input/store/ThemeTabHostManager;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 569
    :try_start_0
    sget-object v8, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentCategoryTitle:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 570
    sput-object p1, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentCategoryTitle:Ljava/lang/String;

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->themesStartPointTime:J

    .line 573
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    sget-object v8, Lcom/nuance/swype/usagedata/UsageData$Screen;->CATEGORY_PAGE_PREVIEW:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v8}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 576
    sget-object v8, Lcom/nuance/swype/input/store/ThemeTabHostManager;->currentFragmentInfo:Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    sget-object v9, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->VIEW_ALL_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p1, v10}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->initialize(ILjava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/nuance/swype/input/ThemeManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/ThemeManager;

    move-result-object v8

    .line 579
    iget-object v9, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/ThemeManager;->getThemeCategoryItemList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 580
    .local v0, "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/inapp/CategoryItem;>;"
    if-nez v0, :cond_1

    .line 651
    :goto_0
    return-void

    .line 573
    .end local v0    # "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/inapp/CategoryItem;>;"
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 584
    .restart local v0    # "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/inapp/CategoryItem;>;"
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isViewAllAdapterReusable()Z

    move-result v4

    .line 585
    .local v4, "reuseable":Z
    if-eqz v4, :cond_6

    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabsList:Ljava/util/ArrayList;

    .line 586
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    .line 588
    invoke-virtual {v8}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getCount()I

    move-result v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 589
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    iget-object v9, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/store/ThemeViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 590
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8, v12}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 591
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 592
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost$TabSpec;

    .line 593
    .local v5, "spec":Landroid/widget/TabHost$TabSpec;
    iget-object v9, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v9, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_1

    .line 595
    .end local v5    # "spec":Landroid/widget/TabHost$TabSpec;
    :cond_2
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 598
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v9, "viewalltabs"

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/store/ThemePageAdapter;->setCurrentFragments(Ljava/lang/String;)V

    .line 600
    const/4 v7, 0x0

    .line 601
    .local v7, "tabIndex":I
    const/4 v1, 0x0

    .line 602
    .local v1, "currentIndex":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/inapp/CategoryItem;

    .line 1024
    iget-object v8, v8, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    .line 603
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 604
    move v1, v7

    .line 609
    :cond_3
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 610
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 612
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/input/store/ThemePageAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 614
    :cond_4
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->refreshTabTitleColor(I)Ljava/lang/String;

    .line 615
    sget-object v8, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v9, v13, [Ljava/lang/Object;

    const-string/jumbo v10, "showViewAllTabsList...viewAllTabsList not empty...refreshTabTitle"

    aput-object v10, v9, v12

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 616
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->updateStoreUiProperties()V

    goto/16 :goto_0

    .line 607
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 608
    goto :goto_2

    .line 619
    .end local v1    # "currentIndex":I
    .end local v7    # "tabIndex":I
    :cond_6
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mViewPager:Lcom/nuance/swype/input/store/ThemeViewPager;

    iget-object v9, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/store/ThemeViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 620
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 621
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 623
    const/4 v7, 0x0

    .line 624
    .restart local v7    # "tabIndex":I
    const/4 v1, 0x0

    .line 625
    .restart local v1    # "currentIndex":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/inapp/CategoryItem;

    .line 2024
    .local v3, "item":Lcom/nuance/swype/inapp/CategoryItem;
    iget-object v9, v3, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    .line 626
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 627
    move v1, v7

    .line 629
    :cond_7
    iget-object v9, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    .line 3024
    iget-object v10, v3, Lcom/nuance/swype/inapp/CategoryItem;->categoryId:Ljava/lang/String;

    .line 629
    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    .line 4020
    iget-object v10, v3, Lcom/nuance/swype/inapp/CategoryItem;->title:Ljava/lang/String;

    .line 629
    invoke-virtual {v9, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 631
    .local v6, "tab":Landroid/widget/TabHost$TabSpec;
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v9, v10, v6}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->AddTab(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 632
    iget-object v9, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabsList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v7, v7, 0x1

    .line 634
    goto :goto_3

    .line 636
    .end local v3    # "item":Lcom/nuance/swype/inapp/CategoryItem;
    .end local v6    # "tab":Landroid/widget/TabHost$TabSpec;
    :cond_8
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 639
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mContext:Landroid/content/Context;

    .line 640
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getStore()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    .line 639
    invoke-static {v8, v9}, Lcom/nuance/swype/input/store/ThemeFragmentController;->newInstance(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)Lcom/nuance/swype/input/store/ThemeFragmentController;

    move-result-object v8

    .line 640
    invoke-virtual {v8, v4}, Lcom/nuance/swype/input/store/ThemeFragmentController;->getViewAllTabThemeFragments(Z)Ljava/util/List;

    move-result-object v2

    .line 641
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v9, "viewalltabs"

    invoke-virtual {v8, v9, v2}, Lcom/nuance/swype/input/store/ThemePageAdapter;->addFragments(Ljava/lang/String;Ljava/util/List;)V

    .line 642
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    const-string/jumbo v9, "viewalltabs"

    invoke-virtual {v8, v9}, Lcom/nuance/swype/input/store/ThemePageAdapter;->setCurrentFragments(Ljava/lang/String;)V

    .line 644
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->viewAllTabPageAdapter:Lcom/nuance/swype/input/store/ThemePageAdapter;

    invoke-virtual {v8}, Lcom/nuance/swype/input/store/ThemePageAdapter;->notifyDataSetChanged()V

    .line 645
    iget-object v8, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 646
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->refreshTabTitleColor(I)Ljava/lang/String;

    .line 647
    sget-object v8, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v9, v13, [Ljava/lang/Object;

    const-string/jumbo v10, "showViewAllTabsList...viewAllTabsList empty...refreshTabTitle"

    aput-object v10, v9, v12

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 648
    invoke-direct {p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->updateStoreUiProperties()V

    .line 650
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->setCatlogCallBackListener(I)V

    goto/16 :goto_0
.end method
