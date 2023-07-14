.class Lcom/nuance/swype/input/emoji/EmojiCategoryList;
.super Ljava/lang/Object;
.source "EmojiCategoryList.java"


# static fields
.field private static final CATEGORY_TAG_NAME:Ljava/lang/String; = "category"

.field private static final FAMILY_CATEGORY_NAME:Ljava/lang/String; = "families"

.field private static final FLAG_CATEGORY_NAME:Ljava/lang/String; = "flags"


# instance fields
.field private final categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiCategory;",
            ">;"
        }
    .end annotation
.end field

.field private recentCat:Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

.field private recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/RecentListManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recentListManager"    # Lcom/nuance/swype/input/emoji/RecentListManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->categoryList:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    .line 39
    sget v0, Lcom/nuance/swype/input/R$xml;->emoji_category_list:I

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->parseXml(Landroid/content/Context;I)V

    .line 40
    return-void
.end method

.method private addCategory(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v7, 0x0

    .line 71
    .line 72
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/input/R$styleable;->AbstractCategory:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 73
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v0, Lcom/nuance/swype/input/R$styleable;->AbstractCategory_categoryItems:I

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 74
    .local v2, "arrRes":I
    sget v0, Lcom/nuance/swype/input/R$styleable;->AbstractCategory_arrayType:I

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 75
    .local v3, "arrType":I
    sget v0, Lcom/nuance/swype/input/R$styleable;->AbstractCategory_categoryName:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "name":Ljava/lang/String;
    sget v0, Lcom/nuance/swype/input/R$styleable;->AbstractCategory_categoryIcon:I

    invoke-virtual {v6, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 77
    .local v5, "iconResId":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    if-eqz v2, :cond_1

    .line 79
    const-string/jumbo v0, "flags"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->isCategorySupportMultiCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->categoryList:Ljava/util/List;

    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/EmojiCategoryStandard;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->recentCat:Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    if-eqz v0, :cond_2

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only one recent category is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->categoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Recent category must be first in list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-direct {v0, v1, v4, v5}, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;-><init>(Lcom/nuance/swype/input/emoji/RecentListManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->recentCat:Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->categoryList:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->recentCat:Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isCategorySupportMultiCode()Z
    .locals 2

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseXml(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 50
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 51
    .local v0, "eventType":I
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 52
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "tag":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 63
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 64
    goto :goto_0

    .line 55
    :pswitch_0
    const-string/jumbo v3, "category"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->addCategory(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 68
    .end local v0    # "eventType":I
    .end local v2    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v3

    :cond_1
    :goto_2
    return-void

    :catch_1
    move-exception v3

    goto :goto_2

    .line 53
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAllCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->categoryList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryFromName(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/EmojiCategory;
    .locals 4
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 111
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->categoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiCategory;

    .line 107
    .local v0, "category":Lcom/nuance/swype/input/emoji/EmojiCategory;
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "category":Lcom/nuance/swype/input/emoji/EmojiCategory;
    :cond_2
    move-object v0, v1

    .line 111
    goto :goto_0
.end method

.method public getCategoryIndex(Lcom/nuance/swype/input/emoji/EmojiCategory;)I
    .locals 1
    .param p1, "cat"    # Lcom/nuance/swype/input/emoji/EmojiCategory;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->categoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDefaultCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->recentCat:Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->recentCat:Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->categoryList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiCategory;

    goto :goto_0
.end method

.method public getRecentCat()Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->recentCat:Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    return-object v0
.end method
