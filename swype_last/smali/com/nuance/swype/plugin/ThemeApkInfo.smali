.class public final Lcom/nuance/swype/plugin/ThemeApkInfo;
.super Ljava/lang/Object;
.source "ThemeApkInfo.java"


# instance fields
.field private apkAppName:Ljava/lang/String;

.field apkName:Ljava/lang/String;

.field apkPackageName:Ljava/lang/String;

.field apkPath:Ljava/lang/String;

.field public apkResources:Landroid/content/res/Resources;

.field private apkVersionCode:I

.field private apkVersionName:Ljava/lang/String;

.field dexDir:Ljava/lang/String;

.field public themeMetaData:Lcom/nuance/swype/plugin/ThemeMetaData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromStaticApkFile(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/swype/plugin/ThemeApkInfo;
    .registers 14
    .param p0, "mainContext"    # Landroid/content/Context;
    .param p1, "paramApkPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b

    :cond_19
    move-object v6, v7

    .line 172
    :goto_1a
    return-object v6

    .line 137
    :cond_1b
    :try_start_1b
    new-instance v6, Lcom/nuance/swype/plugin/ThemeApkInfo;

    invoke-direct {v6}, Lcom/nuance/swype/plugin/ThemeApkInfo;-><init>()V

    .line 139
    .local v6, "themeApkInfo":Lcom/nuance/swype/plugin/ThemeApkInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 141
    .local v5, "mInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkVersionName:Ljava/lang/String;

    .line 142
    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkVersionCode:I

    .line 144
    iget-object v2, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 145
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 146
    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 149
    .local v1, "apkResources":Landroid/content/res/Resources;
    const-string/jumbo v8, "dex"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 150
    .local v3, "dexOutputDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->dexDir:Ljava/lang/String;

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPath:Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkName:Ljava/lang/String;

    .line 153
    iput-object v1, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkResources:Landroid/content/res/Resources;

    .line 155
    iget v8, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v8, :cond_97

    .line 157
    iget v8, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkAppName:Ljava/lang/String;

    .line 163
    :goto_6b
    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    .line 165
    iget-object v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkResources:Landroid/content/res/Resources;

    iget-object v9, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/nuance/swype/plugin/ThemeApkInfo;->readThemeMetaDataFromFile(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/nuance/swype/plugin/ThemeMetaData;

    move-result-object v8

    iput-object v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->themeMetaData:Lcom/nuance/swype/plugin/ThemeMetaData;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_79} :catch_7a

    goto :goto_1a

    .line 168
    .end local v1    # "apkResources":Landroid/content/res/Resources;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "dexOutputDir":Ljava/io/File;
    .end local v5    # "mInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "themeApkInfo":Lcom/nuance/swype/plugin/ThemeApkInfo;
    :catch_7a
    move-exception v4

    .line 170
    .local v4, "localException":Ljava/lang/Exception;
    const-string/jumbo v8, "ThemeApkInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ApkInfo: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 172
    goto :goto_1a

    .line 161
    .end local v4    # "localException":Ljava/lang/Exception;
    .restart local v1    # "apkResources":Landroid/content/res/Resources;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "dexOutputDir":Ljava/io/File;
    .restart local v5    # "mInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "themeApkInfo":Lcom/nuance/swype/plugin/ThemeApkInfo;
    :cond_97
    :try_start_97
    iget-object v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkName:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkName:Ljava/lang/String;

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkAppName:Ljava/lang/String;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a9} :catch_7a

    goto :goto_6b
.end method

.method private static readThemeMetaDataFromFile(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/nuance/swype/plugin/ThemeMetaData;
    .registers 8
    .param p0, "themeApkRes"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string/jumbo v4, "theme_metadata"

    const-string/jumbo v5, "xml"

    invoke-virtual {p0, v4, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 177
    .local v1, "resid":I
    const/4 v2, 0x0

    .line 178
    .local v2, "themeMetaData":Lcom/nuance/swype/plugin/ThemeMetaData;
    const/4 v0, 0x0

    .line 181
    .local v0, "localXmlResourceParser":Landroid/content/res/XmlResourceParser;
    :try_start_c
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 182
    new-instance v3, Lcom/nuance/swype/plugin/ThemeMetaData;

    invoke-direct {v3, v0}, Lcom/nuance/swype/plugin/ThemeMetaData;-><init>(Landroid/content/res/XmlResourceParser;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_1c
    .catchall {:try_start_c .. :try_end_15} :catchall_23

    .line 186
    .end local v2    # "themeMetaData":Lcom/nuance/swype/plugin/ThemeMetaData;
    .local v3, "themeMetaData":Lcom/nuance/swype/plugin/ThemeMetaData;
    if-eqz v0, :cond_2a

    .line 187
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    move-object v2, v3

    .line 191
    .end local v3    # "themeMetaData":Lcom/nuance/swype/plugin/ThemeMetaData;
    .restart local v2    # "themeMetaData":Lcom/nuance/swype/plugin/ThemeMetaData;
    :cond_1b
    :goto_1b
    return-object v2

    .line 186
    :catch_1c
    move-exception v4

    if-eqz v0, :cond_1b

    .line 187
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1b

    .line 186
    :catchall_23
    move-exception v4

    if-eqz v0, :cond_29

    .line 187
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_29
    throw v4

    .end local v2    # "themeMetaData":Lcom/nuance/swype/plugin/ThemeMetaData;
    .restart local v3    # "themeMetaData":Lcom/nuance/swype/plugin/ThemeMetaData;
    :cond_2a
    move-object v2, v3

    .end local v3    # "themeMetaData":Lcom/nuance/swype/plugin/ThemeMetaData;
    .restart local v2    # "themeMetaData":Lcom/nuance/swype/plugin/ThemeMetaData;
    goto :goto_1b
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "paramObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_5

    .line 77
    :cond_4
    :goto_4
    return v1

    .line 39
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 40
    goto :goto_4

    .line 42
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 43
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/nuance/swype/plugin/ThemeApkInfo;

    .line 47
    .local v0, "inApkInfo":Lcom/nuance/swype/plugin/ThemeApkInfo;
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkAppName:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 49
    iget-object v3, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkAppName:Ljava/lang/String;

    if-eqz v3, :cond_2e

    move v1, v2

    .line 50
    goto :goto_4

    .line 53
    :cond_22
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkAppName:Ljava/lang/String;

    iget-object v4, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v1, v2

    .line 54
    goto :goto_4

    .line 57
    :cond_2e
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    if-nez v3, :cond_38

    .line 59
    iget-object v3, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    if-eqz v3, :cond_44

    move v1, v2

    .line 60
    goto :goto_4

    .line 63
    :cond_38
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    move v1, v2

    .line 64
    goto :goto_4

    .line 67
    :cond_44
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkVersionName:Ljava/lang/String;

    if-nez v3, :cond_4e

    .line 69
    iget-object v3, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkVersionName:Ljava/lang/String;

    if-eqz v3, :cond_5a

    move v1, v2

    .line 70
    goto :goto_4

    .line 73
    :cond_4e
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkVersionName:Ljava/lang/String;

    iget-object v4, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkVersionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    move v1, v2

    .line 74
    goto :goto_4

    .line 77
    :cond_5a
    iget v3, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkVersionCode:I

    iget v4, v0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkVersionCode:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkAppName:Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 30
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    if-nez v0, :cond_1f

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkVersionName:Ljava/lang/String;

    if-nez v2, :cond_26

    :goto_16
    add-int/2addr v0, v1

    return v0

    .line 29
    :cond_18
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkAppName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 30
    :cond_1f
    iget-object v0, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    .line 31
    :cond_26
    iget-object v1, p0, Lcom/nuance/swype/plugin/ThemeApkInfo;->apkVersionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_16
.end method
