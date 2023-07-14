.class public Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;
.super Lcom/nuance/swype/input/emoji/EmojiCategory;
.source "EmojiCategoryStandard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nuance/swype/input/emoji/EmojiCategory",
        "<",
        "Lcom/nuance/swype/input/emoji/Emoji;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_HEX:I = 0x10

.field private static final COMMA_REGEX:Ljava/lang/String; = ","

.field private static final TYPE_INT:I = 0x0

.field private static final TYPE_STRING:I = 0x1

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final arrayRes:I

.field private final arrayType:I

.field private context:Landroid/content/Context;

.field private emojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "EmojiCategoryStandard"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arrayRes"    # I
    .param p3, "arrayType"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "iconResId"    # I

    .prologue
    .line 35
    invoke-direct {p0, p4, p5}, Lcom/nuance/swype/input/emoji/EmojiCategory;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->context:Landroid/content/Context;

    .line 37
    iput p2, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->arrayRes:I

    .line 38
    iput p3, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->arrayType:I

    .line 39
    return-void
.end method

.method private load()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->arrayType:I

    packed-switch v1, :pswitch_data_0

    .line 72
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Bad array type"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 66
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->loadCodePoints(Landroid/content/res/Resources;)V

    .line 70
    :goto_0
    return-void

    .line 69
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->loadStrings(Landroid/content/res/Resources;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadCodePoints(Landroid/content/res/Resources;)V
    .locals 13
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 78
    sget-object v6, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "loadCodePoints(): called :: arrayType="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->arrayType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 80
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v5, "sb":Ljava/lang/StringBuffer;
    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->arrayRes:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "resources":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->emojis:Ljava/util/List;

    .line 84
    array-length v8, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v3, v4, v7

    .line 85
    .local v3, "resource":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 87
    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_0

    aget-object v11, v9, v6

    .line 88
    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "code":I
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 92
    .end local v0    # "code":I
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "emojiString":Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getEmoji(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v1

    .line 94
    .local v1, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->isCanDisplay()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 95
    sget-object v6, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "loadCodePoints: called "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " :: added emoji ::  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 96
    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiLoader;->convertToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " :: emoji size=="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 97
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinToneList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " :: emoji size=="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 98
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 95
    invoke-interface {v6, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 99
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->emojis:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto/16 :goto_0

    .line 102
    .end local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    .end local v2    # "emojiString":Ljava/lang/String;
    .end local v3    # "resource":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private loadStrings(Landroid/content/res/Resources;)V
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x0

    .line 105
    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->arrayRes:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "strings":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->emojis:Ljava/util/List;

    .line 107
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    .line 108
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Lcom/nuance/swype/input/emoji/Emoji;

    const-string/jumbo v6, "string"

    const/4 v7, 0x1

    invoke-direct {v1, v6, v7}, Lcom/nuance/swype/input/emoji/Emoji;-><init>(Ljava/lang/String;Z)V

    .line 109
    .local v1, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {v1, v4}, Lcom/nuance/swype/input/emoji/Emoji;->setSkinToneSupport(Z)V

    .line 110
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiCode(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/emoji/Emoji;->setEmojiDisplayCode(Ljava/lang/String;)V

    .line 112
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->emojis:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_0
    return-void
.end method


# virtual methods
.method public getEmojiList()Ljava/util/List;
    .locals 4
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
    .line 49
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "EmojiCategoryStandard()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "getEmojiList(): called"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->emojis:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->load()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->emojis:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;->getEmojiList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDynamic()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public isRecentCategory()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
