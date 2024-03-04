.class public Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
.super Ljava/lang/Object;
.source "SwypeCoreLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;,
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;,
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteJapaneseSingletonHolder;,
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteKoreanSingletonHolder;,
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteChineseSingletonHolder;,
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteAlphaSingletonHolder;,
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$JapaneseCoreSingletonHolder;,
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$KoreanCoreSingletonHolder;,
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$ChineseCoreSingletonHolder;,
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$AlphaCoreSingletonHolder;
    }
.end annotation


# static fields
.field public static final COMPRESSED_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final JP_WNN_ENGINE_JAJP_DIC:Ljava/lang/String; = "writableJAJP.dic"

.field private static final LIB_NAME:Ljava/lang/String; = "SwypeCore"

.field public static RUNNING_STATE_BACKGROUND_HIBERNATE:I = 0x0

.field public static RUNNING_STATE_BACKGROUND_UI_HIDDEN:I = 0x0

.field public static RUNNING_STATE_FOREGROUND_UI:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SwypeCoreLibrary"

.field private static swypecorelibInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final enabled:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final versions:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_FOREGROUND_UI:I

    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_BACKGROUND_UI_HIDDEN:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_BACKGROUND_HIBERNATE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->appContext:Landroid/content/Context;

    .line 113
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getBuildInfo()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "buildInfo":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getCoreVersions()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "coreVersions":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->parseBuildInfo(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->enabled:Ljava/util/EnumSet;

    .line 116
    invoke-direct {p0, v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->parseCoreVersions(Ljava/lang/String;)Ljava/util/EnumMap;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->versions:Ljava/util/EnumMap;

    .line 117
    return-void
.end method

.method private static native config_getLanguages(Landroid/content/Context;)[B
.end method

.method private static native getBuildInfo()Ljava/lang/String;
.end method

.method private static native getCoreVersions()Ljava/lang/String;
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "nativeLibraryPath"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->swypecorelibInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    if-nez v0, :cond_0

    .line 44
    invoke-static {p0, p1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    :try_start_0
    new-instance v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-direct {v0, p0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->swypecorelibInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->swypecorelibInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    const-string v0, "SwypeCoreLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadNativeLibrary() error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSpeechKey(Landroid/content/Context;)[B
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    invoke-static {p0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->config_getLanguages(Landroid/content/Context;)[B

    move-result-object v0

    return-object v0
.end method

.method private static loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "nativeLibPath"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "SwypeCore"

    invoke-static {p0, v0, p1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->setApplicationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method private static loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "nativepath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#loadNativeLibrary() libName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "lib"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v1, "nativeLibFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadNativeLibrary(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "nativeLibFile":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :goto_0
    return v3

    .line 79
    :catch_0
    move-exception v4

    .line 82
    :cond_0
    if-eqz p2, :cond_1

    .line 84
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .restart local v1    # "nativeLibFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loadNativeLibrary() with nativeLibraryDir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    invoke-static {p2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v1    # "nativeLibFile":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 97
    :cond_1
    :try_start_2
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 103
    :catch_2
    move-exception v3

    const-string v3, "SwypeCoreLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not load native library "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static native nativeEvictLdbCache(I)V
.end method

.method static native nativeGetAllLdbCacheIds([I)V
.end method

.method static native nativeGetLdbCacheSize()I
.end method

.method static native nativeGetMostRecentUsedLdbIdCached()I
.end method

.method private static native nativeSetRunningState(I)V
.end method

.method private parseBuildInfo(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .param p1, "buildInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    const-class v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 247
    .local v0, "features":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;>;"
    if-eqz p1, :cond_3

    .line 248
    const-string v1, "trace:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_0
    const-string v1, "write_alpha:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_1
    const-string v1, "chinese_input:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->ChineseInput:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_2
    const-string v1, "write_chinese:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_3
    return-object v0
.end method

.method private parseCoreVersions(Ljava/lang/String;)Ljava/util/EnumMap;
    .locals 9
    .param p1, "coreVersions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v6, Ljava/util/EnumMap;

    const-class v8, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-direct {v6, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 267
    .local v6, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;Ljava/lang/String;>;"
    if-eqz p1, :cond_5

    .line 271
    const-string v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v7, v0, v3

    .line 273
    .local v7, "version":Ljava/lang/String;
    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 274
    .local v4, "index":I
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "coreName":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "coreVersion":Ljava/lang/String;
    const-string v8, "xt9core_version"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 277
    sget-object v8, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v6, v8, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_1
    const-string v8, "xt9core_build_id"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 279
    sget-object v8, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9BuildID:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v6, v8, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 280
    :cond_2
    const-string v8, "t9trace_version"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 281
    sget-object v8, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v6, v8, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 282
    :cond_3
    const-string v8, "t9write_alpha_version"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 283
    sget-object v8, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v6, v8, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 284
    :cond_4
    const-string v8, "t9write_chinese_version"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 286
    sget-object v8, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v6, v8, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 290
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "coreName":Ljava/lang/String;
    .end local v2    # "coreVersion":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v5    # "len$":I
    .end local v7    # "version":Ljava/lang/String;
    :cond_5
    return-object v6
.end method

.method private static native refresh_dbconfig(Ljava/lang/String;)V
.end method

.method private static native setApplicationContext(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method private static setNativeApplicationContext(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p0, p1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->setApplicationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    return-void
.end method


# virtual methods
.method public createOpenWnnEngineJAJP()Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;
    .locals 6

    .prologue
    .line 189
    const-string v4, "SwypeCore"

    invoke-static {v4}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "libName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/lib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "libpath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/system/lib/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "syspath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/writableJAJP.dic"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "dicpath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Japanese OpenWnnEngine libpath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Japanese OpenWnnEngine syspath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Japanese OpenWnnEngine dicpath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    new-instance v4, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-direct {v4, v2, v3, v0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$AlphaCoreSingletonHolder;->access$000()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v0

    return-object v0
.end method

.method public getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$ChineseCoreSingletonHolder;->access$100()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v0

    return-object v0
.end method

.method public getJapaneseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$JapaneseCoreSingletonHolder;->access$300()Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    move-result-object v0

    return-object v0
.end method

.method public getKoreanCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$KoreanCoreSingletonHolder;->access$200()Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    move-result-object v0

    return-object v0
.end method

.method public getT9TraceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteAlphaCoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteAlphaInstance()Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteAlphaSingletonHolder;->access$400()Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteChineseCoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteChineseInstance()Lcom/nuance/input/swypecorelib/T9WriteChinese;
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteChineseSingletonHolder;->access$500()Lcom/nuance/input/swypecorelib/T9WriteChinese;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteJapaneseInstance()Lcom/nuance/input/swypecorelib/T9WriteJapanese;
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteJapaneseSingletonHolder;->access$700()Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteKoreanInstance()Lcom/nuance/input/swypecorelib/T9WriteKorean;
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteKoreanSingletonHolder;->access$600()Lcom/nuance/input/swypecorelib/T9WriteKorean;

    move-result-object v0

    return-object v0
.end method

.method public getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;
    .locals 1
    .param p1, "core"    # Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->versions:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXT9CoreBuildId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9BuildID:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXT9CoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChineseInputBuildEnabled()Z
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->ChineseInput:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->enabled:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTraceBuildEnabled()Z
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z

    move-result v0

    return v0
.end method

.method public isWriteAlphaBuildEnabled()Z
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z

    move-result v0

    return v0
.end method

.method public isWriteChineseBuildEnabled()Z
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z

    move-result v0

    return v0
.end method

.method public isWriteJapaneseBuildEnabled()Z
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteJapanese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z

    move-result v0

    return v0
.end method

.method public refreshDatabaseConfigFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "configFile"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->refresh_dbconfig(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public setRunningState(I)V
    .locals 0
    .param p1, "runningState"    # I

    .prologue
    .line 312
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->nativeSetRunningState(I)V

    .line 313
    return-void
.end method
