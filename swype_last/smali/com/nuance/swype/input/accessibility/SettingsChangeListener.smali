.class public Lcom/nuance/swype/input/accessibility/SettingsChangeListener;
.super Ljava/lang/Object;
.source "SettingsChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field public static final ACCESSIBILITY_TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "touch_exploration_enabled"

.field private static final exploreByTouch:Landroid/net/Uri;

.field private static final lockIsExploreByTouchOn:Ljava/lang/Object;

.field private static final lockIsScreenMagnificationOn:Ljava/lang/Object;

.field private static final lockIsTalkBackOn:Ljava/lang/Object;

.field private static final magnificationEnableURL:Landroid/net/Uri;

.field private static sInstance:Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

.field private static sIsExploreByTouchOn:Z

.field private static sIsScreenMagnificationOn:Z

.field private static sIsTalkBackOn:Z


# instance fields
.field private contentObserver:Landroid/database/ContentObserver;

.field private contentResolver:Landroid/content/ContentResolver;

.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string/jumbo v0, "accessibility_display_magnification_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->magnificationEnableURL:Landroid/net/Uri;

    .line 45
    const-string/jumbo v0, "touch_exploration_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->exploreByTouch:Landroid/net/Uri;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->lockIsTalkBackOn:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->lockIsExploreByTouchOn:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->lockIsScreenMagnificationOn:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->mListeners:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/nuance/swype/input/accessibility/SettingsChangeListener;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->sInstance:Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    if-nez v0, :cond_b

    .line 114
    new-instance v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    invoke-direct {v0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->sInstance:Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    .line 116
    :cond_b
    sget-object v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->sInstance:Lcom/nuance/swype/input/accessibility/SettingsChangeListener;

    return-object v0
.end method

.method public static isExploreByTouchOn()Z
    .registers 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->sIsExploreByTouchOn:Z

    return v0
.end method

.method public static isScreenMagnificationOn()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->sIsScreenMagnificationOn:Z

    return v0
.end method

.method public static isTalkBackOn()Z
    .registers 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->sIsTalkBackOn:Z

    return v0
.end method

.method private notifyExploreByTouchHasChanged()V
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;

    .line 177
    invoke-static {}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->isExploreByTouchOn()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;->onExploreByTouchChanged(Z)V

    goto :goto_6

    .line 179
    :cond_1a
    return-void
.end method


# virtual methods
.method public addListener(Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_11
    return-void
.end method

.method protected getBooleanValue(Ljava/lang/String;)Z
    .registers 4
    .param p1, "valueFor"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->readValue(Ljava/lang/String;)I

    move-result v1

    .line 100
    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected readValue(Ljava/lang/String;)I
    .registers 4
    .param p1, "valueFor"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "value":I
    :try_start_1
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 109
    :goto_7
    return v0

    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public registerObserver(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentResolver:Landroid/content/ContentResolver;

    .line 121
    invoke-virtual {p0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->resetMagnification()V

    .line 122
    new-instance v0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener$1;-><init>(Lcom/nuance/swype/input/accessibility/SettingsChangeListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentObserver:Landroid/database/ContentObserver;

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->magnificationEnableURL:Landroid/net/Uri;

    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->exploreByTouch:Landroid/net/Uri;

    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    return-void
.end method

.method public removeListener(Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/nuance/swype/input/accessibility/SettingsChangeListener$SystemSettingsChangeListener;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    :cond_b
    return-void
.end method

.method protected resetExploreByTouch()V
    .registers 3

    .prologue
    .line 94
    const-string/jumbo v1, "touch_exploration_enabled"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 95
    .local v0, "value":Z
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->setExploreByTouch(Z)V

    .line 96
    return-void
.end method

.method public resetMagnification()V
    .registers 3

    .prologue
    .line 89
    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    .line 90
    .local v0, "value":Z
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->setMagnification(Z)V

    .line 91
    return-void
.end method

.method public setExploreByTouch(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 79
    sget-boolean v1, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->sIsExploreByTouchOn:Z

    if-eq v1, p1, :cond_11

    const/4 v0, 0x1

    .line 80
    .local v0, "hasChanged":Z
    :goto_5
    sget-object v2, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->lockIsExploreByTouchOn:Ljava/lang/Object;

    monitor-enter v2

    .line 81
    :try_start_8
    sput-boolean p1, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->sIsExploreByTouchOn:Z

    .line 82
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_13

    .line 83
    if-eqz v0, :cond_10

    .line 84
    invoke-direct {p0}, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->notifyExploreByTouchHasChanged()V

    .line 86
    :cond_10
    return-void

    .line 79
    .end local v0    # "hasChanged":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    .line 82
    .restart local v0    # "hasChanged":Z
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public setMagnification(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 67
    sget-object v1, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->lockIsScreenMagnificationOn:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_3
    sput-boolean p1, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->sIsScreenMagnificationOn:Z

    .line 69
    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setTalkBack(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    sget-object v1, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->lockIsTalkBackOn:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_3
    sput-boolean p1, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->sIsTalkBackOn:Z

    .line 75
    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public unregisterObserver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_10

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    iput-object v2, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentObserver:Landroid/database/ContentObserver;

    .line 139
    iput-object v2, p0, Lcom/nuance/swype/input/accessibility/SettingsChangeListener;->contentResolver:Landroid/content/ContentResolver;

    .line 141
    :cond_10
    return-void
.end method
