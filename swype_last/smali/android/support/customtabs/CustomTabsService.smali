.class public abstract Landroid/support/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# instance fields
.field private mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

.field private final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 55
    new-instance v0, Landroid/support/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Landroid/support/customtabs/CustomTabsService$1;-><init>(Landroid/support/customtabs/CustomTabsService;)V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsService;->mBinder:Landroid/support/customtabs/ICustomTabsService$Stub;

    return-void
.end method

.method static synthetic access$000(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/support/customtabs/CustomTabsService;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected final cleanUpSession(Landroid/support/customtabs/CustomTabsSessionToken;)Z
    .registers 7
    .param p1, "sessionToken"    # Landroid/support/customtabs/CustomTabsSessionToken;

    .prologue
    const/4 v2, 0x0

    .line 116
    :try_start_1
    iget-object v4, p0, Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    monitor-enter v4
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_1f

    .line 117
    :try_start_4
    invoke-virtual {p1}, Landroid/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 118
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    .line 120
    .local v1, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 121
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    monitor-exit v4

    .line 126
    const/4 v2, 0x1

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :goto_1b
    return v2

    .line 122
    :catchall_1c
    move-exception v3

    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v3
    :try_end_1f
    .catch Ljava/util/NoSuchElementException; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 124
    :catch_1f
    move-exception v3

    goto :goto_1b
.end method

.method protected abstract extraCommand$5f15a07()Landroid/os/Bundle;
.end method

.method protected abstract mayLaunchUrl$28898044()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method protected abstract newSession$26d819e()Z
.end method

.method protected abstract updateVisuals$7708c702()Z
.end method

.method protected abstract warmup$1349f3()Z
.end method
