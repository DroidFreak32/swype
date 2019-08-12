.class public Lcom/nuance/input/swypecorelib/ApkFileReader;
.super Ljava/lang/Object;
.source "ApkFileReader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INDEX_FILE_DESCRIPTOR:I = 0x0

.field private static final INDEX_IS_COMPRESSED:I = 0x3

.field private static final INDEX_OFFSET:I = 0x1

.field private static final INDEX_SIZE:I = 0x2

.field private static final NUM_OF_PROPERTIES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ApkFileReader"


# instance fields
.field private final currentAssetFd:Landroid/content/res/AssetFileDescriptor;

.field private final isCompressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/nuance/input/swypecorelib/ApkFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/input/swypecorelib/ApkFileReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/res/AssetFileDescriptor;Z)V
    .locals 1
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "isCompressed"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-boolean v0, Lcom/nuance/input/swypecorelib/ApkFileReader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 32
    iput-boolean p2, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->isCompressed:Z

    .line 33
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/ApkFileReader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 49
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    new-instance v2, Lcom/nuance/input/swypecorelib/ApkFileReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/nuance/input/swypecorelib/ApkFileReader;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    .line 70
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-object v3

    .line 53
    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_2

    new-instance v2, Lcom/nuance/input/swypecorelib/ApkFileReader;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/nuance/input/swypecorelib/ApkFileReader;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_1
    if-eqz v1, :cond_1

    .line 62
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    move-object v3, v2

    .line 65
    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 54
    goto :goto_1

    .line 63
    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 56
    :catch_2
    move-exception v0

    .line 57
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v2, "ApkFileReader"

    const-string v4, "openFd"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    if-eqz v1, :cond_0

    .line 62
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 63
    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 62
    :try_start_5
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 65
    :cond_3
    :goto_3
    throw v2

    .line 63
    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "ApkFileReader"

    const-string v2, "close()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProperties()[J
    .locals 6

    .prologue
    .line 79
    const/4 v2, 0x4

    new-array v1, v2, [J

    .line 82
    .local v1, "prop":[J
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 85
    .local v0, "fileDescriptor":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getFdFromFileDescriptor(Ljava/io/FileDescriptor;)I

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v1, v2

    .line 86
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 87
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 88
    const/4 v4, 0x3

    iget-boolean v2, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->isCompressed:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    :goto_0
    aput-wide v2, v1, v4

    .line 91
    .end local v0    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v1    # "prop":[J
    :goto_1
    return-object v1

    .line 88
    .restart local v0    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v1    # "prop":[J
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 91
    .end local v0    # "fileDescriptor":Ljava/io/FileDescriptor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
