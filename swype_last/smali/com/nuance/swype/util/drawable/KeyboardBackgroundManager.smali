.class public final Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;
.super Ljava/lang/Object;
.source "KeyboardBackgroundManager.java"


# static fields
.field public static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field public mReloadRequiredFromResources:Z

.field private mSku:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string/jumbo v0, "KeyboardBackgroundManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;ILandroid/os/Handler;)V
    .registers 5
    .param p0, "x0"    # Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/os/Handler;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->loadBackground(Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;ILandroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;II)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->saveCachedDrawable(II)V

    return-void
.end method

.method private getBitmapFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 206
    .local v0, "themeFolder":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget v1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    const-string/jumbo v1, "background.png"

    :goto_13
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    :cond_17
    const-string/jumbo v1, "background-land.png"

    goto :goto_13
.end method

.method private declared-synchronized loadBackground(Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;ILandroid/os/Handler;)V
    .registers 13
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .param p3, "orientation"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    monitor-enter p0

    :try_start_3
    iput-object p1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mSku:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 143
    iput p3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mOrientation:I

    .line 144
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2158
    iget-object v2, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mSku:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->getBitmapFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2159
    sget-object v3, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Bitmap file path is : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2161
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 2162
    sget-object v3, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Background file found on disk, loading..."

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2163
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2164
    if-eqz v2, :cond_8d

    .line 2165
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    :goto_5c
    if-eqz v0, :cond_8b

    .line 147
    sget-object v0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Notifying the handler"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 2177
    if-eqz p4, :cond_8b

    .line 2178
    sget-object v0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Notifying background load complete."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2179
    const/16 v0, 0x7c

    iget-object v1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_ad

    .line 151
    :cond_8b
    monitor-exit p0

    return-void

    .line 2168
    :cond_8d
    :try_start_8d
    sget-object v0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "loading failed."

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v0, v1

    .line 2170
    goto :goto_5c

    .line 2171
    :cond_9d
    sget-object v0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Drawable file not found."

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_ab
    .catchall {:try_start_8d .. :try_end_ab} :catchall_ad

    move v0, v1

    goto :goto_5c

    .line 141
    :catchall_ad
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveCachedDrawable(II)V
    .registers 12
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 225
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2241
    sget-object v4, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Creating bitmap width: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2242
    iget-object v4, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mContext:Landroid/content/Context;

    .line 2243
    invoke-static {v4}, Lcom/nuance/swype/util/DisplayUtils;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v4

    .line 2242
    invoke-static {p1, p2, v4}, Lcom/nuance/swype/util/BitmapUtil;->createDeviceOptimizedBitmap(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2244
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2245
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2246
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_9b

    .line 227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_40
    iget-object v3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mSku:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->getBitmapFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 228
    .local v2, "filePath":Ljava/io/File;
    sget-object v3, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Writing to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 2256
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 2257
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2258
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2259
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_7e} :catch_80
    .catchall {:try_start_40 .. :try_end_7e} :catchall_9b

    .line 233
    .end local v2    # "filePath":Ljava/io/File;
    :cond_7e
    :goto_7e
    monitor-exit p0

    return-void

    .line 230
    :catch_80
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    :try_start_81
    sget-object v3, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error saving file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_9a
    .catchall {:try_start_81 .. :try_end_9a} :catchall_9b

    goto :goto_7e

    .line 225
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_9b
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public final declared-synchronized getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    monitor-enter p0

    :try_start_3
    sget-object v2, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getting cached drawable. Is null? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_26

    :goto_15
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_28

    monitor-exit p0

    return-object v0

    :cond_26
    move v0, v1

    .line 77
    goto :goto_15

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized hasConfigChanged(Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;I)Z
    .registers 5
    .param p1, "themeSku"    # Ljava/lang/String;
    .param p2, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .param p3, "orientation"    # I

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mSku:Ljava/lang/String;

    if-nez v0, :cond_7

    if-nez p1, :cond_19

    :cond_7
    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mSku:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, p2, :cond_19

    iget v0, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mOrientation:I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1e

    if-eq v0, p3, :cond_1c

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    monitor-exit p0

    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1a

    .line 102
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadDrawableFromResource(Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;ILcom/nuance/swype/input/KeyboardStyle;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .param p3, "orientation"    # I
    .param p4, "style"    # Lcom/nuance/swype/input/KeyboardStyle;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mSku:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 115
    iput p3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mOrientation:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    sget-object v0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Loading background from resources"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 118
    sget v0, Lcom/nuance/swype/input/R$attr;->background:I

    invoke-virtual {p4, v0}, Lcom/nuance/swype/input/KeyboardStyle;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->setReloadRequiredFromResources(Z)V

    .line 120
    iget-object v0, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object v0

    .line 113
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setReloadRequiredFromResources(Z)V
    .registers 7
    .param p1, "reloadRequired"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mReloadRequiredFromResources:Z

    .line 265
    sget-object v0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reload required is now set to: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mReloadRequiredFromResources:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public final shouldLoadFromDisk(Lcom/nuance/swype/input/ThemeManager$SwypeTheme;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)Z
    .registers 8
    .param p1, "theme"    # Lcom/nuance/swype/input/ThemeManager$SwypeTheme;
    .param p2, "dockMode"    # Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/util/DrawingUtils;->getKeyboardScale(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_f

    .line 94
    :cond_e
    :goto_e
    return v1

    .line 88
    :cond_f
    iget-object v3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 89
    .local v0, "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1188
    :cond_25
    invoke-virtual {p1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSource()Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;->EMBEDDED:Lcom/nuance/swype/input/ThemeManager$SwypeTheme$THEME_SOURCE;

    if-ne v3, v4, :cond_49

    iget-object v3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->mContext:Landroid/content/Context;

    .line 1189
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getDisplayName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    move v3, v2

    .line 94
    :goto_41
    if-nez v3, :cond_e

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_FULL:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne p2, v3, :cond_e

    move v1, v2

    goto :goto_e

    :cond_49
    move v3, v1

    .line 1189
    goto :goto_41
.end method
