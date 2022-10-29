.class public Lcom/nuance/swype/input/settings/SettingsV11;
.super Landroid/support/v4/app/FragmentActivity;
.source "SettingsV11.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;,
        Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;,
        Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;,
        Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;
    }
.end annotation


# static fields
.field private static final DELAY_OPEN_DRAWER_AUTOMATICALLY:I = 0x2710

.field public static INSTANCE_COUNT:Ljava/lang/Integer; = null

.field private static final REQUEST_ADDING_GOOGLE_ACCOUNT:I = 0x64

.field public static final REQUEST_CODE_TOS:I = 0xc8

.field private static final STATE_CURRENT_FRAGMENT:Ljava/lang/String; = "current_fragment"

.field private static final STATE_SELECTED_POSITION:Ljava/lang/String; = "selected_navigation_drawer_position"

.field private static final STATE_SELECTED_SETTING_FRAGMENT:Ljava/lang/String; = "selected_setting_fragment"

.field private static final SWYPE_SETTINGS_PERMISSION_REQUESTED:Ljava/lang/String; = "swype_settings_permission_requested"

.field public static final TAB_BUNDLE_VIEW:Ljava/lang/String; = "Bundle View Tab"

.field public static final TAB_CATEGORY_VIEW:Ljava/lang/String; = "Category View Tab"

.field public static final TAB_GET_THEMES:Ljava/lang/String; = "Get Themes Tab"

.field public static final TAB_MY_THEMES:Ljava/lang/String; = "My Themes Tab"

.field private static final THEME_FRAGMENT_BUNDLE_SKU:Ljava/lang/String; = "theme_fragment_bundle_sku"

.field private static final THEME_FRAGMENT_CATEGORY:Ljava/lang/String; = "theme_fragment_category"

.field private static final THEME_FRAGMENT_TYPE:Ljava/lang/String; = "theme_fragment_type"

.field private static final THEME_TAB_POSITION:Ljava/lang/String; = "theme_tab_position"

.field private static final TOS_CURRENTLY_SHOWN:Ljava/lang/String; = "tos_currently_shown"

.field private static drawerItemsDefaultPosition:I

.field private static isTablet_720DP:Z

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static sRunning:Z


# instance fields
.field private final SettingsCallback:Landroid/os/Handler$Callback;

.field private actionbarManager:Lcom/nuance/swype/input/store/ThemeActionBarManager;

.field private adapter:Lcom/nuance/swype/widget/CustomDrawerAdapter;

.field private currentFragment:Landroid/support/v4/app/Fragment;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/widget/DrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private isActivityResultReturned:Z

.field private isEnterMainStore:Z

.field private isPaused:Z

.field private isPermissionRequested:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCurrentSelectedPosition:I

.field private mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;

.field private mDrawerList:Landroid/widget/ListView;

.field private mDrawerTitles:[Ljava/lang/String;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mNetworkStateReceiver:Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;

.field private mPreviousScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

.field private final mSettingsHandler:Landroid/os/Handler;

.field private mTitle:Ljava/lang/CharSequence;

.field private onKeyUpListener:Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;

.field private selectedSettingFragment:Landroid/support/v4/app/Fragment;

.field private shouldBackToStore:Z

.field private tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

.field private tosCurrentlyShown:Z

.field private updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const-string/jumbo v0, "SettingsV11"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 106
    const/4 v0, -0x1

    sput v0, Lcom/nuance/swype/input/settings/SettingsV11;->drawerItemsDefaultPosition:I

    .line 109
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->INSTANCE_COUNT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isPermissionRequested:Z

    .line 1180
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$8;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/SettingsV11$8;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->SettingsCallback:Landroid/os/Handler$Callback;

    .line 1196
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->SettingsCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mSettingsHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/SettingsV11;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->isStoreShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/settings/SettingsV11;)Lcom/nuance/swype/input/settings/HackyDrawerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/SettingsV11;)Lcom/nuance/swype/usagedata/UsageData$Screen;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mPreviousScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/settings/SettingsV11;Lcom/nuance/swype/usagedata/UsageData$Screen;)Lcom/nuance/swype/usagedata/UsageData$Screen;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;
    .param p1, "x1"    # Lcom/nuance/swype/usagedata/UsageData$Screen;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mPreviousScreen:Lcom/nuance/swype/usagedata/UsageData$Screen;

    return-object p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/SettingsV11;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/SettingsV11;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->showMyThemesTab()V

    return-void
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/SettingsV11;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/settings/SettingsV11;I)I
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SettingsV11;->drawerIndexToArrayIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/settings/SettingsV11;Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;
    .param p1, "x1"    # Lcom/nuance/swype/widget/DrawerItem;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$902(Lcom/nuance/swype/input/settings/SettingsV11;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SettingsV11;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    return p1
.end method

.method private calculateSelectedPosition(Ljava/lang/CharSequence;)I
    .registers 5
    .param p1, "fragmentName"    # Ljava/lang/CharSequence;

    .prologue
    .line 978
    const/4 v1, -0x1

    .line 979
    .local v1, "selectedPosition":I
    if-eqz p1, :cond_14

    .line 980
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerTitles:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_14

    .line 981
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerTitles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 982
    move v1, v0

    .line 987
    .end local v0    # "i":I
    :cond_14
    return v1

    .line 980
    .restart local v0    # "i":I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private createTabHostManager(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->isTabHostSupported()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 283
    new-instance v9, Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, p0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    .line 285
    :cond_11
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 287
    .local v1, "data":Landroid/os/Bundle;
    if-nez p1, :cond_115

    .line 288
    if-eqz v1, :cond_b8

    .line 289
    const-string/jumbo v9, ":android:show_fragment"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "fragmentName":Ljava/lang/String;
    sget-object v9, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "createTabHostManager...fragmentName..."

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 291
    if-eqz v3, :cond_54

    .line 293
    const-class v9, Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 294
    const/4 v9, 0x0

    sget-object v10, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Themes:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v10}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    .line 295
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    .line 396
    .end local v3    # "fragmentName":Ljava/lang/String;
    :cond_54
    :goto_54
    return-void

    .line 296
    .restart local v3    # "fragmentName":Ljava/lang/String;
    :cond_55
    const-class v9, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 297
    const/4 v9, 0x0

    sget-object v10, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v10}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    .line 298
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    goto :goto_54

    .line 300
    :cond_70
    const/4 v0, 0x0

    .line 302
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_71
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_71 .. :try_end_74} :catch_ad

    move-result-object v0

    .line 308
    :goto_75
    const/4 v5, 0x0

    .line 310
    .local v5, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_7c

    .line 311
    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/InstantiationException; {:try_start_78 .. :try_end_7b} :catch_b2
    .catch Ljava/lang/IllegalAccessException; {:try_start_78 .. :try_end_7b} :catch_20d

    move-result-object v5

    .end local v5    # "obj":Ljava/lang/Object;
    :cond_7c
    move-object v2, v5

    .line 316
    :goto_7d
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v9, :cond_86

    .line 317
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v9}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hideTabHost()V

    .line 319
    :cond_86
    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 320
    .local v2, "frag":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    .line 321
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$id;->content_frame:I

    invoke-virtual {v9, v10, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 322
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->setCurrentFragment(Landroid/support/v4/app/Fragment;)V

    .line 323
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getFragmentTitle(Landroid/support/v4/app/Fragment;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 324
    .local v7, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    invoke-direct {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->calculateSelectedPosition(Ljava/lang/CharSequence;)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 326
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    goto :goto_54

    .line 305
    .end local v2    # "frag":Landroid/support/v4/app/Fragment;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :catch_ad
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_75

    .line 314
    .restart local v5    # "obj":Ljava/lang/Object;
    :catch_b2
    move-exception v9

    :goto_b3
    invoke-virtual {v9}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    move-object v2, v5

    goto :goto_7d

    .line 331
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "fragmentName":Ljava/lang/String;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_b8
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v8

    .line 332
    .local v8, "util":Lcom/nuance/swype/input/PlatformUtil;
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v9

    if-eqz v9, :cond_109

    .line 333
    invoke-virtual {v8}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v9

    if-eqz v9, :cond_102

    sget-object v9, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    .line 334
    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v9

    .line 333
    :goto_d6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 335
    .local v6, "position":Ljava/lang/Integer;
    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    .line 339
    .end local v6    # "position":Ljava/lang/Integer;
    :goto_e3
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/UserPreferences;->isDrawerAutomaticallyOpenedOnce()Z

    move-result v9

    if-nez v9, :cond_fa

    .line 340
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mSettingsHandler:Landroid/os/Handler;

    const/16 v10, 0x2710

    const-wide/16 v12, 0x32

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 342
    :cond_fa
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    goto/16 :goto_54

    .line 334
    :cond_102
    sget-object v9, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Themes:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v9

    goto :goto_d6

    .line 337
    :cond_109
    const/4 v9, 0x0

    sget-object v10, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v10}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    goto :goto_e3

    .line 345
    .end local v8    # "util":Lcom/nuance/swype/input/PlatformUtil;
    :cond_115
    if-eqz v1, :cond_14a

    .line 346
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    .line 347
    const-string/jumbo v9, ":android:show_fragment"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .restart local v3    # "fragmentName":Ljava/lang/String;
    if-eqz v3, :cond_138

    .line 349
    const-class v9, Lcom/nuance/swype/input/settings/ThemesFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13d

    .line 350
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    .line 354
    :cond_138
    :goto_138
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItemByRecord(Landroid/os/Bundle;)V

    goto/16 :goto_54

    .line 352
    :cond_13d
    const-class v9, Lcom/nuance/swype/input/settings/ThemesCategoryFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    goto :goto_138

    .line 356
    .end local v3    # "fragmentName":Ljava/lang/String;
    :cond_14a
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-nez v9, :cond_159

    .line 357
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    .line 358
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItemByRecord(Landroid/os/Bundle;)V

    goto/16 :goto_54

    .line 360
    :cond_159
    const-string/jumbo v9, "theme_fragment_type"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 361
    .local v4, "fragmentType":I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_16e

    .line 363
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    .line 364
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItemByRecord(Landroid/os/Bundle;)V

    goto/16 :goto_54

    .line 368
    :cond_16e
    sget-object v9, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->MY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v9

    if-eq v4, v9, :cond_17e

    sget-object v9, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->BUY_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    .line 369
    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v9

    if-ne v4, v9, :cond_189

    .line 370
    :cond_17e
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItemByRecord(Landroid/os/Bundle;)V

    .line 391
    :cond_181
    :goto_181
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    goto/16 :goto_54

    .line 371
    :cond_189
    sget-object v9, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->VIEW_ALL_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v9

    if-ne v4, v9, :cond_1c4

    .line 372
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v9}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isDownloadableThemesDataAvailable()Z

    move-result v9

    if-nez v9, :cond_1a8

    .line 373
    const/4 v9, 0x0

    iput v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 374
    const/4 v9, 0x0

    sget-object v10, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v10}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    goto :goto_181

    .line 376
    :cond_1a8
    const-string/jumbo v9, "selected_navigation_drawer_position"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 377
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/nuance/swype/input/store/ThemeFragmentController;->newInstance(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)Lcom/nuance/swype/input/store/ThemeFragmentController;

    move-result-object v9

    const-string/jumbo v10, "theme_fragment_category"

    .line 378
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, p0}, Lcom/nuance/swype/input/store/ThemeFragmentController;->ShowViewAllTabFragments(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_181

    .line 380
    :cond_1c4
    sget-object v9, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->BUNDLE_THEMES:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    invoke-virtual {v9}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v9

    if-ne v4, v9, :cond_181

    .line 381
    iget-object v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v9}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isDownloadableThemesDataAvailable()Z

    move-result v9

    if-nez v9, :cond_1e3

    .line 382
    const/4 v9, 0x0

    iput v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 383
    const/4 v9, 0x0

    sget-object v10, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v10}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    goto :goto_181

    .line 385
    :cond_1e3
    const-string/jumbo v9, "selected_navigation_drawer_position"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 386
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/nuance/swype/input/store/ThemeFragmentController;->newInstance(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;)Lcom/nuance/swype/input/store/ThemeFragmentController;

    move-result-object v9

    const-string/jumbo v10, "theme_fragment_category"

    .line 387
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "theme_fragment_bundle_sku"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->FRAGMENT_NONE:Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;

    .line 388
    invoke-virtual {v12}, Lcom/nuance/swype/input/settings/ThemesFragment$FRAGMENT_SOURCE;->ordinal()I

    move-result v12

    .line 387
    invoke-virtual {v9, v10, v11, v12, p0}, Lcom/nuance/swype/input/store/ThemeFragmentController;->ShowBundleFragments(Ljava/lang/String;Ljava/lang/String;ILandroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_181

    .line 314
    .end local v4    # "fragmentType":I
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "fragmentName":Ljava/lang/String;
    .restart local v5    # "obj":Ljava/lang/Object;
    :catch_20d
    move-exception v9

    goto/16 :goto_b3
.end method

.method private drawerIndexToArrayIndex(I)I
    .registers 7
    .param p1, "drawerIndex"    # I

    .prologue
    .line 1205
    move v0, p1

    .line 1206
    .local v0, "index":I
    if-gez p1, :cond_19

    .line 1207
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "drawerIndexToArrayIndex...error drawer index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1208
    const/4 v0, 0x0

    .line 1210
    :cond_19
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 1211
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    .line 1212
    .local v1, "isChinese":Z
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1213
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Chinese_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v2

    if-lt v0, v2, :cond_37

    if-nez v1, :cond_37

    .line 1214
    add-int/lit8 v0, v0, 0x1

    .line 1223
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerTitles:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_62

    .line 1224
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "drawerIndexToArrayIndex...drawerIndex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "...error array index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 1225
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v0

    .line 1227
    :cond_62
    return v0

    .line 1218
    :cond_63
    add-int/lit8 v0, v0, 0x1

    .line 1219
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Chinese_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v2

    if-lt v0, v2, :cond_37

    if-nez v1, :cond_37

    .line 1220
    add-int/lit8 v0, v0, 0x1

    goto :goto_37
.end method

.method private getEmbeddedThemesCount()I
    .registers 4

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeManager()Lcom/nuance/swype/input/ThemeManager;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "no_category_id"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/ThemeManager;->getCategoryThemes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getFragmentTitle(Landroid/support/v4/app/Fragment;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 990
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mTitle:Ljava/lang/CharSequence;

    .line 991
    .local v0, "title":Ljava/lang/CharSequence;
    instance-of v1, p1, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    if-eqz v1, :cond_d

    .line 992
    sget v1, Lcom/nuance/swype/input/R$string;->pref_connect_settings:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1006
    :cond_c
    :goto_c
    return-object v0

    .line 993
    :cond_d
    instance-of v1, p1, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    if-eqz v1, :cond_18

    .line 994
    sget v1, Lcom/nuance/swype/input/R$string;->settings_swype_chinese:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 995
    :cond_18
    instance-of v1, p1, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    if-eqz v1, :cond_23

    .line 996
    sget v1, Lcom/nuance/swype/input/R$string;->pref_my_words_title:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 997
    :cond_23
    instance-of v1, p1, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    if-eqz v1, :cond_2e

    .line 998
    sget v1, Lcom/nuance/swype/input/R$string;->language_category_title:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 999
    :cond_2e
    instance-of v1, p1, Lcom/nuance/swype/input/settings/GesturesFragment;

    if-eqz v1, :cond_39

    .line 1000
    sget v1, Lcom/nuance/swype/input/R$string;->pref_menu_gestures:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1001
    :cond_39
    instance-of v1, p1, Lcom/nuance/swype/input/settings/HelpFragment;

    if-eqz v1, :cond_44

    .line 1002
    sget v1, Lcom/nuance/swype/input/R$string;->pref_help_title:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1003
    :cond_44
    instance-of v1, p1, Lcom/nuance/swype/input/settings/UpdatesFragment;

    if-eqz v1, :cond_c

    .line 1004
    sget v1, Lcom/nuance/swype/input/R$string;->updates_title:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method private getStatusBarHeight()I
    .registers 7

    .prologue
    .line 561
    const/4 v1, 0x0

    .line 562
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 563
    .local v0, "resourceId":I
    if-lez v0, :cond_1c

    .line 564
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 566
    :cond_1c
    return v1
.end method

.method private getThemedLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1087
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1088
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    return-object v1
.end method

.method public static isRunning()Z
    .registers 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/nuance/swype/input/settings/SettingsV11;->sRunning:Z

    return v0
.end method

.method private isStoreShowing()Z
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isStoreActive()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private isTabHostSupported()Z
    .registers 4

    .prologue
    .line 399
    const/4 v0, 0x1

    .line 400
    .local v0, "supported":Z
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    .line 401
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getEmbeddedThemesCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_f

    .line 402
    const/4 v0, 0x0

    .line 404
    :cond_f
    return v0
.end method

.method public static isTablet720DP()Z
    .registers 1

    .prologue
    .line 1231
    sget-boolean v0, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet_720DP:Z

    return v0
.end method

.method private replaceDecorViewWithDrawer()V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 544
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/settings/SettingsV11;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 547
    sget v4, Lcom/nuance/swype/input/R$layout;->settings_decor:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    .line 550
    .local v2, "drawer":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 551
    .local v1, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 552
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 554
    sget v3, Lcom/nuance/swype/input/R$id;->drawer_content:I

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 555
    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 557
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 558
    return-void
.end method

.method private selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V
    .registers 14
    .param p1, "item"    # Lcom/nuance/swype/widget/DrawerItem;
    .param p2, "position"    # I
    .param p3, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 871
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "selectFragmentItem..."

    aput-object v4, v3, v7

    aput-object p1, v3, v6

    const-string/jumbo v4, "...position: "

    aput-object v4, v3, v9

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 872
    if-nez p1, :cond_2f

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerTitles:[Ljava/lang/String;

    array-length v2, v2

    if-lt p2, v2, :cond_2f

    .line 873
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "selectFragmentItem... selected fragment index is out of range."

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 975
    :goto_2e
    return-void

    .line 876
    :cond_2f
    const/4 v0, 0x0

    .line 877
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz p1, :cond_c6

    .line 2015
    iget-object v1, p1, Lcom/nuance/swype/widget/DrawerItem;->ItemName:Ljava/lang/String;

    .line 878
    .local v1, "text":Ljava/lang/String;
    :goto_34
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "selectFragmentItem...text: "

    aput-object v4, v3, v7

    aput-object v1, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 879
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_50

    .line 880
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentFragmentInfo()Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v8, v8}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->initialize(ILjava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_50
    sget v2, Lcom/nuance/swype/input/R$string;->store:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 883
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_76

    .line 884
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->themesStartPointTime:J

    .line 885
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showTabHost()V

    .line 887
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    sget-object v3, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->INIT:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    invoke-virtual {v2, v6, v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showMainTabsList(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V

    .line 888
    iput-boolean v6, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isEnterMainStore:Z

    .line 950
    :cond_76
    :goto_76
    sget v2, Lcom/nuance/swype/input/R$string;->pref_menu_themes:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1dc

    sget v2, Lcom/nuance/swype/input/R$string;->store:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1dc

    .line 951
    if-eqz v0, :cond_a8

    .line 952
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$id;->content_frame:I

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 953
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/SettingsV11;->setCurrentFragment(Landroid/support/v4/app/Fragment;)V

    .line 956
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    iput-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->selectedSettingFragment:Landroid/support/v4/app/Fragment;

    .line 966
    :cond_a8
    :goto_a8
    if-eqz p1, :cond_1f8

    .line 967
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v2, p2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 3015
    iget-object v2, p1, Lcom/nuance/swype/widget/DrawerItem;->ItemName:Ljava/lang/String;

    .line 968
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->calculateSelectedPosition(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 972
    :goto_b7
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->setTitle(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/HackyDrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 974
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->invalidateOptionsMenu()V

    goto/16 :goto_2e

    .line 877
    .end local v1    # "text":Ljava/lang/String;
    :cond_c6
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerTitles:[Ljava/lang/String;

    aget-object v1, v2, p2

    goto/16 :goto_34

    .line 890
    .restart local v1    # "text":Ljava/lang/String;
    :cond_cc
    sget v2, Lcom/nuance/swype/input/R$string;->pref_connect_settings:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 891
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_e1

    .line 892
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hideTabHost()V

    .line 894
    :cond_e1
    if-nez p3, :cond_76

    .line 895
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/SettingsPrefsFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_76

    .line 897
    :cond_e9
    sget v2, Lcom/nuance/swype/input/R$string;->pref_menu_themes:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 898
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_76

    .line 899
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/nuance/swype/input/store/ThemeTabHostManager;->themesStartPointTime:J

    .line 900
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showTabHost()V

    .line 901
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    sget-object v3, Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;->INIT:Lcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;

    invoke-virtual {v2, v7, v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->showMainTabsList(ILcom/nuance/swype/input/store/ThemeTabHostManager$REFRESH_SOURCE;)V

    .line 902
    iput-boolean v6, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isEnterMainStore:Z

    goto/16 :goto_76

    .line 904
    :cond_111
    sget v2, Lcom/nuance/swype/input/R$string;->settings_swype_chinese:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 905
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_126

    .line 906
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hideTabHost()V

    .line 908
    :cond_126
    if-nez p3, :cond_76

    .line 909
    new-instance v0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/ChinesePrefsFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_76

    .line 911
    :cond_12f
    sget v2, Lcom/nuance/swype/input/R$string;->pref_my_words_title:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 912
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_144

    .line 913
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hideTabHost()V

    .line 915
    :cond_144
    if-nez p3, :cond_76

    .line 916
    new-instance v0, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefsFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_76

    .line 918
    :cond_14d
    sget v2, Lcom/nuance/swype/input/R$string;->language_category_title:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    .line 919
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_162

    .line 920
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hideTabHost()V

    .line 922
    :cond_162
    if-nez p3, :cond_76

    .line 923
    new-instance v0, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_76

    .line 925
    :cond_16b
    sget v2, Lcom/nuance/swype/input/R$string;->pref_menu_gestures:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_189

    .line 926
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_180

    .line 927
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hideTabHost()V

    .line 929
    :cond_180
    if-nez p3, :cond_76

    .line 930
    new-instance v0, Lcom/nuance/swype/input/settings/GesturesFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/GesturesFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_76

    .line 932
    :cond_189
    sget v2, Lcom/nuance/swype/input/R$string;->pref_help_title:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a7

    .line 933
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_19e

    .line 934
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hideTabHost()V

    .line 936
    :cond_19e
    if-nez p3, :cond_76

    .line 937
    new-instance v0, Lcom/nuance/swype/input/settings/HelpFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/HelpFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_76

    .line 939
    :cond_1a7
    sget v2, Lcom/nuance/swype/input/R$string;->updates_title:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 940
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_1bc

    .line 941
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->hideTabHost()V

    .line 943
    :cond_1bc
    if-nez p3, :cond_76

    .line 944
    new-instance v0, Lcom/nuance/swype/input/settings/UpdatesFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/nuance/swype/input/settings/UpdatesFragment;-><init>()V

    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto/16 :goto_76

    .line 947
    :cond_1c5
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "selectFragmentItem: item text not matched: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_76

    .line 960
    :cond_1dc
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-nez v2, :cond_1f3

    if-eqz v0, :cond_1f3

    .line 961
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$id;->content_frame:I

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 963
    :cond_1f3
    invoke-virtual {p0, v8}, Lcom/nuance/swype/input/settings/SettingsV11;->setCurrentFragment(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_a8

    .line 970
    :cond_1f8
    iput p2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    goto/16 :goto_b7
.end method

.method private selectFragmentItemByRecord(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 532
    const-string/jumbo v0, "selected_navigation_drawer_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 534
    const/4 v0, 0x0

    iget v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    invoke-direct {p0, v0, v1, p1}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    .line 535
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isDrawerAutomaticallyOpenedOnce()Z

    move-result v0

    if-nez v0, :cond_26

    .line 537
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mSettingsHandler:Landroid/os/Handler;

    const/16 v1, 0x2710

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 540
    :cond_26
    return-void
.end method

.method private setCatalogManagerActivity(Lcom/nuance/swype/input/settings/SettingsV11;)V
    .registers 4
    .param p1, "activity"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 276
    .local v0, "mCatalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v0, :cond_15

    .line 1477
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/nuance/swype/inapp/CatalogManager;->mActivity:Ljava/lang/ref/WeakReference;

    .line 279
    :cond_15
    return-void
.end method

.method private setDataList()V
    .registers 11

    .prologue
    .line 1107
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    .line 1108
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    .line 1109
    .local v2, "isChinese":Z
    const/4 v1, -0x1

    .line 1110
    .local v1, "defaultIndex":I
    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1111
    iget-object v5, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerTitles:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v6, :cond_191

    aget-object v3, v5, v4

    .line 1112
    .local v3, "mDrawerTitle":Ljava/lang/String;
    sget v7, Lcom/nuance/swype/input/R$string;->store:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 1114
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1115
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    new-instance v8, Lcom/nuance/swype/widget/DrawerItem;

    sget v9, Lcom/nuance/swype/input/R$drawable;->icon_settings_store:I

    invoke-direct {v8, v3, v9}, Lcom/nuance/swype/widget/DrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    sget-object v7, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    .line 1175
    :cond_3e
    :goto_3e
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_49

    .line 1176
    sput v1, Lcom/nuance/swype/input/settings/SettingsV11;->drawerItemsDefaultPosition:I

    .line 1111
    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1119
    :cond_4c
    sget v7, Lcom/nuance/swype/input/R$string;->pref_connect_settings:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 1121
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    new-instance v8, Lcom/nuance/swype/widget/DrawerItem;

    sget v9, Lcom/nuance/swype/input/R$drawable;->icon_settings_settings:I

    invoke-direct {v8, v3, v9}, Lcom/nuance/swype/widget/DrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    sget-object v7, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    goto :goto_3e

    .line 1124
    :cond_6b
    sget v7, Lcom/nuance/swype/input/R$string;->pref_menu_themes:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 1126
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->isTabHostSupported()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1127
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    new-instance v8, Lcom/nuance/swype/widget/DrawerItem;

    sget v9, Lcom/nuance/swype/input/R$drawable;->icon_settings_themes:I

    invoke-direct {v8, v3, v9}, Lcom/nuance/swype/widget/DrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    sget-object v7, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Themes:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    goto :goto_3e

    .line 1131
    :cond_90
    sget v7, Lcom/nuance/swype/input/R$string;->settings_swype_chinese:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 1133
    if-eqz v2, :cond_3e

    .line 1134
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    new-instance v8, Lcom/nuance/swype/widget/DrawerItem;

    sget v9, Lcom/nuance/swype/input/R$drawable;->icon_settings_chinese:I

    invoke-direct {v8, v3, v9}, Lcom/nuance/swype/widget/DrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    sget-object v7, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Chinese_Settings:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    goto :goto_3e

    .line 1138
    :cond_b1
    sget v7, Lcom/nuance/swype/input/R$string;->pref_my_words_title:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 1140
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    new-instance v8, Lcom/nuance/swype/widget/DrawerItem;

    sget v9, Lcom/nuance/swype/input/R$drawable;->icon_settings_mywords:I

    invoke-direct {v8, v3, v9}, Lcom/nuance/swype/widget/DrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    sget-object v7, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_My_Words:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    goto/16 :goto_3e

    .line 1143
    :cond_d1
    sget v7, Lcom/nuance/swype/input/R$string;->language_category_title:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 1145
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    new-instance v8, Lcom/nuance/swype/widget/DrawerItem;

    sget v9, Lcom/nuance/swype/input/R$drawable;->icon_settings_languages:I

    invoke-direct {v8, v3, v9}, Lcom/nuance/swype/widget/DrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    sget-object v7, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Language_Category:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    goto/16 :goto_3e

    .line 1148
    :cond_f1
    sget v7, Lcom/nuance/swype/input/R$string;->drawer_divider_text:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_111

    .line 1151
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    new-instance v8, Lcom/nuance/swype/widget/DrawerItem;

    sget v9, Lcom/nuance/swype/input/R$drawable;->icon_settings_languages:I

    invoke-direct {v8, v3, v9}, Lcom/nuance/swype/widget/DrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    sget-object v7, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Divider:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    goto/16 :goto_3e

    .line 1154
    :cond_111
    sget v7, Lcom/nuance/swype/input/R$string;->pref_menu_gestures:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_131

    .line 1156
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    new-instance v8, Lcom/nuance/swype/widget/DrawerItem;

    sget v9, Lcom/nuance/swype/input/R$drawable;->icon_settings_gestures:I

    invoke-direct {v8, v3, v9}, Lcom/nuance/swype/widget/DrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    sget-object v7, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Gestures:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    goto/16 :goto_3e

    .line 1159
    :cond_131
    sget v7, Lcom/nuance/swype/input/R$string;->pref_help_title:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_151

    .line 1161
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    new-instance v8, Lcom/nuance/swype/widget/DrawerItem;

    sget v9, Lcom/nuance/swype/input/R$drawable;->icon_settings_about:I

    invoke-direct {v8, v3, v9}, Lcom/nuance/swype/widget/DrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    sget-object v7, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Help:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    goto/16 :goto_3e

    .line 1164
    :cond_151
    sget v7, Lcom/nuance/swype/input/R$string;->updates_title:I

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1166
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    .line 1167
    .local v0, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/Connect;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_3e

    if-eqz v0, :cond_173

    .line 1168
    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->isDTCbuild()Z

    move-result v7

    if-nez v7, :cond_3e

    .line 1169
    :cond_173
    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1170
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    new-instance v8, Lcom/nuance/swype/widget/DrawerItem;

    sget v9, Lcom/nuance/swype/input/R$drawable;->icon_settings_whatsnew:I

    invoke-direct {v8, v3, v9}, Lcom/nuance/swype/widget/DrawerItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    sget-object v7, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Updates:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v7}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    goto/16 :goto_3e

    .line 1179
    .end local v0    # "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    .end local v3    # "mDrawerTitle":Ljava/lang/String;
    :cond_191
    return-void
.end method

.method private static setRunning(Z)V
    .registers 1
    .param p0, "bValue"    # Z

    .prologue
    .line 130
    sput-boolean p0, Lcom/nuance/swype/input/settings/SettingsV11;->sRunning:Z

    .line 131
    return-void
.end method

.method private showGetThemesTab()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 527
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 528
    iget v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    invoke-direct {p0, v1, v0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    .line 529
    return-void
.end method

.method private showMyThemesTab()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 518
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Themes:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 519
    iget v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    invoke-direct {p0, v1, v0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    .line 520
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isTabHostShown()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->actionbarManager:Lcom/nuance/swype/input/store/ThemeActionBarManager;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->actionbarManager:Lcom/nuance/swype/input/store/ThemeActionBarManager;

    .line 521
    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeActionBarManager;->isActionBarShowing()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 522
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->actionbarManager:Lcom/nuance/swype/input/store/ThemeActionBarManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeActionBarManager;->showActionBar()V

    .line 524
    :cond_2b
    return-void
.end method


# virtual methods
.method public getActionbarManager()Lcom/nuance/swype/input/store/ThemeActionBarManager;
    .registers 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->actionbarManager:Lcom/nuance/swype/input/store/ThemeActionBarManager;

    return-object v0
.end method

.method public getCurrentFragmentSource()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v0, :cond_b

    .line 1079
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentFragmentSource()Ljava/lang/String;

    move-result-object v0

    .line 1083
    :goto_a
    return-object v0

    .line 1082
    :cond_b
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "getCurrentFragmentSource: tabHostManager null, returning empty string"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1083
    const-string/jumbo v0, ""

    goto :goto_a
.end method

.method public getTabHostManager()Lcom/nuance/swype/input/store/ThemeTabHostManager;
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    return-object v0
.end method

.method public isCurrentThemeStoreShowing()Z
    .registers 2

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isPaused:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isEnterMainStore:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isTosCurrentlyShown()Z
    .registers 2

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tosCurrentlyShown:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 1028
    sparse-switch p1, :sswitch_data_94

    .line 1072
    :cond_6
    :goto_6
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1075
    :cond_9
    :goto_9
    return-void

    .line 1030
    :sswitch_a
    if-ne p2, v1, :cond_33

    .line 1031
    invoke-static {p0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1033
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    .line 1034
    .local v0, "mCatalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    if-eqz v0, :cond_30

    .line 1035
    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager;->setUpService()V

    .line 1038
    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 1039
    iget v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    invoke-direct {p0, v2, v1, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    .line 1046
    .end local v0    # "mCatalogManager":Lcom/nuance/swype/inapp/CatalogManager;
    :cond_30
    :goto_30
    iput-boolean v4, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tosCurrentlyShown:Z

    goto :goto_9

    .line 1043
    :cond_33
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    sget-object v2, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->MY_THEMES:Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager$MAIN_TABS_ID;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->highlightTitle(I)V

    goto :goto_30

    .line 1050
    :sswitch_3f
    if-ne p2, v1, :cond_51

    .line 1052
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/nuance/swype/input/settings/ThemesFragment;

    if-eqz v1, :cond_9

    .line 1053
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_9

    .line 1059
    :cond_51
    :sswitch_51
    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "REQUEST_ADDING_GOOGLE_ACCOUNT... resultCode:"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1062
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->resetThemeManagedData()V

    .line 1063
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1064
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->refetchPurchaseInfoFromGoolgeStore()V

    .line 1066
    :cond_7d
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;

    if-eqz v1, :cond_6

    .line 1067
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getActionbarManager()Lcom/nuance/swype/input/store/ThemeActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeActionBarManager;->showActionBar()V

    .line 1068
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->showGetThemesTab()V

    goto/16 :goto_6

    .line 1028
    nop

    :sswitch_data_94
    .sparse-switch
        0x64 -> :sswitch_51
        0xc8 -> :sswitch_a
        0x2711 -> :sswitch_3f
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 748
    iput-boolean v4, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isPaused:Z

    .line 749
    iput-boolean v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isEnterMainStore:Z

    .line 751
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "onBackPressed..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 752
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/HackyDrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 753
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "onBackPressed...close drawer."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 754
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/HackyDrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 786
    :goto_30
    return-void

    .line 758
    :cond_31
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_64

    .line 759
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->selectedSettingFragment:Landroid/support/v4/app/Fragment;

    if-ne v0, v1, :cond_5c

    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v0, :cond_5c

    .line 761
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentTab()I

    move-result v0

    if-ne v0, v4, :cond_55

    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Store:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v0

    :goto_51
    invoke-direct {p0, v5, v0, v5}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    goto :goto_30

    :cond_55
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->Drawer_Themes:Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItems;->ordinal()I

    move-result v0

    goto :goto_51

    .line 764
    :cond_5c
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    if-nez v0, :cond_6c

    .line 766
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_30

    .line 772
    :cond_64
    iget-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->shouldBackToStore:Z

    if-nez v0, :cond_6c

    .line 774
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_30

    .line 779
    :cond_6c
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 780
    iput v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 781
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->invalidateOptionsMenu()V

    goto :goto_30

    .line 785
    :cond_7e
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_30
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 704
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 705
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "icicle"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11;->INSTANCE_COUNT:Ljava/lang/Integer;

    monitor-enter v1

    .line 173
    :try_start_9
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->INSTANCE_COUNT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->INSTANCE_COUNT:Ljava/lang/Integer;

    .line 174
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_15a

    .line 176
    if-eqz p1, :cond_46

    .line 179
    const-string/jumbo v0, "tos_currently_shown"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tosCurrentlyShown:Z

    .line 180
    const-string/jumbo v0, "swype_settings_permission_requested"

    invoke-virtual {p1, v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isPermissionRequested:Z

    .line 182
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "current_fragment"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 183
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "selected_setting_fragment"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->selectedSettingFragment:Landroid/support/v4/app/Fragment;

    .line 186
    :cond_46
    invoke-static {v11}, Lcom/nuance/swype/input/settings/SettingsV11;->setRunning(Z)V

    .line 188
    sget v0, Lcom/nuance/swype/input/R$layout;->settings_main:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/SettingsV11;->setContentView(I)V

    .line 189
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->replaceDecorViewWithDrawer()V

    .line 191
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mTitle:Ljava/lang/CharSequence;

    .line 192
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$array;->settings_drawer_text_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerTitles:[Ljava/lang/String;

    .line 193
    sget v0, Lcom/nuance/swype/input/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/SettingsV11;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    .line 194
    sget v0, Lcom/nuance/swype/input/R$id;->list:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/SettingsV11;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    .line 196
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->setDataList()V

    .line 198
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/SettingsV11;->getThemedLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 199
    sget v1, Lcom/nuance/swype/input/R$layout;->settings_drawer_header:I

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 201
    .local v8, "header":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v0, v8, v13, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 204
    new-instance v0, Lcom/nuance/swype/widget/CustomDrawerAdapter;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$layout;->custom_drawer_item:I

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/widget/CustomDrawerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->adapter:Lcom/nuance/swype/widget/CustomDrawerAdapter;

    .line 206
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->adapter:Lcom/nuance/swype/widget/CustomDrawerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    new-instance v1, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;

    invoke-direct {v1, p0, v13}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;Lcom/nuance/swype/input/settings/SettingsV11$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_c5

    .line 211
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 216
    :cond_c5
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$1;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    sget v4, Lcom/nuance/swype/input/R$drawable;->icon_settings_menu:I

    sget v5, Lcom/nuance/swype/input/R$string;->drawer_open:I

    sget v6, Lcom/nuance/swype/input/R$string;->drawer_close:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/settings/SettingsV11$1;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 242
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 243
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/HackyDrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 245
    new-instance v0, Lcom/nuance/swype/input/store/ThemeActionBarManager;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/store/ThemeActionBarManager;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->actionbarManager:Lcom/nuance/swype/input/store/ThemeActionBarManager;

    .line 246
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->actionbarManager:Lcom/nuance/swype/input/store/ThemeActionBarManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeActionBarManager;->restoreActionBar()V

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 249
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->isLocaleChanged()Z

    move-result v0

    if-nez v0, :cond_121

    .line 250
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 251
    const-string/jumbo v1, "savedLocale"

    invoke-virtual {v0, v1, v13}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 252
    .local v9, "previousSavedLocale":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 253
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_121

    .line 254
    invoke-static {v11}, Lcom/nuance/swype/input/InputMethods;->setIsLocaleChanged(Z)V

    .line 258
    .end local v9    # "previousSavedLocale":Ljava/lang/String;
    :cond_121
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    .line 259
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SettingsV11;->createTabHostManager(Landroid/os/Bundle;)V

    .line 260
    invoke-direct {p0, p0}, Lcom/nuance/swype/input/settings/SettingsV11;->setCatalogManagerActivity(Lcom/nuance/swype/input/settings/SettingsV11;)V

    .line 262
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 263
    .local v7, "config":Landroid/content/res/Configuration;
    invoke-static {v7}, Lcom/nuance/android/compat/ConfigurationCompat;->getSmallestScreenWidthDp(Landroid/content/res/Configuration;)I

    move-result v10

    .line 264
    .local v10, "swDp":I
    if-eqz v10, :cond_15f

    .line 265
    const/16 v0, 0x2d0

    if-lt v10, v0, :cond_15d

    move v0, v11

    :goto_145
    sput-boolean v0, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet_720DP:Z

    .line 269
    :goto_147
    invoke-static {p0}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/BuildInfo;->getBuildDate()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/nuance/swype/input/DatabaseConfig;->refreshDatabaseConfig(Landroid/content/Context;J)V

    .line 270
    new-instance v0, Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mNetworkStateReceiver:Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;

    .line 271
    return-void

    .line 174
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v8    # "header":Landroid/view/ViewGroup;
    .end local v10    # "swDp":I
    :catchall_15a
    move-exception v0

    :try_start_15b
    monitor-exit v1
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_15a

    throw v0

    .restart local v7    # "config":Landroid/content/res/Configuration;
    .restart local v8    # "header":Landroid/view/ViewGroup;
    .restart local v10    # "swDp":I
    :cond_15d
    move v0, v12

    .line 265
    goto :goto_145

    .line 267
    :cond_15f
    iget v0, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_168

    :goto_165
    sput-boolean v11, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet_720DP:Z

    goto :goto_147

    :cond_168
    move v11, v12

    goto :goto_165
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 828
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 829
    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11;->INSTANCE_COUNT:Ljava/lang/Integer;

    monitor-enter v1

    .line 830
    :try_start_8
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->INSTANCE_COUNT:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->INSTANCE_COUNT:Ljava/lang/Integer;

    .line 831
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_60

    .line 832
    invoke-static {v3}, Lcom/nuance/swype/input/settings/SettingsV11;->setRunning(Z)V

    .line 834
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;->GET_THEMES:Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;

    invoke-virtual {v0, v2, v1}, Lcom/nuance/swype/inapp/CatalogManager;->setCatalogCallBackListener(Lcom/nuance/swype/inapp/CatalogManager$OnCatalogCallBackListener;Lcom/nuance/swype/usagedata/UsageData$DownloadLocation;)V

    .line 836
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v0, :cond_34

    .line 837
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->destroy()V

    .line 839
    :cond_34
    iput-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    .line 841
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/settings/HackyDrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 842
    iput-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 843
    iput-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerLayout:Lcom/nuance/swype/input/settings/HackyDrawerLayout;

    .line 845
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->actionbarManager:Lcom/nuance/swype/input/store/ThemeActionBarManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeActionBarManager;->release()V

    .line 847
    invoke-static {}, Lcom/nuance/swype/input/store/ThemeFragmentController;->destroyInstance()V

    .line 849
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    .line 850
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onDestroy..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 851
    return-void

    .line 831
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->onKeyUpListener:Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->onKeyUpListener:Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 712
    sget-object v2, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "onOptionsItemSelected...item: "

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 713
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isTabHostShown()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 714
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 720
    :cond_25
    :goto_25
    return v0

    :cond_26
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_25

    move v0, v1

    goto :goto_25
.end method

.method protected onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 658
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isPaused:Z

    .line 660
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/SettingsV11;->setCatalogManagerActivity(Lcom/nuance/swype/input/settings/SettingsV11;)V

    .line 661
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mSettingsHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 662
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    if-eqz v1, :cond_1d

    .line 663
    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/SDKUpdateManager;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 664
    iput-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    .line 666
    :cond_1d
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 668
    :try_start_20
    sget v1, Lcom/nuance/swype/input/R$anim;->fade_in:I

    sget v2, Lcom/nuance/swype/input/R$anim;->fade_out:I

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->overridePendingTransition(II)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_34

    .line 673
    :goto_27
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mNetworkStateReceiver:Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/settings/SettingsV11;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 674
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/usagedata/UsageData;->endSession(Landroid/content/Context;)V

    .line 675
    return-void

    .line 670
    :catch_34
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_27
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 695
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 697
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 698
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 620
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 622
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/usagedata/UsageData;->startSession(Landroid/content/Context;)V

    .line 623
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->clearKeyboardCache()V

    .line 625
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    .line 1574
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1575
    iget-object v2, v1, Lcom/nuance/swype/inapp/CatalogManager;->mInstalledList:Lcom/nuance/swype/inapp/InstalledList;

    if-nez v2, :cond_34

    .line 1576
    new-instance v2, Lcom/nuance/swype/inapp/InstalledList;

    iget-object v3, v1, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/nuance/swype/inapp/InstalledList;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/nuance/swype/inapp/CatalogManager;->mInstalledList:Lcom/nuance/swype/inapp/InstalledList;

    .line 1579
    :cond_34
    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->readLastCheckedSkuList()Ljava/util/Set;

    .line 1581
    iget-object v2, v1, Lcom/nuance/swype/inapp/CatalogManager;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    if-nez v2, :cond_49

    .line 1582
    new-instance v2, Lcom/nuance/swype/inapp/CatalogManager$3;

    iget-object v3, v1, Lcom/nuance/swype/inapp/CatalogManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v3}, Lcom/nuance/swype/inapp/CatalogManager$3;-><init>(Lcom/nuance/swype/inapp/CatalogManager;Landroid/content/Context;)V

    iput-object v2, v1, Lcom/nuance/swype/inapp/CatalogManager;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 1647
    iget-object v1, v1, Lcom/nuance/swype/inapp/CatalogManager;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 627
    :cond_49
    invoke-static {}, Lcom/nuance/swype/input/ThemeManager;->isDownloadableThemesEnabled()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 629
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getCatalogManager()Lcom/nuance/swype/inapp/CatalogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager;->refetchPurchaseInfoFromGoolgeStore()V

    .line 632
    :cond_5e
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->updateDrawerList()V

    .line 634
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isPaused:Z

    .line 635
    invoke-direct {p0, p0}, Lcom/nuance/swype/input/settings/SettingsV11;->setCatalogManagerActivity(Lcom/nuance/swype/input/settings/SettingsV11;)V

    .line 636
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    if-nez v1, :cond_85

    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_85

    .line 637
    new-instance v1, Lcom/nuance/swype/input/settings/SettingsV11$7;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/settings/SettingsV11$7;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    .line 642
    invoke-static {p0}, Lcom/nuance/swype/connect/SDKUpdateManager;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/SDKUpdateManager;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->updateCallback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/SDKUpdateManager;->registerCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateCallback;)V

    .line 645
    :cond_85
    :try_start_85
    sget v1, Lcom/nuance/swype/input/R$anim;->fade_in:I

    sget v2, Lcom/nuance/swype/input/R$anim;->fade_out:I

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->overridePendingTransition(II)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8c} :catch_9d

    .line 651
    :goto_8c
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 652
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mNetworkStateReceiver:Lcom/nuance/swype/input/settings/SettingsV11$NetworkStateReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/settings/SettingsV11;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 654
    return-void

    .line 648
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catch_9d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8c
.end method

.method protected onResumeFragments()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 606
    sget-object v1, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "onResumeFragments...currentFragment: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 607
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 609
    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isActivityResultReturned:Z

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v1, Lcom/nuance/swype/input/store/ThemeFragmentController$BundleThemeFragment;

    if-eqz v1, :cond_38

    .line 611
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 612
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Lcom/nuance/swype/input/R$id;->content_frame:I

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 613
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 614
    iput-boolean v5, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isActivityResultReturned:Z

    .line 616
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_38
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 790
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 792
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isTabHostShown()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->isMainTabActive()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 793
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/SettingsV11;->calculateSelectedPosition(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    .line 795
    :cond_1f
    const-string/jumbo v0, "selected_navigation_drawer_position"

    iget v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mCurrentSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 796
    const-string/jumbo v0, "tos_currently_shown"

    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tosCurrentlyShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 797
    const-string/jumbo v0, "swype_settings_permission_requested"

    iget-boolean v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isPermissionRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 799
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_47

    .line 800
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "current_fragment"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 803
    :cond_47
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->selectedSettingFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_57

    .line 804
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "selected_setting_fragment"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->selectedSettingFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 807
    :cond_57
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v0, :cond_c9

    .line 808
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "current fragment type:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentFragmentInfo()Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " category:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    .line 809
    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentFragmentInfo()Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->getCategory()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 808
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 810
    const-string/jumbo v0, "theme_fragment_type"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentFragmentInfo()Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    const-string/jumbo v0, "theme_fragment_category"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentFragmentInfo()Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string/jumbo v0, "theme_fragment_bundle_sku"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentFragmentInfo()Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager$CurrentFragmentInfo;->getBundleSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string/jumbo v0, "theme_tab_position"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    :cond_c9
    return-void
.end method

.method protected onStop()V
    .registers 6

    .prologue
    .line 679
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 681
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_32

    .line 682
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onStop: recording exit, isChangingConfigurations="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->isChangingConfigurations()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 683
    invoke-static {}, Lcom/nuance/swype/usagedata/UsageData;->exitedSettings()V

    .line 684
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->updateCustomDimensions()V

    .line 686
    :cond_32
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 5

    .prologue
    .line 737
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onUserLeaveHint"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 739
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    if-eqz v0, :cond_17

    .line 740
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tabHostManager:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->onUserLeaveHint()V

    .line 743
    :cond_17
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    .line 744
    return-void
.end method

.method public setActivityResulted(Z)V
    .registers 2
    .param p1, "result"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->isActivityResultReturned:Z

    .line 602
    return-void
.end method

.method public setCurrentFragment(Landroid/support/v4/app/Fragment;)V
    .registers 7
    .param p1, "fg"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 1014
    if-nez p1, :cond_37

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->selectedSettingFragment:Landroid/support/v4/app/Fragment;

    .line 1017
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_37

    .line 1019
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setCurrentFragment: removing fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1020
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1024
    :cond_37
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->currentFragment:Landroid/support/v4/app/Fragment;

    .line 1025
    return-void
.end method

.method public setOnKeyUpListener(Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->onKeyUpListener:Lcom/nuance/swype/input/settings/SettingsV11$KeyUpListener;

    .line 725
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 579
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setTitle..."

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 581
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 582
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 584
    :cond_1e
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 598
    :goto_26
    return-void

    .line 587
    :cond_27
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mTitle:Ljava/lang/CharSequence;

    .line 588
    sget v0, Lcom/nuance/swype/input/R$string;->view_all_content:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/SettingsV11;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 590
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 591
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "setTitle...disable drawer indicator..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 596
    :goto_46
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    goto :goto_26

    .line 593
    :cond_4c
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ActionBarDrawerToggle;->setDrawerIndicatorEnabled(Z)V

    .line 594
    sget-object v0, Lcom/nuance/swype/input/settings/SettingsV11;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "setTitle...enable drawer indicator..."

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_46
.end method

.method public setTosCurrentlyShown(Z)V
    .registers 2
    .param p1, "shown"    # Z

    .prologue
    .line 1198
    iput-boolean p1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->tosCurrentlyShown:Z

    .line 1199
    return-void
.end method

.method public showGoogleAccountLoginFailedDialog()Z
    .registers 4

    .prologue
    .line 458
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountSignedIn()Z

    move-result v0

    if-nez v0, :cond_43

    .line 459
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 460
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    .line 463
    :cond_1a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->theme_upgrade_google_play_service_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->google_sign_in_msg:I

    .line 464
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    new-instance v2, Lcom/nuance/swype/input/settings/SettingsV11$4;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/SettingsV11$4;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;)V

    .line 465
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    .line 471
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 472
    const/4 v0, 0x1

    .line 474
    :goto_42
    return v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public showGoogleAccountMissingDialog()Z
    .registers 4

    .prologue
    .line 436
    invoke-static {}, Lcom/nuance/swype/service/impl/AccountUtil;->isGoogleAccountMissing()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 437
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 438
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    .line 441
    :cond_1a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->theme_upgrade_google_play_service_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->google_sign_in_msg:I

    .line 442
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->google_sign_in_button:I

    new-instance v2, Lcom/nuance/swype/input/settings/SettingsV11$3;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/SettingsV11$3;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;)V

    .line 443
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    .line 451
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 452
    const/4 v0, 0x1

    .line 454
    :goto_42
    return v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_42
.end method

.method public showNetworkFailureDialog()Z
    .registers 4

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getPlatformUtil()Lcom/nuance/swype/input/PlatformUtil;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Lcom/nuance/swype/input/PlatformUtil;->checkForDataConnection()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 416
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 417
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    .line 420
    :cond_26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_available:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_try_again_msg:I

    .line 421
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    new-instance v2, Lcom/nuance/swype/input/settings/SettingsV11$2;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/SettingsV11$2;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;)V

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    .line 429
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_4e
    return v0

    :cond_4f
    const/4 v0, 0x0

    goto :goto_4e
.end method

.method public showNotAvailableDialogForGoogleTrial(Landroid/content/Context;)Z
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 478
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v2

    .line 479
    invoke-virtual {v2}, Lcom/nuance/swype/input/BuildInfo;->isGoogleTrialBuild()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 480
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 481
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 482
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    .line 484
    :cond_23
    sget v2, Lcom/nuance/swype/input/R$string;->url_android_market_dtc_details:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "appStoreUrl":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->swype_label:I

    .line 486
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->theme_buy_swype_desc:I

    .line 487
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->license_buy_now:I

    new-instance v3, Lcom/nuance/swype/input/settings/SettingsV11$6;

    invoke-direct {v3, p0, v0}, Lcom/nuance/swype/input/settings/SettingsV11$6;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->label_back:I

    new-instance v3, Lcom/nuance/swype/input/settings/SettingsV11$5;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/settings/SettingsV11$5;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;)V

    .line 500
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    .line 508
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 509
    const/4 v1, 0x1

    .line 511
    .end local v0    # "appStoreUrl":Ljava/lang/String;
    :cond_66
    return v1
.end method

.method public switchToDefaultScreen()V
    .registers 4

    .prologue
    .line 1101
    sget v0, Lcom/nuance/swype/input/settings/SettingsV11;->drawerItemsDefaultPosition:I

    if-ltz v0, :cond_1e

    sget v0, Lcom/nuance/swype/input/settings/SettingsV11;->drawerItemsDefaultPosition:I

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->adapter:Lcom/nuance/swype/widget/CustomDrawerAdapter;

    invoke-virtual {v1}, Lcom/nuance/swype/widget/CustomDrawerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1102
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->adapter:Lcom/nuance/swype/widget/CustomDrawerAdapter;

    sget v1, Lcom/nuance/swype/input/settings/SettingsV11;->drawerItemsDefaultPosition:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/widget/CustomDrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/widget/DrawerItem;

    sget v1, Lcom/nuance/swype/input/settings/SettingsV11;->drawerItemsDefaultPosition:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/settings/SettingsV11;->selectFragmentItem(Lcom/nuance/swype/widget/DrawerItem;ILandroid/os/Bundle;)V

    .line 1104
    :cond_1e
    return-void
.end method

.method public updateDrawerList()V
    .registers 5

    .prologue
    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    .line 1093
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->setDataList()V

    .line 1094
    new-instance v0, Lcom/nuance/swype/widget/CustomDrawerAdapter;

    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$layout;->custom_drawer_item:I

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SettingsV11;->dataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/widget/CustomDrawerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->adapter:Lcom/nuance/swype/widget/CustomDrawerAdapter;

    .line 1096
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11;->adapter:Lcom/nuance/swype/widget/CustomDrawerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1097
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11;->mDrawerList:Landroid/widget/ListView;

    new-instance v1, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nuance/swype/input/settings/SettingsV11$DrawerItemClickListener;-><init>(Lcom/nuance/swype/input/settings/SettingsV11;Lcom/nuance/swype/input/settings/SettingsV11$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1098
    return-void
.end method
