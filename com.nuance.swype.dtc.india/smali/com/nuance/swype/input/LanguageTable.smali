.class public Lcom/nuance/swype/input/LanguageTable;
.super Ljava/lang/Object;
.source "LanguageTable.java"


# static fields
.field public static final LANG_INDEX_ANDROID_LANG_ID:I = 0x2

.field public static final LANG_INDEX_ENGLISH_NAME:I = 0x4

.field public static final LANG_INDEX_ISO_2LETTER_CODE:I = 0x0

.field public static final LANG_INDEX_ISO_FULL_CODE:I = 0x1

.field public static final LANG_INDEX_NATIVE_NAME:I = 0x5

.field public static final LANG_INDEX_XT9_LANG_ID:I = 0x3

.field private static final TAG_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field languageTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "LanguageTable"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/LanguageTable;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/nuance/swype/input/LanguageTable;->languageTable:Ljava/util/Map;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 53
    .local v7, "res":Landroid/content/res/Resources;
    const/4 v6, 0x0

    .line 55
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 56
    .local v5, "languageID":I
    const-string/jumbo v4, ""

    .line 58
    .local v4, "languageEnglishName":Ljava/lang/String;
    :try_start_0
    sget v9, Lcom/nuance/swype/input/R$xml;->inputmethodsconfig:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 59
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "event":I
    const/4 v9, 0x1

    if-eq v1, v9, :cond_3

    .line 60
    const/4 v9, 0x2

    if-ne v1, v9, :cond_2

    .line 61
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v9, "Language"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 64
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    sget-object v10, Lcom/nuance/swype/input/R$styleable;->XT9:[I

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v9, Lcom/nuance/swype/input/R$styleable;->XT9_language:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 67
    .local v3, "lang_values":[Ljava/lang/CharSequence;
    const/4 v9, 0x3

    aget-object v9, v3, v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 68
    const/4 v9, 0x4

    aget-object v9, v3, v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "event":I
    .end local v3    # "lang_values":[Ljava/lang/CharSequence;
    .end local v8    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    sget-object v9, Lcom/nuance/swype/input/LanguageTable;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    if-eqz v6, :cond_1

    .line 85
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 88
    .end local v2    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 71
    .restart local v1    # "event":I
    :cond_2
    if-ne v1, v11, :cond_0

    .line 72
    :try_start_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 74
    .restart local v8    # "tag":Ljava/lang/String;
    const-string/jumbo v9, "Language"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 75
    iget-object v9, p0, Lcom/nuance/swype/input/LanguageTable;->languageTable:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 81
    .end local v1    # "event":I
    .end local v8    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 82
    .local v2, "ex":Ljava/io/IOException;
    :try_start_3
    sget-object v9, Lcom/nuance/swype/input/LanguageTable;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    if-eqz v6, :cond_1

    .line 85
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 84
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "event":I
    :cond_3
    if-eqz v6, :cond_1

    .line 85
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 84
    .end local v1    # "event":I
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_4

    .line 85
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_4
    throw v9
.end method

.method public static getLanguageAndroidCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string/jumbo v0, ""

    .line 108
    .local v0, "androidCode":Ljava/lang/String;
    :try_start_0
    const-class v4, Lcom/nuance/swype/input/R$array;

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "language_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 110
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 111
    .local v1, "arrayId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 112
    .local v3, "r":Landroid/content/res/Resources;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 114
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    .end local v1    # "arrayId":I
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/nuance/swype/input/LanguageTable;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getLanguageAndroidCode() - Failure to get android code for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getLanguageID(Ljava/lang/String;)I
    .locals 1
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageTable;->languageTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/LanguageTable;->languageTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
