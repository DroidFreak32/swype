.class public Lcom/fsck/k9/mail/store/StorageManager$HtcIncredibleStorageProvider;
.super Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcIncredibleStorageProvider"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "HtcIncredibleStorage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/fsck/k9/mail/store/StorageManager$FixedStorageProviderBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeRoot(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 449
    new-instance v0, Ljava/io/File;

    const-string v1, "/emmc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    const-string v0, "HtcIncredibleStorage"

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    const v0, 0x7f0a012b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected supportsVendor()Z
    .locals 2

    .prologue
    .line 443
    const-string v0, "inc"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
