.class final Lcom/facebook/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field static final ACTION_CURRENT_PROFILE_CHANGED:Ljava/lang/String; = "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

.field static final EXTRA_NEW_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_NEW_PROFILE"

.field static final EXTRA_OLD_PROFILE:Ljava/lang/String; = "com.facebook.sdk.EXTRA_OLD_PROFILE"

.field private static volatile instance:Lcom/facebook/ProfileManager;


# instance fields
.field private currentProfile:Lcom/facebook/Profile;

.field private final localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private final profileCache:Lcom/facebook/ProfileCache;


# direct methods
.method constructor <init>(Landroid/support/v4/content/LocalBroadcastManager;Lcom/facebook/ProfileCache;)V
    .registers 4
    .param p1, "localBroadcastManager"    # Landroid/support/v4/content/LocalBroadcastManager;
    .param p2, "profileCache"    # Lcom/facebook/ProfileCache;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "profileCache"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/facebook/ProfileManager;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 51
    iput-object p2, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    .line 52
    return-void
.end method

.method static getInstance()Lcom/facebook/ProfileManager;
    .registers 4

    .prologue
    .line 55
    sget-object v1, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    if-nez v1, :cond_20

    .line 56
    const-class v2, Lcom/facebook/ProfileManager;

    monitor-enter v2

    .line 57
    :try_start_7
    sget-object v1, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    if-nez v1, :cond_1f

    .line 58
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 62
    .local v0, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v1, Lcom/facebook/ProfileManager;

    new-instance v3, Lcom/facebook/ProfileCache;

    invoke-direct {v3}, Lcom/facebook/ProfileCache;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/facebook/ProfileManager;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Lcom/facebook/ProfileCache;)V

    sput-object v1, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    .line 64
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_23

    .line 66
    :cond_20
    sget-object v1, Lcom/facebook/ProfileManager;->instance:Lcom/facebook/ProfileManager;

    return-object v1

    .line 64
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method private sendCurrentProfileChangedBroadcast(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .registers 5
    .param p1, "oldProfile"    # Lcom/facebook/Profile;
    .param p2, "currentProfile"    # Lcom/facebook/Profile;

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/facebook/ProfileManager;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 114
    return-void
.end method

.method private setCurrentProfile(Lcom/facebook/Profile;Z)V
    .registers 5
    .param p1, "currentProfile"    # Lcom/facebook/Profile;
    .param p2, "writeToCache"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/ProfileManager;->currentProfile:Lcom/facebook/Profile;

    .line 90
    .local v0, "oldProfile":Lcom/facebook/Profile;
    iput-object p1, p0, Lcom/facebook/ProfileManager;->currentProfile:Lcom/facebook/Profile;

    .line 92
    if-eqz p2, :cond_d

    .line 93
    if-eqz p1, :cond_17

    .line 94
    iget-object v1, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v1, p1}, Lcom/facebook/ProfileCache;->save(Lcom/facebook/Profile;)V

    .line 100
    :cond_d
    :goto_d
    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/facebook/ProfileManager;->sendCurrentProfileChangedBroadcast(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    .line 103
    :cond_16
    return-void

    .line 96
    :cond_17
    iget-object v1, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v1}, Lcom/facebook/ProfileCache;->clear()V

    goto :goto_d
.end method


# virtual methods
.method final getCurrentProfile()Lcom/facebook/Profile;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/ProfileManager;->currentProfile:Lcom/facebook/Profile;

    return-object v0
.end method

.method final loadCurrentProfile()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v2, p0, Lcom/facebook/ProfileManager;->profileCache:Lcom/facebook/ProfileCache;

    invoke-virtual {v2}, Lcom/facebook/ProfileCache;->load()Lcom/facebook/Profile;

    move-result-object v0

    .line 76
    .local v0, "profile":Lcom/facebook/Profile;
    if-eqz v0, :cond_d

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;Z)V

    .line 78
    const/4 v1, 0x1

    .line 81
    :cond_d
    return v1
.end method

.method final setCurrentProfile(Lcom/facebook/Profile;)V
    .registers 3
    .param p1, "currentProfile"    # Lcom/facebook/Profile;

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;Z)V

    .line 86
    return-void
.end method
