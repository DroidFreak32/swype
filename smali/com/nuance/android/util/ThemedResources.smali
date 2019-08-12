.class public final Lcom/nuance/android/util/ThemedResources;
.super Landroid/content/res/Resources;
.source "ThemedResources.java"


# static fields
.field private static instance:Lcom/nuance/android/util/ThemedResources;


# instance fields
.field private final imeApp:Lcom/nuance/swype/input/IMEApplication;

.field private themedContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 43
    invoke-static {p4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/util/ThemedResources;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 44
    iget-object v0, p0, Lcom/nuance/android/util/ThemedResources;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/android/util/ThemedResources;->themedContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static from(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/Context;)Lcom/nuance/android/util/ThemedResources;
    .locals 1
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/nuance/android/util/ThemedResources;->instance:Lcom/nuance/android/util/ThemedResources;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/nuance/android/util/ThemedResources;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nuance/android/util/ThemedResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/android/util/ThemedResources;->instance:Lcom/nuance/android/util/ThemedResources;

    .line 29
    :cond_0
    sget-object v0, Lcom/nuance/android/util/ThemedResources;->instance:Lcom/nuance/android/util/ThemedResources;

    return-object v0
.end method

.method public static onConfigChanged()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/android/util/ThemedResources;->instance:Lcom/nuance/android/util/ThemedResources;

    .line 38
    return-void
.end method

.method public static onThemeChanged()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/android/util/ThemedResources;->instance:Lcom/nuance/android/util/ThemedResources;

    .line 34
    return-void
.end method


# virtual methods
.method public final getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/nuance/android/util/ThemedResources;->themedContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 59
    .local v0, "xml":Landroid/content/res/XmlResourceParser;
    new-instance v1, Lcom/nuance/android/util/ColorStateListParser;

    iget-object v2, p0, Lcom/nuance/android/util/ThemedResources;->themedContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/nuance/android/util/ColorStateListParser;-><init>(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)V

    invoke-static {p0, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 61
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load ColorStateList from resource "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/android/util/ThemedResources;->themedContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method
