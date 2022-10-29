.class public final Lcom/bumptech/glide/signature/ApplicationVersionSignature;
.super Ljava/lang/Object;
.source "ApplicationVersionSignature.java"


# static fields
.field private static final PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static obtain(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "packageName":Ljava/lang/String;
    sget-object v3, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/Key;

    .line 26
    .local v1, "result":Lcom/bumptech/glide/load/Key;
    if-nez v1, :cond_1d

    .line 27
    invoke-static {p0}, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->obtainVersionSignature(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;

    move-result-object v2

    .line 28
    .local v2, "toAdd":Lcom/bumptech/glide/load/Key;
    sget-object v3, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/bumptech/glide/load/Key;
    check-cast v1, Lcom/bumptech/glide/load/Key;

    .line 30
    .restart local v1    # "result":Lcom/bumptech/glide/load/Key;
    if-nez v1, :cond_1d

    .line 31
    move-object v1, v2

    .line 35
    .end local v2    # "toAdd":Lcom/bumptech/glide/load/Key;
    :cond_1d
    return-object v1
.end method

.method private static obtainVersionSignature(Landroid/content/Context;)Lcom/bumptech/glide/load/Key;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_1c

    move-result-object v0

    .line 52
    :goto_e
    if-eqz v0, :cond_21

    .line 53
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "versionCode":Ljava/lang/String;
    :goto_16
    new-instance v2, Lcom/bumptech/glide/signature/StringSignature;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 49
    .end local v1    # "versionCode":Ljava/lang/String;
    :catch_1c
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_e

    .line 55
    :cond_21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "versionCode":Ljava/lang/String;
    goto :goto_16
.end method
