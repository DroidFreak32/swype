.class public Lcom/fsck/k9/K9;
.super Landroid/app/Application;
.source "K9.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/K9$BACKGROUND_OPS;,
        Lcom/fsck/k9/K9$ApplicationAware;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static DEBUG_PROTOCOL_IMAP:Z

.field public static DEBUG_PROTOCOL_POP3:Z

.field public static DEBUG_PROTOCOL_SMTP:Z

.field public static DEBUG_PROTOCOL_WEBDAV:Z

.field public static DEBUG_SENSITIVE:Z

.field public static DEFAULT_VISIBLE_LIMIT:I

.field public static ENABLE_ERROR_FOLDER:Z

.field public static ERROR_FOLDER_NAME:Ljava/lang/String;

.field public static app:Landroid/app/Application;

.field private static backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;

.field private static final fontSizes:Lcom/fsck/k9/FontSizes;

.field private static galleryBuggy:Z

.field private static mChangeContactNameColor:Z

.field private static mContactNameColor:I

.field private static mKeyguardPrivacy:Z

.field private static mMeasureAccounts:Z

.field private static mMessageViewFixedWidthFont:Z

.field private static mQuietTimeEnabled:Z

.field private static mQuietTimeEnds:Ljava/lang/String;

.field private static mQuietTimeStarts:Ljava/lang/String;

.field private static mShowContactName:Z

.field private static observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/K9$ApplicationAware;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    sput-object v1, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    .line 77
    new-instance v0, Lcom/fsck/k9/FontSizes;

    invoke-direct {v0}, Lcom/fsck/k9/FontSizes;-><init>()V

    sput-object v0, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 82
    sget-object v0, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    sput-object v0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    .line 88
    sput-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 103
    sput-boolean v3, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_SMTP:Z

    .line 110
    sput-boolean v3, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_IMAP:Z

    .line 118
    sput-boolean v3, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_POP3:Z

    .line 125
    sput-boolean v3, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_WEBDAV:Z

    .line 133
    sput-boolean v2, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    .line 139
    sput-boolean v3, Lcom/fsck/k9/K9;->ENABLE_ERROR_FOLDER:Z

    .line 140
    const-string v0, "K9mail-errors"

    sput-object v0, Lcom/fsck/k9/K9;->ERROR_FOLDER_NAME:Ljava/lang/String;

    .line 143
    sput-boolean v2, Lcom/fsck/k9/K9;->mKeyguardPrivacy:Z

    .line 148
    sput-boolean v2, Lcom/fsck/k9/K9;->mShowContactName:Z

    .line 154
    sput-boolean v2, Lcom/fsck/k9/K9;->mChangeContactNameColor:Z

    .line 155
    const v0, -0xffff71

    sput v0, Lcom/fsck/k9/K9;->mContactNameColor:I

    .line 156
    sput-boolean v2, Lcom/fsck/k9/K9;->mMessageViewFixedWidthFont:Z

    .line 157
    sput-boolean v3, Lcom/fsck/k9/K9;->mMeasureAccounts:Z

    .line 165
    sput-boolean v2, Lcom/fsck/k9/K9;->mQuietTimeEnabled:Z

    .line 169
    sput-object v1, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    .line 170
    sput-object v1, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    .line 172
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setBlockNetworkLoads"

    invoke-static {v0, v1}, Lcom/fsck/k9/K9;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 186
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v2

    .line 194
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v2

    .line 209
    const/16 v0, 0x19

    sput v0, Lcom/fsck/k9/K9;->DEFAULT_VISIBLE_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 282
    return-void
.end method

.method public static changeContactNameColor()Z
    .locals 1

    .prologue
    .line 806
    sget-boolean v0, Lcom/fsck/k9/K9;->mChangeContactNameColor:Z

    return v0
.end method

.method private checkForBuggyGallery()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 955
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/K9;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.cooliris.media"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 957
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x77da

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 961
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getContactNameColor()I
    .locals 1

    .prologue
    .line 816
    sget v0, Lcom/fsck/k9/K9;->mContactNameColor:I

    return v0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 848
    .local p0, "classObject":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 849
    const/4 v1, 0x0

    .line 861
    :goto_0
    return-object v2

    .line 851
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t get method "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 856
    :catch_1
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "k9"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while using reflection to get method "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static isQuietTime()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 686
    sget-boolean v10, Lcom/fsck/k9/K9;->mQuietTimeEnabled:Z

    if-nez v10, :cond_1

    .line 730
    .local v0, "endHour":Ljava/lang/Integer;
    .local v1, "endMinute":Ljava/lang/Integer;
    .local v2, "now":Ljava/lang/Integer;
    .local v3, "quietEnds":Ljava/lang/Integer;
    .local v4, "quietStarts":Ljava/lang/Integer;
    .local v5, "startHour":Ljava/lang/Integer;
    .local v6, "startMinute":Ljava/lang/Integer;
    .local v7, "time":Landroid/text/format/Time;
    :cond_0
    :goto_0
    return v8

    .line 691
    .end local v0    # "endHour":Ljava/lang/Integer;
    .end local v1    # "endMinute":Ljava/lang/Integer;
    .end local v2    # "now":Ljava/lang/Integer;
    .end local v3    # "quietEnds":Ljava/lang/Integer;
    .end local v4    # "quietStarts":Ljava/lang/Integer;
    .end local v5    # "startHour":Ljava/lang/Integer;
    .end local v6    # "startMinute":Ljava/lang/Integer;
    .end local v7    # "time":Landroid/text/format/Time;
    :cond_1
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 692
    .restart local v7    # "time":Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 693
    sget-object v10, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 694
    .restart local v5    # "startHour":Ljava/lang/Integer;
    sget-object v10, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 695
    .restart local v6    # "startMinute":Ljava/lang/Integer;
    sget-object v10, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 696
    .restart local v0    # "endHour":Ljava/lang/Integer;
    sget-object v10, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 698
    .restart local v1    # "endMinute":Ljava/lang/Integer;
    iget v10, v7, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v10, v10, 0x3c

    iget v11, v7, Landroid/text/format/Time;->minute:I

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 699
    .restart local v2    # "now":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 700
    .restart local v4    # "quietStarts":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 703
    .restart local v3    # "quietEnds":Ljava/lang/Integer;
    invoke-virtual {v4, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 710
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_3

    .line 713
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v10, v11, :cond_0

    :cond_2
    move v8, v9

    .line 715
    goto/16 :goto_0

    .line 724
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-lt v10, v11, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v10, v11, :cond_0

    move v8, v9

    .line 726
    goto/16 :goto_0
.end method

.method public static keyguardPrivacy()Z
    .locals 1

    .prologue
    .line 934
    sget-boolean v0, Lcom/fsck/k9/K9;->mKeyguardPrivacy:Z

    return v0
.end method

.method public static measureAccounts()Z
    .locals 1

    .prologue
    .line 886
    sget-boolean v0, Lcom/fsck/k9/K9;->mMeasureAccounts:Z

    return v0
.end method

.method public static messageViewFixedWidthFont()Z
    .locals 1

    .prologue
    .line 826
    sget-boolean v0, Lcom/fsck/k9/K9;->mMessageViewFixedWidthFont:Z

    return v0
.end method

.method public static registerApplicationAware(Lcom/fsck/k9/K9$ApplicationAware;)V
    .locals 1
    .param p0, "component"    # Lcom/fsck/k9/K9$ApplicationAware;

    .prologue
    .line 549
    sget-object v0, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    sget-object v0, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_0
    return-void
.end method

.method private static setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)Z
    .locals 2
    .param p0, "backgroundOps"    # Lcom/fsck/k9/K9$BACKGROUND_OPS;

    .prologue
    .line 582
    sget-object v0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    .line 583
    .local v0, "oldBackgroundOps":Lcom/fsck/k9/K9$BACKGROUND_OPS;
    sput-object p0, Lcom/fsck/k9/K9;->backgroundOps:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    .line 584
    if-eq p0, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showContactName()Z
    .locals 1

    .prologue
    .line 796
    sget-boolean v0, Lcom/fsck/k9/K9;->mShowContactName:Z

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 380
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 381
    sput-object p0, Lcom/fsck/k9/K9;->app:Landroid/app/Application;

    .line 383
    invoke-direct {p0}, Lcom/fsck/k9/K9;->checkForBuggyGallery()Z

    move-result v2

    sput-boolean v2, Lcom/fsck/k9/K9;->galleryBuggy:Z

    .line 385
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    .line 386
    .local v0, "prefs":Lcom/fsck/k9/Preferences;
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 387
    .local v1, "sprefs":Landroid/content/SharedPreferences;
    const-string v2, "enableDebugLogging"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z

    .line 388
    const-string v2, "enableSensitiveLogging"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    .line 389
    const-string v2, "animations"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 390
    const-string v2, "gesturesEnabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 391
    const-string v2, "useVolumeKeysForNavigation"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 392
    const-string v2, "useVolumeKeysForListNavigation"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 393
    const-string v2, "manageBack"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 394
    const-string v2, "startIntegratedInbox"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 395
    const-string v2, "measureAccounts"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/fsck/k9/K9;->mMeasureAccounts:Z

    .line 396
    const-string v2, "countSearchMessages"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 397
    const-string v2, "messageListStars"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 398
    const-string v2, "messageListCheckboxes"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 399
    const-string v2, "messageListTouchable"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 400
    const-string v2, "messageListPreviewLines"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 402
    const-string v2, "mobileOptimizedLayout"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 403
    const-string v2, "zoomControlsEnabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 405
    const-string v2, "quietTimeEnabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/fsck/k9/K9;->mQuietTimeEnabled:Z

    .line 406
    const-string v2, "quietTimeStarts"

    const-string v3, "21:00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fsck/k9/K9;->mQuietTimeStarts:Ljava/lang/String;

    .line 407
    const-string v2, "quietTimeEnds"

    const-string v3, "7:00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fsck/k9/K9;->mQuietTimeEnds:Ljava/lang/String;

    .line 409
    const-string v2, "showContactName"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/fsck/k9/K9;->mShowContactName:Z

    .line 410
    const-string v2, "changeRegisteredNameColor"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/fsck/k9/K9;->mChangeContactNameColor:Z

    .line 411
    const-string v2, "registeredNameColor"

    const v3, -0xffff71

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/fsck/k9/K9;->mContactNameColor:I

    .line 412
    const-string v2, "messageViewFixedWidthFont"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/fsck/k9/K9;->mMessageViewFixedWidthFont:Z

    .line 413
    const-string v2, "messageViewReturnToList"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 415
    const-string v2, "useGalleryBugWorkaround"

    sget-boolean v3, Lcom/fsck/k9/K9;->galleryBuggy:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 417
    const-string v2, "confirmDelete"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 419
    const-string v2, "keyguardPrivacy"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/fsck/k9/K9;->mKeyguardPrivacy:Z

    .line 421
    sget-object v2, Lcom/fsck/k9/K9;->fontSizes:Lcom/fsck/k9/FontSizes;

    const-string v3, "fontSizeAccountName"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->accountName:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->accountName:I

    const-string v3, "fontSizeAccountDescription"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->accountDescription:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->accountDescription:I

    const-string v3, "fontSizeFolderName"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->folderName:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->folderName:I

    const-string v3, "fontSizeFolderStatus"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->folderStatus:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->folderStatus:I

    const-string v3, "fontSizeMessageListSubject"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->messageListSubject:I

    const-string v3, "fontSizeMessageListSender"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->messageListSender:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->messageListSender:I

    const-string v3, "fontSizeMessageListDate"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->messageListDate:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->messageListDate:I

    const-string v3, "fontSizeMessageViewSender"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->messageViewSender:I

    const-string v3, "fontSizeMessageViewTo"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->messageViewTo:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->messageViewTo:I

    const-string v3, "fontSizeMessageViewCC"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->messageViewCC:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->messageViewCC:I

    const-string v3, "fontSizeMessageViewAdditionalHeaders"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->messageViewAdditionalHeaders:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->messageViewAdditionalHeaders:I

    const-string v3, "fontSizeMessageViewSubject"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->messageViewSubject:I

    const-string v3, "fontSizeMessageViewTime"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->messageViewTime:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->messageViewTime:I

    const-string v3, "fontSizeMessageViewDate"

    iget v4, v2, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/fsck/k9/FontSizes;->messageViewDate:I

    const-string v2, "fontSizeMessageViewContent"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 425
    :goto_0
    :try_start_0
    const-string v2, "backgroundOperations"

    const-string v3, "WHEN_CHECKED"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/K9$BACKGROUND_OPS;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/K9$BACKGROUND_OPS;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/K9;->setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 432
    :goto_1
    const-string v2, "language"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    const-string v2, "theme"

    const v3, 0x103000c

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 434
    invoke-static {p0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/controller/MessagingController;

    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAvailableAccounts()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/controller/MessagingController;->resetVisibleLimits(Ljava/util/Collection;)V

    .line 440
    invoke-virtual {p0}, Lcom/fsck/k9/K9;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/mail/internet/BinaryTempFileBody;->setTempDirectory(Ljava/io/File;)V

    .line 451
    invoke-static {p0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v2

    new-instance v3, Lcom/fsck/k9/K9$1;

    invoke-direct {v3, p0}, Lcom/fsck/k9/K9$1;-><init>(Lcom/fsck/k9/K9;)V

    invoke-virtual {v2, v3}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V

    .line 514
    sget-object v2, Lcom/fsck/k9/K9;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/K9$ApplicationAware;

    sget-boolean v3, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "k9"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Initializing observer: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_1
    const-string v3, "k9"

    const-string v5, "Registering content resolver notifier"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v3

    new-instance v5, Lcom/fsck/k9/provider/MessageProvider$1$1;

    invoke-direct {v5, p0}, Lcom/fsck/k9/provider/MessageProvider$1$1;-><init>(Lcom/fsck/k9/K9;)V

    invoke-virtual {v3, v5}, Lcom/fsck/k9/controller/MessagingController;->addListener(Lcom/fsck/k9/controller/MessagingListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failure when notifying "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 421
    :pswitch_0
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->SMALLEST:Landroid/webkit/WebSettings$TextSize;

    goto/16 :goto_0

    :pswitch_1
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    goto/16 :goto_0

    :pswitch_2
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    goto/16 :goto_0

    :pswitch_3
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->LARGER:Landroid/webkit/WebSettings$TextSize;

    goto/16 :goto_0

    :pswitch_4
    sget-object v2, Landroid/webkit/WebSettings$TextSize;->LARGEST:Landroid/webkit/WebSettings$TextSize;

    goto/16 :goto_0

    .line 429
    :catch_1
    move-exception v2

    sget-object v2, Lcom/fsck/k9/K9$BACKGROUND_OPS;->WHEN_CHECKED:Lcom/fsck/k9/K9$BACKGROUND_OPS;

    invoke-static {v2}, Lcom/fsck/k9/K9;->setBackgroundOps(Lcom/fsck/k9/K9$BACKGROUND_OPS;)Z

    goto/16 :goto_1

    .line 515
    :cond_1
    return-void

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
