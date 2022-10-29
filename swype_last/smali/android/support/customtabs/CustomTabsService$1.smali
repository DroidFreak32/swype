.class final Landroid/support/customtabs/CustomTabsService$1;
.super Landroid/support/customtabs/ICustomTabsService$Stub;
.source "CustomTabsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsService;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsService;->extraCommand$5f15a07()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 7
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 85
    .local p4, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsService;->mayLaunchUrl$28898044()Z

    move-result v0

    return v0
.end method

.method public final newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    .registers 8
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;

    .prologue
    const/4 v2, 0x0

    .line 64
    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    .line 66
    .local v1, "sessionToken":Landroid/support/customtabs/CustomTabsSessionToken;
    :try_start_6
    new-instance v0, Landroid/support/customtabs/CustomTabsService$1$1;

    invoke-direct {v0, p0, v1}, Landroid/support/customtabs/CustomTabsService$1$1;-><init>(Landroid/support/customtabs/CustomTabsService$1;Landroid/support/customtabs/CustomTabsSessionToken;)V

    .line 72
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    # getter for: Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;
    invoke-static {v3}, Landroid/support/customtabs/CustomTabsService;->access$000(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_32

    .line 73
    :try_start_12
    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 74
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    # getter for: Landroid/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;
    invoke-static {v3}, Landroid/support/customtabs/CustomTabsService;->access$000(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2f

    .line 76
    :try_start_28
    iget-object v3, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v3}, Landroid/support/customtabs/CustomTabsService;->newSession$26d819e()Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_32

    move-result v2

    .line 78
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :goto_2e
    return v2

    .line 75
    .restart local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v3
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_32} :catch_32

    .line 78
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    :catch_32
    move-exception v3

    goto :goto_2e
.end method

.method public final updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/CustomTabsSessionToken;

    invoke-direct {v1, p1}, Landroid/support/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;)V

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsService;->updateVisuals$7708c702()Z

    move-result v0

    return v0
.end method

.method public final warmup(J)Z
    .registers 4
    .param p1, "flags"    # J

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService$1;->this$0:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0}, Landroid/support/customtabs/CustomTabsService;->warmup$1349f3()Z

    move-result v0

    return v0
.end method
