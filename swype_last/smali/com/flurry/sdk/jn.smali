.class public Lcom/flurry/sdk/jn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/lj$a;


# static fields
.field private static a:Lcom/flurry/sdk/jn;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/sdk/jn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jn;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/flurry/sdk/li;->a()Lcom/flurry/sdk/li;

    move-result-object v1

    .line 44
    const-string/jumbo v0, "VersionName"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/jn;->c:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "VersionName"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/lj;->a(Ljava/lang/String;Lcom/flurry/sdk/lj$a;)V

    .line 47
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/jn;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initSettings, VersionName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/jn;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jn;
    .registers 2

    .prologue
    .line 19
    const-class v1, Lcom/flurry/sdk/jn;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/jn;->a:Lcom/flurry/sdk/jn;

    if-nez v0, :cond_e

    .line 20
    new-instance v0, Lcom/flurry/sdk/jn;

    invoke-direct {v0}, Lcom/flurry/sdk/jn;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jn;->a:Lcom/flurry/sdk/jn;

    .line 22
    :cond_e
    sget-object v0, Lcom/flurry/sdk/jn;->a:Lcom/flurry/sdk/jn;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .registers 4

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 114
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 115
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 123
    :goto_19
    return-object v0

    .line 117
    :cond_1a
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v1, :cond_2f

    .line 118
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_23} :catch_25

    move-result-object v0

    goto :goto_19

    .line 120
    :catch_25
    move-exception v0

    .line 121
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/jn;->b:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :cond_2f
    const-string/jumbo v0, "Unknown"

    goto :goto_19
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 128
    const-string/jumbo v0, "VersionName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 129
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/jn;->c:Ljava/lang/String;

    .line 131
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/jn;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSettingUpdate, VersionName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/jn;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_25
    return-void

    .line 133
    :cond_26
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/jn;->b:Ljava/lang/String;

    const-string/jumbo v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public final declared-synchronized i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/jn;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/jn;->c:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_21

    .line 106
    :goto_b
    monitor-exit p0

    return-object v0

    .line 101
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/flurry/sdk/jn;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/jn;->d:Ljava/lang/String;

    goto :goto_b

    .line 105
    :cond_18
    invoke-static {}, Lcom/flurry/sdk/jn;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jn;->d:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/jn;->d:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_21

    goto :goto_b

    .line 97
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
