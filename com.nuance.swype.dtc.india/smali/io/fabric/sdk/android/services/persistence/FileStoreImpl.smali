.class public final Lio/fabric/sdk/android/services/persistence/FileStoreImpl;
.super Ljava/lang/Object;
.source "FileStoreImpl.java"


# instance fields
.field private final contentPath:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final legacySupport:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .locals 2
    .param p1, "kit"    # Lio/fabric/sdk/android/Kit;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    iget-object v0, p1, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 21
    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot get directory before context has been set. Call Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2094
    :cond_0
    iget-object v0, p1, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->context:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Lio/fabric/sdk/android/Kit;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->contentPath:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Android/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->legacySupport:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public final getFilesDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lio/fabric/sdk/android/services/persistence/FileStoreImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 3089
    if-eqz v0, :cond_2

    .line 3090
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3091
    :cond_0
    :goto_0
    return-object v0

    .line 3093
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "Couldn\'t create file"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    :goto_1
    const/4 v0, 0x0

    .line 65
    goto :goto_0

    .line 3096
    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    goto :goto_1
.end method
