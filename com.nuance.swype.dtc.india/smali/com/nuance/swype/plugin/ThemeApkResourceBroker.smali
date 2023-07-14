.class public final Lcom/nuance/swype/plugin/ThemeApkResourceBroker;
.super Ljava/lang/Object;
.source "ThemeApkResourceBroker.java"


# static fields
.field static sThemeApkResBroker:Lcom/nuance/swype/plugin/ThemeApkResourceBroker;


# instance fields
.field private final cacheAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mHasInited:Z

.field public mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

.field mThemeApkInfo:Lcom/nuance/swype/plugin/ThemeApkInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->cacheAttributes:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->sThemeApkResBroker:Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    invoke-direct {v0}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;-><init>()V

    sput-object v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->sThemeApkResBroker:Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    .line 27
    :cond_0
    sget-object v0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->sThemeApkResBroker:Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    return-object v0
.end method


# virtual methods
.method public final setThemeFromApk(Lcom/nuance/swype/plugin/ThemeApkInfo;)Z
    .locals 15
    .param p1, "themeApkInfo"    # Lcom/nuance/swype/plugin/ThemeApkInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 41
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkResources:Landroid/content/res/Resources;

    .line 42
    .local v3, "themeApkRes":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->themeMetaData:Lcom/nuance/swype/plugin/ThemeMetaData;

    .line 44
    .local v7, "apkThemeInfo":Lcom/nuance/swype/plugin/ThemeMetaData;
    if-nez v7, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    iget-object v5, v7, Lcom/nuance/swype/plugin/ThemeMetaData;->themeStyleName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 55
    :try_start_0
    iget-object v5, p0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->cacheAttributes:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/swype/plugin/ThemeApkInfo;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 56
    .local v9, "object":Ljava/lang/Object;
    if-nez v9, :cond_2

    .line 57
    new-instance v5, Ldalvik/system/DexClassLoader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPath:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->dexDir:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-direct {v5, v11, v12, v13, v14}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 59
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".R$styleable"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 60
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v11, "SwypeThemeTemplate"

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 65
    iget-object v5, p0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->cacheAttributes:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/swype/plugin/ThemeApkInfo;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    check-cast v9, [I

    .end local v9    # "object":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, [I

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .local v4, "attrs":[I
    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 75
    .local v2, "newTheme":Landroid/content/res/Resources$Theme;
    iget-object v1, v7, Lcom/nuance/swype/plugin/ThemeMetaData;->themeStyleName:Ljava/lang/String;

    const-string/jumbo v5, "style"

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v5, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 76
    .local v6, "j":I
    invoke-virtual {v2, v6, v10}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 77
    iget-object v1, p0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    if-eqz v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    invoke-virtual {v1}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->release()V

    .line 81
    :cond_3
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mThemeApkInfo:Lcom/nuance/swype/plugin/ThemeApkInfo;

    .line 82
    const-string/jumbo v1, "SwypeThemeDefaults"

    const-string/jumbo v5, "style"

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v5, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 83
    new-instance v1, Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    iget-object v5, p0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mThemeApkInfo:Lcom/nuance/swype/plugin/ThemeApkInfo;

    iget-object v5, v5, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/nuance/swype/plugin/ThemeResourceAccessor;-><init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;[ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 84
    iput-boolean v10, p0, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    move v1, v10

    .line 85
    goto/16 :goto_0

    .line 69
    .end local v2    # "newTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "attrs":[I
    .end local v6    # "j":I
    :catch_0
    move-exception v8

    .line 71
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ThemeApkResourceBroker"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ThemeApkResourceBroker: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
