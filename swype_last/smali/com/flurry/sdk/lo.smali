.class public final Lcom/flurry/sdk/lo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/lo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    invoke-static {p0}, Lcom/flurry/sdk/lo;->d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 66
    :goto_c
    return-object v0

    :cond_d
    const-string/jumbo v0, ""

    goto :goto_c
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    invoke-static {p0}, Lcom/flurry/sdk/lo;->d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 72
    :goto_c
    return-object v0

    :cond_d
    const-string/jumbo v0, ""

    goto :goto_c
.end method

.method private static d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .registers 5

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_11

    .line 32
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x514f

    .line 32
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_10} :catch_12

    move-result-object v0

    .line 45
    :cond_11
    :goto_11
    return-object v0

    .line 41
    :catch_12
    move-exception v1

    sget-object v1, Lcom/flurry/sdk/lo;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cannot find package info for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method
