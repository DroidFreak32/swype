.class public Lcom/nuance/swype/input/LocaleSettings;
.super Ljava/lang/Object;
.source "LocaleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/LocaleSettings$Settings;
    }
.end annotation


# static fields
.field private static final TAG_LOCALE:Ljava/lang/String; = "Locale"

.field private static instance:Lcom/nuance/swype/input/LocaleSettings;

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private localeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Lcom/nuance/swype/input/LocaleSettings$Settings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string/jumbo v0, "LocaleSettings"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/LocaleSettings;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/LocaleSettings;->loadSettings(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public static declared-synchronized from(Landroid/content/Context;)Lcom/nuance/swype/input/LocaleSettings;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-class v1, Lcom/nuance/swype/input/LocaleSettings;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/nuance/swype/input/LocaleSettings;->instance:Lcom/nuance/swype/input/LocaleSettings;

    if-nez v0, :cond_e

    .line 44
    new-instance v0, Lcom/nuance/swype/input/LocaleSettings;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/LocaleSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/swype/input/LocaleSettings;->instance:Lcom/nuance/swype/input/LocaleSettings;

    .line 46
    :cond_e
    sget-object v0, Lcom/nuance/swype/input/LocaleSettings;->instance:Lcom/nuance/swype/input/LocaleSettings;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadSettings(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$xml;->locale_settings:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 52
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/nuance/swype/input/LocaleSettings;->localeMap:Ljava/util/Map;

    .line 54
    :cond_11
    :goto_11
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "event":I
    const/4 v9, 0x1

    if-eq v4, v9, :cond_61

    .line 56
    const/4 v9, 0x2

    if-ne v4, v9, :cond_11

    .line 57
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v9, "Locale"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 59
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 60
    .local v1, "attr":Landroid/util/AttributeSet;
    sget-object v9, Lcom/nuance/swype/input/R$styleable;->Locale:[I

    invoke-virtual {p1, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v9, Lcom/nuance/swype/input/R$styleable;->Locale_language_code:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "language":Ljava/lang/String;
    sget v9, Lcom/nuance/swype/input/R$styleable;->Locale_country_code:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "country":Ljava/lang/String;
    sget v9, Lcom/nuance/swype/input/R$styleable;->Locale_currencyType:I

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 64
    .local v3, "currencyType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    iget-object v9, p0, Lcom/nuance/swype/input/LocaleSettings;->localeMap:Ljava/util/Map;

    new-instance v10, Ljava/util/Locale;

    invoke-direct {v10, v6, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/nuance/swype/input/LocaleSettings$Settings;

    invoke-direct {v11, v3}, Lcom/nuance/swype/input/LocaleSettings$Settings;-><init>(I)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_11

    .line 71
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v2    # "country":Ljava/lang/String;
    .end local v3    # "currencyType":I
    .end local v4    # "event":I
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tag":Ljava/lang/String;
    :catch_58
    move-exception v5

    .line 72
    .local v5, "ex":Ljava/lang/Exception;
    sget-object v9, Lcom/nuance/swype/input/LocaleSettings;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v10, "Error reading gestures file"

    invoke-interface {v9, v10, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 74
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_61
    return-void
.end method


# virtual methods
.method public getCurrencyType(Ljava/util/Locale;)I
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/nuance/swype/input/LocaleSettings;->localeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/LocaleSettings$Settings;

    .line 39
    .local v0, "settings":Lcom/nuance/swype/input/LocaleSettings$Settings;
    if-eqz v0, :cond_f

    # getter for: Lcom/nuance/swype/input/LocaleSettings$Settings;->currencyType:I
    invoke-static {v0}, Lcom/nuance/swype/input/LocaleSettings$Settings;->access$000(Lcom/nuance/swype/input/LocaleSettings$Settings;)I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method
