.class public Lcom/nuance/swype/input/emoji/EmojiLoader;
.super Ljava/lang/Object;
.source "EmojiLoader.java"


# static fields
.field private static final BASE_HEX:I = 0x10

.field private static final COMMA_REGEX:Ljava/lang/String; = ","

.field private static final PIPE_REGEX:Ljava/lang/String; = "\\|"

.field private static final emojiFilter:Lcom/nuance/input/swypecorelib/EmojiFilter;

.field private static emojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private static final filterEmojis:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final filterSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mContext:Landroid/content/Context;

.field private static mEmojis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Z

.field private static final problemBins:Ljava/util/Set;

.field private static final skinModifiers:Ljava/util/List;

.field private static totalRenders:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 33
    const-string/jumbo v0, "EmojiFilter"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiLoader;->emojis:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const v2, 0x1f3fb

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x1f3fc

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x1f3fd

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x1f3fe

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x1f3ff

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 41
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiLoader;->skinModifiers:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1F3FB"

    aput-object v2, v1, v4

    const-string/jumbo v2, "1F3FC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1F3FD"

    aput-object v2, v1, v5

    const-string/jumbo v2, "1F3FE"

    aput-object v2, v1, v6

    const-string/jumbo v2, "1F3FF"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiLoader;->filterEmojis:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiLoader;->filterSet:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1995\u00aa\u02b2"

    aput-object v2, v1, v4

    const-string/jumbo v2, "1995\u02b2"

    aput-object v2, v1, v3

    const-string/jumbo v2, "1995\u02b7"

    aput-object v2, v1, v5

    const-string/jumbo v2, "1995\u02e3"

    aput-object v2, v1, v6

    const-string/jumbo v2, "1995\u02b2\u02b7"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "2010\u02b7"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "2010\u02e3"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "2014\u02e3"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiLoader;->problemBins:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    .line 85
    sput-boolean v4, Lcom/nuance/swype/input/emoji/EmojiLoader;->mInitialized:Z

    .line 88
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiLoader$1;

    invoke-direct {v0}, Lcom/nuance/swype/input/emoji/EmojiLoader$1;-><init>()V

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiLoader;->emojiFilter:Lcom/nuance/input/swypecorelib/EmojiFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canRenderEmoji(Ljava/lang/String;)Z
    .registers 10
    .param p0, "testRender"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 432
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 434
    .local v0, "paint":Landroid/graphics/Paint;
    :try_start_7
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_a} :catch_c

    move-result v3

    .line 450
    :cond_b
    :goto_b
    return v3

    .line 436
    :catch_c
    move-exception v5

    sget v5, Lcom/nuance/swype/input/emoji/EmojiLoader;->totalRenders:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/nuance/swype/input/emoji/EmojiLoader;->totalRenders:I

    .line 437
    sget-object v5, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v7, "canRenderEmoji: hasGlyph not available"

    aput-object v7, v6, v4

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 439
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 440
    .local v1, "testRenderWidth":F
    sget-object v5, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "canRenderEmoji: testRenderWidth: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 443
    const-string/jumbo v5, "\ufffe"

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 444
    .local v2, "tofuWidth":F
    sget-object v5, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "canRenderEmoji: tofuWidth: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 450
    cmpl-float v5, v1, v2

    if-gtz v5, :cond_b

    move v3, v4

    goto :goto_b
.end method

.method static canShowEmoji(Ljava/lang/String;)Z
    .registers 5
    .param p0, "emojiString"    # Ljava/lang/String;

    .prologue
    .line 388
    sget-boolean v1, Lcom/nuance/swype/input/emoji/EmojiLoader;->mInitialized:Z

    if-nez v1, :cond_c

    .line 389
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "canShowEmoji: not initialized! can\'t filter emoji for display"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 392
    :cond_c
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/Emoji;

    .line 394
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v0, :cond_1b

    .line 395
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->isRenderable()Z

    move-result v1

    .line 404
    :goto_1a
    return v1

    .line 403
    :cond_1b
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "canShowEmoji: Unknown emoji: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nuance/swype/input/emoji/EmojiLoader;->convertToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 404
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private static convertToEmojiString([I)Ljava/lang/String;
    .registers 5
    .param p0, "codePoints"    # [I

    .prologue
    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_11

    aget v0, p0, v2

    .line 424
    .local v0, "i":I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 426
    .end local v0    # "i":I
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static convertToHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "emojiString"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 411
    .local v1, "emojiStringCodes":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 412
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_a
    if-ge v3, v2, :cond_31

    .line 413
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 414
    .local v0, "codepoint":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 416
    goto :goto_a

    .line 417
    .end local v0    # "codepoint":I
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static findEmojiForSkinTone(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;
    .registers 4
    .param p0, "emojiCode"    # Ljava/lang/String;

    .prologue
    .line 369
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getBaseHexCode(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 370
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/EmojiLoader;->convertToEmojiString([I)Ljava/lang/String;

    move-result-object p0

    .line 371
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/Emoji;

    .line 372
    return-object v0
.end method

.method private static getBaseHexCode(Ljava/lang/String;)I
    .registers 2
    .param p0, "unicode"    # Ljava/lang/String;

    .prologue
    .line 492
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 493
    return v0
.end method

.method public static getDefaultSkinToneCode(Landroid/content/Context;Lcom/nuance/swype/input/emoji/Emoji;Lcom/nuance/swype/input/emoji/EmojiCacheManager;)Lcom/nuance/swype/input/emoji/Emoji;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            "Lcom/nuance/swype/input/emoji/EmojiCacheManager",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/nuance/swype/input/emoji/Emoji;"
        }
    .end annotation

    .prologue
    .line 498
    .local p2, "emojiCacheManager":Lcom/nuance/swype/input/emoji/EmojiCacheManager;, "Lcom/nuance/swype/input/emoji/EmojiCacheManager<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiCode()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "emojiCode":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->getObjectFromCache(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 502
    invoke-virtual {p2, v2}, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->getObjectFromCache(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 512
    .local v0, "defaultSkinToneValue":I
    :cond_14
    :goto_14
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v6

    if-nez v6, :cond_30

    move-object v1, p1

    .line 528
    .end local p1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .local v1, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :goto_1b
    return-object v1

    .line 504
    .end local v0    # "defaultSkinToneValue":I
    .end local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .restart local p1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_1c
    invoke-static {p0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    .line 505
    .local v5, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/nuance/swype/input/UserPreferences;->getCachedEmojiSkinTone(Ljava/lang/String;I)I

    move-result v0

    .line 506
    .restart local v0    # "defaultSkinToneValue":I
    if-nez v0, :cond_14

    .line 507
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getDefaultEmojiSkin()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v6

    .line 508
    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v0

    goto :goto_14

    .line 515
    .end local v5    # "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    :cond_30
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v6

    if-ne v0, v6, :cond_3c

    move-object v1, p1

    .line 516
    .end local p1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .restart local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    goto :goto_1b

    .line 519
    .end local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .restart local p1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_3c
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinToneList()Ljava/util/List;

    move-result-object v3

    .line 520
    .local v3, "emojiSkinToneList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_72

    .line 522
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v6

    if-eqz v6, :cond_74

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v6

    if-ne v0, v6, :cond_74

    .line 523
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {p1, v6}, Lcom/nuance/swype/input/emoji/Emoji;->setLastUsedSkinTone(Lcom/nuance/swype/input/emoji/Emoji;)V

    .line 524
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    check-cast p1, Lcom/nuance/swype/input/emoji/Emoji;

    .restart local p1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_72
    move-object v1, p1

    .line 528
    .end local p1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .restart local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    goto :goto_1b

    .line 520
    .end local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .restart local p1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_41
.end method

.method public static getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;
    .registers 3
    .param p0, "emojiString"    # Ljava/lang/String;

    .prologue
    .line 485
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/Emoji;

    .line 486
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v0, :cond_b

    .line 489
    .end local v0    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :goto_a
    return-object v0

    .restart local v0    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static getEmoji(Ljava/lang/String;ZIZ)Lcom/nuance/swype/input/emoji/Emoji;
    .registers 5
    .param p0, "resourceType"    # Ljava/lang/String;
    .param p1, "isRenderable"    # Z
    .param p2, "skinColorCode"    # I
    .param p3, "hasSkinModifier"    # Z

    .prologue
    .line 376
    new-instance v0, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swype/input/emoji/Emoji;-><init>(Ljava/lang/String;Z)V

    .line 377
    .local v0, "emojiInstance":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v0, p2}, Lcom/nuance/swype/input/emoji/Emoji;->setDefaultSkinToneColor(I)V

    .line 378
    invoke-virtual {v0, p3}, Lcom/nuance/swype/input/emoji/Emoji;->setSkinToneSupport(Z)V

    .line 379
    return-object v0
.end method

.method public static getEmojiList()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 457
    sget-object v7, Lcom/nuance/swype/input/emoji/EmojiLoader;->emojis:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 458
    sget-object v7, Lcom/nuance/swype/input/emoji/EmojiLoader;->emojis:Ljava/util/List;

    .line 481
    .local v0, "code":I
    .local v1, "codePoints":[I
    .local v3, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .local v4, "emoji_unicode":Ljava/lang/String;
    .local v5, "i":I
    :goto_c
    return-object v7

    .line 460
    .end local v0    # "code":I
    .end local v1    # "codePoints":[I
    .end local v3    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .end local v4    # "emoji_unicode":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_d
    sget-object v7, Lcom/nuance/swype/input/emoji/EmojiLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->default_emoji_unicode:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 461
    .restart local v4    # "emoji_unicode":Ljava/lang/String;
    invoke-static {v4}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getBaseHexCode(Ljava/lang/String;)I

    move-result v0

    .line 462
    .restart local v0    # "code":I
    sget-object v7, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v11, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "init: getEmojiList() : caalled >>>>>>>> code =="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 463
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 464
    .restart local v1    # "codePoints":[I
    aput v0, v1, v12

    .line 465
    new-instance v3, Lcom/nuance/swype/input/emoji/Emoji;

    const-string/jumbo v7, "emoji"

    invoke-direct {v3, v7, v11}, Lcom/nuance/swype/input/emoji/Emoji;-><init>(Ljava/lang/String;Z)V

    .line 466
    .restart local v3    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiCode(Ljava/lang/String;)V

    .line 467
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/EmojiLoader;->convertToEmojiString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 468
    const/4 v7, -0x1

    invoke-virtual {v3, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setDefaultSkinToneColor(I)V

    .line 469
    sget-object v7, Lcom/nuance/swype/input/emoji/EmojiLoader;->emojis:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_57
    sget-object v7, Lcom/nuance/swype/input/emoji/EmojiLoader;->skinModifiers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8a

    .line 472
    sget-object v7, Lcom/nuance/swype/input/emoji/EmojiLoader;->skinModifiers:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 473
    .local v6, "skin_tone_code":I
    aput v6, v1, v11

    .line 474
    new-instance v3, Lcom/nuance/swype/input/emoji/Emoji;

    .end local v3    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    const-string/jumbo v7, "emoji"

    invoke-direct {v3, v7, v11}, Lcom/nuance/swype/input/emoji/Emoji;-><init>(Ljava/lang/String;Z)V

    .line 475
    .restart local v3    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiCode(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v3, v6}, Lcom/nuance/swype/input/emoji/Emoji;->setDefaultSkinToneColor(I)V

    .line 477
    invoke-static {v1}, Lcom/nuance/swype/input/emoji/EmojiLoader;->convertToEmojiString([I)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "displayCode":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 479
    sget-object v7, Lcom/nuance/swype/input/emoji/EmojiLoader;->emojis:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 481
    .end local v2    # "displayCode":Ljava/lang/String;
    .end local v6    # "skin_tone_code":I
    :cond_8a
    sget-object v7, Lcom/nuance/swype/input/emoji/EmojiLoader;->emojis:Ljava/util/List;

    goto :goto_c
.end method

.method public static getFilter()Lcom/nuance/input/swypecorelib/EmojiFilter;
    .registers 1

    .prologue
    .line 384
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiLoader;->emojiFilter:Lcom/nuance/input/swypecorelib/EmojiFilter;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 37
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    sget-boolean v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->mInitialized:Z

    if-eqz v29, :cond_d

    .line 98
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v30, "init: already initialized, returning"

    invoke-interface/range {v29 .. v30}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 366
    :goto_c
    return-void

    .line 101
    :cond_d
    sput-object p0, Lcom/nuance/swype/input/emoji/EmojiLoader;->mContext:Landroid/content/Context;

    .line 105
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v13, "knownRenderableBins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/16 v25, 0x0

    .line 112
    .local v25, "skinModifierRenderable":Ljava/lang/Boolean;
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v23, "sbLoader":Ljava/lang/StringBuffer;
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v22, "sbFilter":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/nuance/swype/input/R$array;->emoji:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 124
    .local v21, "resources":[Ljava/lang/String;
    const/16 v29, 0x0

    sput v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->totalRenders:I

    .line 125
    const/16 v27, 0x0

    .line 126
    .local v27, "totalEmojiSupported":I
    const/16 v28, 0x0

    .line 127
    .local v28, "totalEmojiUnsupported":I
    const/16 v26, 0x0

    .line 129
    .local v26, "totalEmojiErrors":I
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->filterEmojis:Ljava/util/Set;

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_3a
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_85

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 130
    const-string/jumbo v31, ","

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    const/16 v29, 0x0

    :goto_58
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_6e

    aget-object v33, v31, v29

    .line 131
    const/16 v34, 0x10

    invoke-static/range {v33 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 132
    .local v3, "code":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 130
    add-int/lit8 v29, v29, 0x1

    goto :goto_58

    .line 134
    .end local v3    # "code":I
    :cond_6e
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->filterSet:Ljava/util/Set;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_3a

    .line 138
    :cond_85
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    const/16 v29, 0x0

    move/from16 v30, v29

    :goto_8e
    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_513

    aget-object v16, v21, v30

    .line 149
    .local v16, "resource":Ljava/lang/String;
    const-string/jumbo v29, "\\|"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 151
    .local v18, "resourceBinKeyAndCodes":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    const/16 v32, 0x3

    move/from16 v0, v29

    move/from16 v1, v32

    if-eq v0, v1, :cond_d2

    .line 152
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "init: Invalid format: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 153
    add-int/lit8 v26, v26, 0x1

    .line 138
    :goto_cd
    add-int/lit8 v29, v30, 0x1

    move/from16 v30, v29

    goto :goto_8e

    .line 157
    :cond_d2
    const/16 v29, 0x0

    aget-object v17, v18, v29

    .line 158
    .local v17, "resourceBinKey":Ljava/lang/String;
    const/16 v29, 0x1

    aget-object v20, v18, v29

    .line 159
    .local v20, "resourceType":Ljava/lang/String;
    const/16 v29, 0x2

    aget-object v19, v18, v29

    .line 161
    .local v19, "resourceCodes":Ljava/lang/String;
    const/4 v14, 0x0

    .line 162
    .local v14, "numCodes":I
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 163
    const/4 v10, 0x0

    .line 164
    .local v10, "hasSkinModifier":Z
    const/4 v11, 0x0

    .line 165
    .local v11, "isFilterEmoji":Z
    const/4 v6, 0x0

    .line 166
    .local v6, "emojiCode":Ljava/lang/String;
    const/16 v24, -0x1

    .line 167
    .local v24, "skinColorCode":I
    sget-object v8, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->NORMAL:Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    .line 168
    .local v8, "emojiSkinType":Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    const/4 v9, 0x1

    .line 169
    .local v9, "hasEmojiCode":Z
    const-string/jumbo v29, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    const/16 v29, 0x0

    :goto_102
    move/from16 v0, v29

    move/from16 v1, v33

    if-ge v0, v1, :cond_133

    aget-object v4, v32, v29

    .line 170
    .local v4, "codeString":Ljava/lang/String;
    const/16 v34, 0x10

    move/from16 v0, v34

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 171
    .restart local v3    # "code":I
    sget-object v34, Lcom/nuance/swype/input/emoji/EmojiLoader;->skinModifiers:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_125

    .line 172
    invoke-static {v3}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinToneFromCode(I)Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v8

    .line 173
    const/4 v10, 0x1

    .line 174
    move/from16 v24, v3

    .line 176
    :cond_125
    if-eqz v9, :cond_129

    .line 177
    const/4 v9, 0x0

    .line 178
    move-object v6, v4

    .line 180
    :cond_129
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 181
    add-int/lit8 v14, v14, 0x1

    .line 169
    add-int/lit8 v29, v29, 0x1

    goto :goto_102

    .line 199
    .end local v3    # "code":I
    .end local v4    # "codeString":Ljava/lang/String;
    :cond_133
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "emojiDisplayCode":Ljava/lang/String;
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->filterSet:Ljava/util/Set;

    move-object/from16 v0, v29

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_142

    .line 202
    const/4 v11, 0x1

    .line 205
    :cond_142
    const-string/jumbo v29, "text*"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1a4

    .line 207
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v10}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;ZIZ)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v5

    .line 208
    .local v5, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiCode(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 210
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    move-object/from16 v0, v29

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "init: filtering out "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " emoji "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 212
    add-int/lit8 v28, v28, 0x1

    .line 213
    goto/16 :goto_cd

    .line 216
    .end local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_1a4
    if-eqz v11, :cond_1ec

    .line 218
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v10}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;ZIZ)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v5

    .line 219
    .restart local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiCode(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 221
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    move-object/from16 v0, v29

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "init: explicitly filtering out emoji "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 223
    add-int/lit8 v28, v28, 0x1

    .line 224
    goto/16 :goto_cd

    .line 226
    .end local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_1ec
    const/16 v29, 0x1

    move/from16 v0, v29

    if-le v14, v0, :cond_244

    if-nez v10, :cond_244

    .line 227
    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0x17

    move/from16 v0, v29

    move/from16 v1, v32

    if-gt v0, v1, :cond_244

    .line 228
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v10}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;ZIZ)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v5

    .line 229
    .restart local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiCode(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 231
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    move-object/from16 v0, v29

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "init: explicitly filtering out emoji "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 233
    add-int/lit8 v28, v28, 0x1

    .line 234
    goto/16 :goto_cd

    .line 241
    .end local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_244
    if-eqz v10, :cond_2c5

    .line 242
    if-nez v25, :cond_279

    .line 243
    invoke-static {v7}, Lcom/nuance/swype/input/emoji/EmojiLoader;->canRenderEmoji(Ljava/lang/String;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    .line 244
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "init: skinModifierRenderable: "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 246
    :cond_279
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_2c5

    .line 248
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v10}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;ZIZ)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v5

    .line 249
    .restart local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiCode(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 251
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    move-object/from16 v0, v29

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "init: rapidly binning out skin modifier emoji "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 253
    add-int/lit8 v28, v28, 0x1

    .line 254
    goto/16 :goto_cd

    .line 290
    .end local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_2c5
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->problemBins:Ljava/util/Set;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_32f

    .line 292
    const/4 v12, 0x0

    .line 298
    .local v12, "isRenderable":Ljava/lang/Boolean;
    :goto_2d2
    if-eqz v12, :cond_338

    .line 299
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_3e5

    .line 301
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v10}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;ZIZ)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v5

    .line 302
    .restart local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiCode(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 304
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    move-object/from16 v0, v29

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "init: rapidly binning out unrenderable emoji "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " from "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 306
    add-int/lit8 v28, v28, 0x1

    .line 307
    goto/16 :goto_cd

    .line 295
    .end local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .end local v12    # "isRenderable":Ljava/lang/Boolean;
    :cond_32f
    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .restart local v12    # "isRenderable":Ljava/lang/Boolean;
    goto :goto_2d2

    .line 312
    :cond_338
    invoke-static {v7}, Lcom/nuance/swype/input/emoji/EmojiLoader;->canRenderEmoji(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_3a0

    .line 314
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v10}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;ZIZ)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v5

    .line 315
    .restart local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiCode(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 317
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    move-object/from16 v0, v29

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "init: CANNOT render "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " from "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 320
    add-int/lit8 v28, v28, 0x1

    .line 321
    goto/16 :goto_cd

    .line 323
    .end local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_3a0
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "init: CAN render "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " from "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 327
    :cond_3e5
    const/16 v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v10}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;ZIZ)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v5

    .line 328
    .restart local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiCode(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v5, v7}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v5, v8}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiSkinType(Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;)V

    .line 334
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string/jumbo v34, "EmojiLoader()"

    aput-object v34, v32, v33

    const/16 v33, 0x1

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "called : code=="

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/nuance/swype/input/emoji/EmojiLoader;->convertToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " , emoji="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 337
    if-eqz v10, :cond_4ce

    .line 338
    invoke-static {v6}, Lcom/nuance/swype/input/emoji/EmojiLoader;->findEmojiForSkinTone(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v15

    .line 339
    .local v15, "oldEmojiInstance":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v15, :cond_492

    .line 340
    invoke-virtual {v15, v10}, Lcom/nuance/swype/input/emoji/Emoji;->setSkinToneSupport(Z)V

    .line 341
    invoke-virtual {v15, v5}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiSkinToneList(Lcom/nuance/swype/input/emoji/Emoji;)V

    .line 342
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/emoji/Emoji;->setSkinTone(Z)V

    .line 343
    invoke-virtual {v5, v15}, Lcom/nuance/swype/input/emoji/Emoji;->setParentEmoji(Lcom/nuance/swype/input/emoji/Emoji;)V

    .line 344
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string/jumbo v34, "init()"

    aput-object v34, v32, v33

    const/16 v33, 0x1

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, " if called : emoji "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " from "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v15}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 350
    .end local v15    # "oldEmojiInstance":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_492
    :goto_492
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, "init: added emoji "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " from "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 351
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_cd

    .line 347
    :cond_4ce
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string/jumbo v34, "init()"

    aput-object v34, v32, v33

    const/16 v33, 0x1

    new-instance v34, Ljava/lang/StringBuilder;

    const-string/jumbo v35, " else called : emoji "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, " from "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 348
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->mEmojis:Ljava/util/Map;

    move-object/from16 v0, v29

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_492

    .line 354
    .end local v5    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .end local v6    # "emojiCode":Ljava/lang/String;
    .end local v7    # "emojiDisplayCode":Ljava/lang/String;
    .end local v8    # "emojiSkinType":Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    .end local v9    # "hasEmojiCode":Z
    .end local v10    # "hasSkinModifier":Z
    .end local v11    # "isFilterEmoji":Z
    .end local v12    # "isRenderable":Ljava/lang/Boolean;
    .end local v14    # "numCodes":I
    .end local v16    # "resource":Ljava/lang/String;
    .end local v17    # "resourceBinKey":Ljava/lang/String;
    .end local v18    # "resourceBinKeyAndCodes":[Ljava/lang/String;
    .end local v19    # "resourceCodes":Ljava/lang/String;
    .end local v20    # "resourceType":Ljava/lang/String;
    .end local v24    # "skinColorCode":I
    :cond_513
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "init: totalRenders: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v33, Lcom/nuance/swype/input/emoji/EmojiLoader;->totalRenders:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-interface/range {v29 .. v30}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 355
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "init: totalEmojiSupported: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-interface/range {v29 .. v30}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 356
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "init: totalEmojiUnsupported: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-interface/range {v29 .. v30}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 358
    if-lez v26, :cond_5a1

    .line 359
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "init: totalEmojiErrors: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 365
    :goto_59b
    const/16 v29, 0x1

    sput-boolean v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->mInitialized:Z

    goto/16 :goto_c

    .line 362
    :cond_5a1
    sget-object v29, Lcom/nuance/swype/input/emoji/EmojiLoader;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "init: totalEmojiErrors: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-interface/range {v29 .. v30}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_59b
.end method

.method public static isEmoji(Ljava/lang/String;)Z
    .registers 6
    .param p0, "emoji"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    if-nez p0, :cond_5

    .line 547
    :cond_4
    :goto_4
    return v2

    .line 537
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 541
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 542
    .local v1, "cursor":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 543
    .local v0, "ch":C
    invoke-static {p0, v1, v3}, Lcom/nuance/swype/util/EmojiUtils;->characterBefore(Ljava/lang/CharSequence;II)I

    move-result v4

    if-gt v4, v3, :cond_21

    invoke-static {v0}, Lcom/nuance/swype/util/EmojiUtils;->characterIsEmoji(C)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_21
    move v2, v3

    .line 544
    goto :goto_4
.end method
