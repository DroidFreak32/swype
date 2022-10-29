.class abstract Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NativeAppInfo"
.end annotation


# static fields
.field private static final FBI_HASH:Ljava/lang/String; = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

.field private static final FBL_HASH:Ljava/lang/String; = "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

.field private static final FBR_HASH:Ljava/lang/String; = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

.field private static final validAppSignatureHashes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private availableVersions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 239
    invoke-static {}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->buildAppSignatureHashes()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validAppSignatureHashes:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/facebook/internal/NativeProtocol$1;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V

    return-void
.end method

.method private static buildAppSignatureHashes()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 245
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v1, "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    const-string/jumbo v1, "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    const-string/jumbo v1, "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    return-object v0
.end method

.method private declared-synchronized fetchAvailableVersions(Z)V
    .registers 3
    .param p1, "force"    # Z

    .prologue
    .line 291
    monitor-enter p0

    if-nez p1, :cond_7

    :try_start_3
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    if-nez v0, :cond_d

    .line 292
    :cond_7
    # invokes: Lcom/facebook/internal/NativeProtocol;->fetchAllAvailableProtocolVersionsForAppInfo(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->access$000(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 294
    :cond_d
    monitor-exit p0

    return-void

    .line 291
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAvailableVersions()Ljava/util/TreeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    if-nez v0, :cond_8

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V

    .line 287
    :cond_8
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    return-object v0
.end method

.method protected abstract getLoginActivity()Ljava/lang/String;
.end method

.method protected abstract getPackage()Ljava/lang/String;
.end method

.method public validateSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 252
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 253
    .local v2, "brand":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 254
    .local v0, "applicationFlags":I
    const-string/jumbo v9, "generic"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    and-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_18

    .line 280
    :cond_17
    :goto_17
    return v7

    .line 262
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x40

    invoke-virtual {v9, p2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_21} :catch_2d

    move-result-object v6

    .line 269
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_2b

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v9, v9

    if-gtz v9, :cond_30

    :cond_2b
    move v7, v8

    .line 270
    goto :goto_17

    .line 265
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_2d
    move-exception v7

    move v7, v8

    goto :goto_17

    .line 273
    .restart local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_30
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_34
    if-ge v4, v5, :cond_17

    aget-object v9, v1, v4

    .line 274
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/Utility;->sha1hash([B)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "hashedSignature":Ljava/lang/String;
    sget-object v9, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validAppSignatureHashes:Ljava/util/HashSet;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    move v7, v8

    .line 276
    goto :goto_17

    .line 273
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_34
.end method
