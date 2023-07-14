.class public final Lcom/nuance/android/util/ThemedResources;
.super Landroid/content/res/Resources;
.source "ThemedResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/android/util/ThemedResources$ThemedColorStateList;
    }
.end annotation


# static fields
.field private static instance:Lcom/nuance/android/util/ThemedResources;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final imeApp:Lcom/nuance/swype/input/IMEApplication;

.field private rIdMap:Landroid/util/SparseIntArray;

.field private themedContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "ThemedResources"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/util/ThemedResources;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/android/util/ThemedResources;->rIdMap:Landroid/util/SparseIntArray;

    .line 58
    invoke-static {p4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/util/ThemedResources;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 59
    iget-object v0, p0, Lcom/nuance/android/util/ThemedResources;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/util/ThemedResources;->themedContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static from(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/Context;)Lcom/nuance/android/util/ThemedResources;
    .locals 1
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/nuance/android/util/ThemedResources;->instance:Lcom/nuance/android/util/ThemedResources;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/nuance/android/util/ThemedResources;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nuance/android/util/ThemedResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/android/util/ThemedResources;->instance:Lcom/nuance/android/util/ThemedResources;

    .line 44
    :cond_0
    sget-object v0, Lcom/nuance/android/util/ThemedResources;->instance:Lcom/nuance/android/util/ThemedResources;

    return-object v0
.end method

.method private getDrawableFromThemeApk(I)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 160
    iget-object v3, p0, Lcom/nuance/android/util/ThemedResources;->rIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 162
    .local v0, "idInApk":I
    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    iget-object v3, p0, Lcom/nuance/android/util/ThemedResources;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    .line 1513
    sget-object v3, Lcom/nuance/swype/plugin/ThemeLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ThemeLoader.getDrawableInThemeApk(): res name is: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getResourceName$47921032()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1515
    invoke-static {}, Lcom/nuance/swype/plugin/MainApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/MainApkResourceBroker;

    move-result-object v3

    iget-boolean v3, v3, Lcom/nuance/swype/plugin/MainApkResourceBroker;->mHasInited:Z

    if-eqz v3, :cond_0

    .line 1517
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v3

    iget-boolean v3, v3, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mHasInited:Z

    if-eqz v3, :cond_0

    .line 1519
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->getInstance()Lcom/nuance/swype/plugin/ThemeApkResourceBroker;

    move-result-object v3

    iget-object v3, v3, Lcom/nuance/swype/plugin/ThemeApkResourceBroker;->mResourceAccessor:Lcom/nuance/swype/plugin/ThemeResourceAccessor;

    .line 2061
    iget-object v3, v3, Lcom/nuance/swype/plugin/ThemeResourceAccessor;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1519
    :cond_0
    :goto_0
    return-object v2

    .line 166
    :catch_0
    move-exception v3

    const-string/jumbo v3, "Failed to get Drawable from apk: %s. Res name is: %s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/nuance/android/util/ThemedResources;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 168
    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getResourceName$47921032()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 166
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "message":Ljava/lang/String;
    sget-object v3, Lcom/nuance/android/util/ThemedResources;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-interface {v3, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static onConfigChanged()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/android/util/ThemedResources;->instance:Lcom/nuance/android/util/ThemedResources;

    .line 53
    return-void
.end method

.method public static onThemeChanged()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/android/util/ThemedResources;->instance:Lcom/nuance/android/util/ThemedResources;

    .line 49
    return-void
.end method


# virtual methods
.method public final getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/nuance/android/util/ThemedResources;->themedContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 77
    .local v1, "xml":Landroid/content/res/XmlResourceParser;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 78
    new-instance v2, Lcom/nuance/android/util/ColorStateListParser;

    iget-object v3, p0, Lcom/nuance/android/util/ThemedResources;->themedContext:Landroid/content/Context;

    invoke-direct {v2, v1, v3}, Lcom/nuance/android/util/ColorStateListParser;-><init>(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)V

    invoke-static {p0, v2}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 80
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/nuance/android/util/ThemedResources;->themedContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/nuance/android/util/ThemedResources$ThemedColorStateList;->createFromXml(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 82
    .end local v1    # "xml":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/nuance/android/util/ThemedResources;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception when loading downloadable theme: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 84
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Loading downloadable theme: Failed to load ColorStateList from resource "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/nuance/android/util/ThemedResources;->getDrawableFromThemeApk(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public final getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/nuance/android/util/ThemedResources;->getDrawableFromThemeApk(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public final obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nuance/android/util/ThemedResources;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/android/util/ThemedResources;->rIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->buildResourceIdMap(Landroid/util/AttributeSet;Landroid/util/SparseIntArray;)Z

    .line 68
    iget-object v0, p0, Lcom/nuance/android/util/ThemedResources;->themedContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 5
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v2, p0, Lcom/nuance/android/util/ThemedResources;->rIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 192
    .local v0, "idInApk":I
    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/nuance/android/util/ThemedResources;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    invoke-static {v0}, Lcom/nuance/swype/plugin/ThemeLoader;->openRawResourceInThemeApk(I)Ljava/io/InputStream;

    move-result-object v1

    .line 195
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 199
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lcom/nuance/android/util/ThemedResources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 205
    :catch_0
    move-exception v2

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to load Raw resource from apk: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method
