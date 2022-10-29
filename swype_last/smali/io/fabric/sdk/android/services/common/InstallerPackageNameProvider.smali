.class public final Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;
.super Ljava/lang/Object;
.source "InstallerPackageNameProvider.java"


# instance fields
.field private final installerPackageNameCache:Lio/fabric/sdk/android/services/cache/MemoryValueCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/cache/MemoryValueCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final installerPackageNameLoader:Lio/fabric/sdk/android/services/cache/ValueLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/cache/ValueLoader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider$1;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider$1;-><init>(Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;->installerPackageNameLoader:Lio/fabric/sdk/android/services/cache/ValueLoader;

    .line 35
    new-instance v0, Lio/fabric/sdk/android/services/cache/MemoryValueCache;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/cache/MemoryValueCache;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;->installerPackageNameCache:Lio/fabric/sdk/android/services/cache/MemoryValueCache;

    .line 36
    return-void
.end method


# virtual methods
.method public final getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 40
    :try_start_1
    iget-object v3, p0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;->installerPackageNameCache:Lio/fabric/sdk/android/services/cache/MemoryValueCache;

    iget-object v4, p0, Lio/fabric/sdk/android/services/common/InstallerPackageNameProvider;->installerPackageNameLoader:Lio/fabric/sdk/android/services/cache/ValueLoader;

    invoke-virtual {v3, p1, v4}, Lio/fabric/sdk/android/services/cache/MemoryValueCache;->get(Landroid/content/Context;Lio/fabric/sdk/android/services/cache/ValueLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_16

    move-result v3

    if-eqz v3, :cond_15

    move-object v1, v2

    .line 45
    .end local v1    # "name":Ljava/lang/String;
    :cond_15
    :goto_15
    return-object v1

    .line 43
    :catch_16
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string/jumbo v4, "Fabric"

    const-string/jumbo v5, "Failed to determine installer package name"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 45
    goto :goto_15
.end method
