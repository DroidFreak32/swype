.class public final Lcom/nuance/swype/util/LocalizationUtils;
.super Ljava/lang/Object;
.source "LocalizationUtils.java"


# static fields
.field private static ASSETS_URL_PREFIX:Ljava/lang/String;

.field public static ASSETS_URL_PREFIX_HELPS:Ljava/lang/String;

.field private static HELPS_SUBFOLDER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "file:///android_asset/"

    sput-object v0, Lcom/nuance/swype/util/LocalizationUtils;->ASSETS_URL_PREFIX:Ljava/lang/String;

    .line 21
    const-string v0, "helps"

    sput-object v0, Lcom/nuance/swype/util/LocalizationUtils;->HELPS_SUBFOLDER:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/swype/util/LocalizationUtils;->ASSETS_URL_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/util/LocalizationUtils;->HELPS_SUBFOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/util/LocalizationUtils;->ASSETS_URL_PREFIX_HELPS:Ljava/lang/String;

    return-void
.end method

.method public static forAndroidQualifier(Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "-r"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/LocalizationUtils;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 71
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 73
    .local v0, "lang":Ljava/lang/String;
    const-string v2, "tl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 74
    const-string v0, "fil"

    .line 76
    :cond_0
    array-length v2, v1

    if-le v2, v4, :cond_1

    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v4

    invoke-direct {v2, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getHtmlFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "fileString"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 32
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 33
    .local v7, "localeLanguage":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    .line 35
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "localeCountry":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    sget-object v9, Lcom/nuance/swype/util/LocalizationUtils;->HELPS_SUBFOLDER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v3, "helps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-r"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "androidCode":Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-static {p0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "filename":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 67
    .end local v0    # "androidCode":Ljava/lang/String;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "helps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "localeCountry":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 43
    .restart local v6    # "localeCountry":Ljava/lang/String;
    :catch_0
    move-exception v8

    new-instance v4, Lcom/nuance/swype/input/LanguageList;

    invoke-direct {v4, p1}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 44
    .local v4, "languagelist":Lcom/nuance/swype/input/LanguageList;
    invoke-virtual {v4}, Lcom/nuance/swype/input/LanguageList;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/nuance/swype/input/LanguageTable;->getLanguageAndroidCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "defaultAndroidCode":Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {p0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 57
    .end local v1    # "defaultAndroidCode":Ljava/lang/String;
    .end local v4    # "languagelist":Lcom/nuance/swype/input/LanguageList;
    .restart local v3    # "helps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v7, v8, v10

    invoke-static {p0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .restart local v2    # "filename":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 64
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "helps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "localeCountry":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/nuance/swype/input/LanguageList;

    invoke-direct {v4, p1}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 65
    .restart local v4    # "languagelist":Lcom/nuance/swype/input/LanguageList;
    invoke-virtual {v4}, Lcom/nuance/swype/input/LanguageList;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/nuance/swype/input/LanguageTable;->getLanguageAndroidCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .restart local v1    # "defaultAndroidCode":Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {p0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getHtmlFileUrl(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "fileString"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nuance/swype/util/LocalizationUtils;->ASSETS_URL_PREFIX_HELPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/nuance/swype/util/LocalizationUtils;->getHtmlFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
