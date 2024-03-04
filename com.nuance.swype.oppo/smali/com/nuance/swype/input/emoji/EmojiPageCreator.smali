.class public Lcom/nuance/swype/input/emoji/EmojiPageCreator;
.super Ljava/lang/Object;
.source "EmojiPageCreator.java"


# instance fields
.field private arrayRefId:I

.field private pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiPage;",
            ">;"
        }
    .end annotation
.end field

.field private recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;Lcom/nuance/swype/input/emoji/RecentListManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    .param p3, "recentListManager"    # Lcom/nuance/swype/input/emoji/RecentListManager;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p2}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getArrayRefId()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->arrayRefId:I

    .line 24
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->pages:Ljava/util/List;

    .line 26
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getDisplayWidth()I

    move-result v0

    .line 27
    .local v0, "displayWidth":I
    invoke-virtual {p2}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->createRecentPage(Landroid/content/Context;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->createPages(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private computeMaxEmojisOnPage(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->emoji_key_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 71
    .local v1, "keyWidth":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$dimen;->emoji_key_horizontal_spacing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 72
    .local v0, "horizontalSpacing":F
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->getEmojiNumberOfRows(Landroid/content/Context;)I

    move-result v2

    .line 74
    .local v2, "numberOfRows":I
    int-to-float v3, p2

    add-float v4, v1, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 75
    mul-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    return v3
.end method

.method private createPages(Landroid/content/Context;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->arrayRefId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 44
    .local v3, "emojis":[I
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->computeMaxEmojisOnPage(Landroid/content/Context;I)I

    move-result v6

    .line 45
    .local v6, "maxEmojisOnPage":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v8, "sb":Ljava/lang/StringBuffer;
    new-instance v7, Lcom/nuance/swype/input/emoji/EmojiPage;

    invoke-direct {v7}, Lcom/nuance/swype/input/emoji/EmojiPage;-><init>()V

    .line 47
    .local v7, "page":Lcom/nuance/swype/input/emoji/EmojiPage;
    const/4 v1, 0x1

    .line 48
    .local v1, "count":I
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v2, v0, v4

    .line 50
    .local v2, "emoji":I
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 51
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/nuance/swype/input/emoji/EmojiPage;->addKey(Ljava/lang/String;)V

    .line 56
    if-le v1, v6, :cond_0

    .line 57
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->pages:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v7, Lcom/nuance/swype/input/emoji/EmojiPage;

    .end local v7    # "page":Lcom/nuance/swype/input/emoji/EmojiPage;
    invoke-direct {v7}, Lcom/nuance/swype/input/emoji/EmojiPage;-><init>()V

    .line 59
    .restart local v7    # "page":Lcom/nuance/swype/input/emoji/EmojiPage;
    const/4 v1, 0x1

    .line 48
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    .end local v2    # "emoji":I
    :cond_1
    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiPage;->getItemCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 65
    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->pages:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    return-void
.end method

.method private createRecentPage(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->pages:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/RecentListManager;->createPage()Lcom/nuance/swype/input/emoji/EmojiPage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public static getEmojiNumberOfRows(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->emoji_key_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 81
    .local v0, "keyHeight":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->emoji_key_vertical_spacing:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 82
    .local v4, "verticalSpacing":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$integer;->emoji_number_of_rows:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 83
    .local v2, "number":I
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IME;->getSpeechPopupRectInWindowCoord()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$dimen;->emoji_page_paddingTop:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float v1, v5, v6

    .line 87
    .local v1, "keyboardHeight":F
    cmpg-float v5, v1, v0

    if-gez v5, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->keyboard_forced_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/nuance/swype/input/R$dimen;->emoji_page_paddingTop:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float v1, v5, v6

    .line 93
    :cond_0
    add-float v5, v0, v4

    div-float v5, v1, v5

    float-to-int v3, v5

    .line 95
    .local v3, "possibleNumber":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$bool;->enable_candidates_sw_threshold_check:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$integer;->emoji_number_of_rows_landscape:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 105
    :cond_1
    :goto_0
    if-le v3, v2, :cond_2

    .line 106
    move v2, v3

    .line 109
    :cond_2
    return v2

    .line 100
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$integer;->emoji_number_of_rows_landscape:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPage(I)Lcom/nuance/swype/input/emoji/EmojiPage;
    .locals 1
    .param p1, "pageNumber"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->pages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiPage;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageCreator;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
