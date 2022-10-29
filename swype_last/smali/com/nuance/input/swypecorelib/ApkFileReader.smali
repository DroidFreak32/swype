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
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/nuance/input/swypecorelib/ApkFileReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/nuance/input/swypecorelib/ApkFileReader;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Landroid/content/res/AssetFileDescriptor;Z)V
    .registers 4
    .param p1, "fd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "isCompressed"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Lcom/nuance/input/swypecorelib/ApkFileReader;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_f
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    .line 31
    iput-boolean p2, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->isCompressed:Z

    .line 32
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/ApkFileReader;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 43
    if-eqz p1, :cond_27

    .line 44
    const/4 v1, 0x0

    .line 48
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_4
    new-instance v2, Lcom/nuance/input/swypecorelib/ApkFileReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/nuance/input/swypecorelib/ApkFileReader;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_26} :catch_28
    .catchall {:try_start_4 .. :try_end_26} :catchall_5c

    move-object v3, v2

    .line 69
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_27
    :goto_27
    return-object v3

    .line 52
    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_28
    move-exception v2

    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_40

    new-instance v2, Lcom/nuance/input/swypecorelib/ApkFileReader;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/nuance/input/swypecorelib/ApkFileReader;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_39} :catch_47
    .catchall {:try_start_29 .. :try_end_39} :catchall_5c

    .line 59
    :goto_39
    if-eqz v1, :cond_3e

    .line 61
    :try_start_3b
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_42

    :cond_3e
    :goto_3e
    move-object v3, v2

    .line 64
    goto :goto_27

    :cond_40
    move-object v2, v3

    .line 53
    goto :goto_39

    .line 63
    :catch_42
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .line 55
    :catch_47
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/io/IOException;
    :try_start_48
    const-string/jumbo v2, "ApkFileReader"

    const-string/jumbo v4, "openFd"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_5c

    .line 59
    if-eqz v1, :cond_27

    .line 61
    :try_start_53
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_27

    .line 63
    :catch_57
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 59
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_5c
    move-exception v2

    if-eqz v1, :cond_62

    .line 61
    :try_start_5f
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    .line 64
    :cond_62
    :goto_62
    throw v2

    .line 63
    :catch_63
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_9

    .line 98
    :try_start_4
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 103
    :cond_9
    :goto_9
    return-void

    .line 99
    :catch_a
    move-exception v0

    .line 100
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v1, "ApkFileReader"

    const-string/jumbo v2, "close()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getProperties()[J
    .registers 7

    .prologue
    .line 78
    const/4 v2, 0x4

    new-array v1, v2, [J

    .line 81
    .local v1, "prop":[J
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_34

    .line 83
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 84
    .local v0, "fileDescriptor":Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getFdFromFileDescriptor(Ljava/io/FileDescriptor;)I

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v1, v2

    .line 85
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 86
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->currentAssetFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 87
    const/4 v4, 0x3

    iget-boolean v2, p0, Lcom/nuance/input/swypecorelib/ApkFileReader;->isCompressed:Z

    if-eqz v2, :cond_31

    const-wide/16 v2, 0x1

    :goto_2e
    aput-wide v2, v1, v4

    .line 90
    .end local v0    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v1    # "prop":[J
    :goto_30
    return-object v1

    .line 87
    .restart local v0    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v1    # "prop":[J
    :cond_31
    const-wide/16 v2, 0x0

    goto :goto_2e

    .line 90
    .end local v0    # "fileDescriptor":Ljava/io/FileDescriptor;
    :cond_34
    const/4 v1, 0x0

    goto :goto_30
.end method
