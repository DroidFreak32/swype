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
        Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteAlphaSingletonHolder;
    }
.end annotation


# static fields
.field public static final COMPRESSED_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final JP_WNN_ENGINE_JAJP_DIC:Ljava/lang/String; = "writableJAJP.dic"

.field public static RUNNING_STATE_BACKGROUND_HIBERNATE:I = 0x0

.field public static final RUNNING_STATE_BACKGROUND_UI_HIDDEN:I = 0x1

.field public static RUNNING_STATE_FOREGROUND_UI:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SwypeCoreLibrary"

.field private static swypecorelibInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;


# instance fields
.field private alphaCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

.field private alphaSessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;

.field private final appContext:Landroid/content/Context;

.field private chineseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

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

.field private japaneseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

.field private koreanCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

.field private runningState:I

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
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_FOREGROUND_UI:I

    .line 29
    const/4 v0, 0x2

    sput v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->RUNNING_STATE_BACKGROUND_HIBERNATE:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v2, 0x1

    iput v2, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->runningState:I

    .line 132
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->appContext:Landroid/content/Context;

    .line 133
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getBuildInfo()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "buildInfo":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getCoreVersions()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "coreVersions":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->parseBuildInfo(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->enabled:Ljava/util/EnumSet;

    .line 136
    invoke-direct {p0, v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->parseCoreVersions(Ljava/lang/String;)Ljava/util/EnumMap;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->versions:Ljava/util/EnumMap;

    .line 137
    return-void
.end method

.method private static native config_getLanguages(Landroid/content/Context;)[B
.end method

.method private static native getBuildInfo()Ljava/lang/String;
.end method

.method private static native getCoreVersions()Ljava/lang/String;
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    .registers 7
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "coreLibName"    # Ljava/lang/String;
    .param p2, "nativeLibraryPath"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->swypecorelibInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    if-nez v1, :cond_27

    .line 49
    invoke-static {p0, p1, p2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 52
    .local v0, "loadNativeLib":Z
    :try_start_8
    new-instance v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    invoke-direct {v1, p0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->swypecorelibInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    :try_end_f
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_f} :catch_2a

    .line 57
    :goto_f
    if-nez v0, :cond_27

    .line 58
    const-string/jumbo v1, "SwypeCoreLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadNativeLibrary() error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "loadNativeLib":Z
    :cond_27
    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->swypecorelibInstance:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    return-object v1

    .line 54
    .restart local v0    # "loadNativeLib":Z
    :catch_2a
    move-exception v1

    const-string/jumbo v1, "SwypeCoreLibrary"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadNativeLibrary() error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public static getSpeechKey(Landroid/content/Context;)[B
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    invoke-static {p0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->config_getLanguages(Landroid/content/Context;)[B

    move-result-object v0

    return-object v0
.end method

.method static native isJapaneseEnabled()Z
.end method

.method private static loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "coreLibName"    # Ljava/lang/String;
    .param p2, "nativeLibPath"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0, p1, p2}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->loadNativeLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->setNativeApplicationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static loadNativeLibraryInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "nativepath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "#loadNativeLibrary() libName: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string/jumbo v8, "lib"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v3, "nativeLibFile":Ljava/io/File;
    invoke-static {v3}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->tryLoad(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 124
    :cond_34
    :goto_34
    return v5

    .line 102
    :cond_35
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v4, "nativeLibFile2":Ljava/io/File;
    invoke-virtual {v4, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    .line 104
    invoke-static {v4}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->tryLoad(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 110
    :cond_46
    :try_start_46
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_46 .. :try_end_49} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_84

    goto :goto_34

    .line 112
    :catch_4a
    move-exception v1

    .line 113
    .local v1, "ex":Ljava/lang/UnsatisfiedLinkError;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "loadNativeLibraryInternal(): failed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .end local v1    # "ex":Ljava/lang/UnsatisfiedLinkError;
    :goto_56
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    invoke-static {v6}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->tryLoad(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 123
    const-string/jumbo v5, "SwypeCoreLibrary"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Could not load native library "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v5, 0x0

    goto :goto_34

    .line 114
    :catch_84
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SwypeCoreLibrary"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
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
    .registers 4
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
    .line 298
    const-class v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 299
    .local v0, "features":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;>;"
    if-eqz p1, :cond_40

    .line 300
    const-string/jumbo v1, "trace:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 301
    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_16
    const-string/jumbo v1, "write_alpha:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 304
    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_24
    const-string/jumbo v1, "chinese_input:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 308
    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->ChineseInput:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_32
    const-string/jumbo v1, "write_chinese:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 311
    sget-object v1, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_40
    return-object v0
.end method

.method private parseCoreVersions(Ljava/lang/String;)Ljava/util/EnumMap;
    .registers 12
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
    const/4 v6, 0x0

    .line 318
    new-instance v3, Ljava/util/EnumMap;

    const-class v5, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-direct {v3, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 319
    .local v3, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;Ljava/lang/String;>;"
    if-eqz p1, :cond_74

    .line 323
    const-string/jumbo v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_13
    if-ge v5, v8, :cond_74

    aget-object v4, v7, v5

    .line 325
    .local v4, "version":Ljava/lang/String;
    const/16 v9, 0x3d

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 326
    .local v2, "index":I
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "coreName":Ljava/lang/String;
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "coreVersion":Ljava/lang/String;
    const-string/jumbo v9, "xt9core_version"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 329
    sget-object v9, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v3, v9, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_35
    :goto_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 330
    :cond_38
    const-string/jumbo v9, "xt9core_build_id"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_47

    .line 331
    sget-object v9, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9BuildID:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v3, v9, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 332
    :cond_47
    const-string/jumbo v9, "t9trace_version"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 333
    sget-object v9, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v3, v9, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 334
    :cond_56
    const-string/jumbo v9, "t9write_alpha_version"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 335
    sget-object v9, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v3, v9, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 336
    :cond_65
    const-string/jumbo v9, "t9write_chinese_version"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 338
    sget-object v9, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {v3, v9, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 342
    .end local v0    # "coreName":Ljava/lang/String;
    .end local v1    # "coreVersion":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v4    # "version":Ljava/lang/String;
    :cond_74
    return-object v3
.end method

.method private static native refresh_dbconfig(Ljava/lang/String;)V
.end method

.method private static native setApplicationContext(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method private static setNativeApplicationContext(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->setApplicationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private static tryLoad(Ljava/io/File;)Z
    .registers 7
    .param p0, "libFile"    # Ljava/io/File;

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 78
    :try_start_a
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_1d

    .line 79
    const/4 v3, 0x1

    .line 88
    :goto_e
    return v3

    .line 80
    :catch_f
    move-exception v1

    .line 81
    .local v1, "ex":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tryLoad(): failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .end local v1    # "ex":Ljava/lang/UnsatisfiedLinkError;
    :cond_1b
    :goto_1b
    const/4 v3, 0x0

    goto :goto_e

    .line 82
    :catch_1d
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SwypeCoreLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method


# virtual methods
.method public createOpenWnnEngineJAJP(Ljava/lang/String;Ljava/lang/String;)Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;
    .registers 10
    .param p1, "coreLibName"    # Ljava/lang/String;
    .param p2, "nativeLibraryPath"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "libName":Ljava/lang/String;
    move-object v2, v1

    .line 233
    .local v2, "libpath":Ljava/lang/String;
    if-eqz p2, :cond_16

    .line 235
    :try_start_7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v3, "nativeLibFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 238
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_15} :catch_48

    move-result-object v2

    .line 244
    .end local v3    # "nativeLibFile":Ljava/io/File;
    :cond_16
    :goto_16
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "/system/lib/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "syspath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->appContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/writableJAJP.dic"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "dicpath":Ljava/lang/String;
    new-instance v5, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;

    invoke-direct {v5, v2, v4, v0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .end local v0    # "dicpath":Ljava/lang/String;
    .end local v4    # "syspath":Ljava/lang/String;
    :catch_48
    move-exception v5

    goto :goto_16
.end method

.method public getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->alphaCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-nez v0, :cond_18

    .line 152
    new-instance v0, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getXT9CoreVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->alphaSessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;

    .line 153
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->alphaSessionDataCollector:Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;-><init>(Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollector;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->alphaCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 155
    :cond_18
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->alphaCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    return-object v0
.end method

.method public getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->chineseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-nez v0, :cond_10

    .line 160
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    new-instance v1, Lcom/nuance/input/swypecorelib/usagedata/SessionDataDefaultCollector;

    invoke-direct {v1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataDefaultCollector;-><init>()V

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;-><init>(Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->chineseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    .line 162
    :cond_10
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->chineseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    return-object v0
.end method

.method public getJapaneseCoreInstance(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;
    .registers 4
    .param p1, "alphaInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->japaneseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-nez v0, :cond_10

    .line 174
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    new-instance v1, Lcom/nuance/input/swypecorelib/usagedata/SessionDataDefaultCollector;

    invoke-direct {v1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataDefaultCollector;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->japaneseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    .line 176
    :cond_10
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->japaneseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    return-object v0
.end method

.method public getKoreanCoreInstance(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;
    .registers 4
    .param p1, "alphaInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->koreanCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-nez v0, :cond_10

    .line 167
    new-instance v0, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    new-instance v1, Lcom/nuance/input/swypecorelib/usagedata/SessionDataDefaultCollector;

    invoke-direct {v1}, Lcom/nuance/input/swypecorelib/usagedata/SessionDataDefaultCollector;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;Lcom/nuance/input/swypecorelib/usagedata/SessionDataCollectorAbstract;)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->koreanCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    .line 169
    :cond_10
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->koreanCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    return-object v0
.end method

.method public getRunningState()I
    .registers 2

    .prologue
    .line 364
    iget v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->runningState:I

    return v0
.end method

.method public getT9TraceVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteAlphaCoreVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteAlphaInstance()Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    .registers 2

    .prologue
    .line 212
    # getter for: Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteAlphaSingletonHolder;->T9WRITE_ALPHA_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteAlpha;
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteAlphaSingletonHolder;->access$000()Lcom/nuance/input/swypecorelib/T9WriteAlpha;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteChineseCoreVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteChineseInstance()Lcom/nuance/input/swypecorelib/T9WriteChinese;
    .registers 2

    .prologue
    .line 216
    # getter for: Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteChineseSingletonHolder;->T9WRITE_CHINESE_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteChinese;
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteChineseSingletonHolder;->access$100()Lcom/nuance/input/swypecorelib/T9WriteChinese;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteJapaneseInstance()Lcom/nuance/input/swypecorelib/T9WriteJapanese;
    .registers 2

    .prologue
    .line 224
    # getter for: Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteJapaneseSingletonHolder;->T9WRITE_JAPANESE_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteJapanese;
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteJapaneseSingletonHolder;->access$300()Lcom/nuance/input/swypecorelib/T9WriteJapanese;

    move-result-object v0

    return-object v0
.end method

.method public getT9WriteKoreanInstance()Lcom/nuance/input/swypecorelib/T9WriteKorean;
    .registers 2

    .prologue
    .line 220
    # getter for: Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteKoreanSingletonHolder;->T9WRITIE_KOREAN_INSTANCE:Lcom/nuance/input/swypecorelib/T9WriteKorean;
    invoke-static {}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$T9WriteKoreanSingletonHolder;->access$200()Lcom/nuance/input/swypecorelib/T9WriteKorean;

    move-result-object v0

    return-object v0
.end method

.method public getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;
    .registers 3
    .param p1, "core"    # Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->versions:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXT9CoreBuildId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9BuildID:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXT9CoreVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 277
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;->XT9:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getVersion(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Core;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlphaInputHasContext()Z
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->alphaCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->alphaCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->hasInputContext()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isChineseInputBuildEnabled()Z
    .registers 2

    .prologue
    .line 262
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->ChineseInput:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z

    move-result v0

    return v0
.end method

.method public isChineseInputHasContext()Z
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->chineseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->chineseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasInputContext()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z
    .registers 3
    .param p1, "feature"    # Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->enabled:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isJapaneseInputHasContext()Z
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->japaneseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->japaneseCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreJapaneseInput;->hasInputContext()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isKoreanInputHasContext()Z
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->koreanCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->koreanCoreInputInstance:Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/XT9CoreKoreanInput;->hasInputContext()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTraceBuildEnabled()Z
    .registers 2

    .prologue
    .line 258
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->Trace:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z

    move-result v0

    return v0
.end method

.method public isWriteAlphaBuildEnabled()Z
    .registers 2

    .prologue
    .line 266
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteAlpha:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z

    move-result v0

    return v0
.end method

.method public isWriteChineseBuildEnabled()Z
    .registers 2

    .prologue
    .line 270
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteChinese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z

    move-result v0

    return v0
.end method

.method public isWriteJapaneseBuildEnabled()Z
    .registers 2

    .prologue
    .line 273
    sget-object v0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;->WriteJapanese:Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isEnabled(Lcom/nuance/input/swypecorelib/SwypeCoreLibrary$Feature;)Z

    move-result v0

    return v0
.end method

.method public refreshDatabaseConfigFile(Ljava/lang/String;)V
    .registers 2
    .param p1, "configFile"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->refresh_dbconfig(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public setRunningState(I)V
    .registers 2
    .param p1, "runningState"    # I

    .prologue
    .line 368
    iput p1, p0, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->runningState:I

    .line 369
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->nativeSetRunningState(I)V

    .line 370
    return-void
.end method
