.class Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;
.super Ljava/lang/Object;
.source "SymbolCategoryList.java"


# static fields
.field private static final CATEGORY_TAG_NAME:Ljava/lang/String; = "category"


# instance fields
.field private final categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/AbstractCategory;",
            ">;"
        }
    .end annotation
.end field

.field private recentCat:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

.field private recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/RecentListManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recentListManager"    # Lcom/nuance/swype/input/emoji/RecentListManager;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->categoryList:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    .line 36
    sget v0, Lcom/nuance/swype/input/R$xml;->symbol_category_list:I

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->parseXml(Landroid/content/Context;I)V

    .line 37
    return-void
.end method

.method private addCategory(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 11
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
    if-eqz v2, :cond_34

    .line 79
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->categoryList:Ljava/util/List;

    new-instance v0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryStandard;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_33
    return-void

    .line 81
    :cond_34
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->recentCat:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    if-eqz v0, :cond_41

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only one recent category is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_41
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->categoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_52

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Recent category must be first in list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_52
    new-instance v0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->recentListManager:Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-direct {v0, v1, v4, v5}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;-><init>(Lcom/nuance/swype/input/emoji/RecentListManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->recentCat:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->categoryList:Ljava/util/List;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->recentCat:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33
.end method

.method private parseXml(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 47
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_8
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 48
    .local v0, "eventType":I
    :goto_c
    const/4 v3, 0x1

    if-eq v0, v3, :cond_29

    .line 49
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "tag":Ljava/lang/String;
    packed-switch v0, :pswitch_data_2c

    .line 60
    :cond_16
    :goto_16
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 61
    goto :goto_c

    .line 52
    :pswitch_1b
    const-string/jumbo v3, "category"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 53
    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->addCategory(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_27} :catch_28
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_2a

    goto :goto_16

    .line 66
    .end local v0    # "eventType":I
    .end local v2    # "tag":Ljava/lang/String;
    :catch_28
    move-exception v3

    .line 68
    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v3

    goto :goto_29

    .line 50
    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public getAllCategories()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/AbstractCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->categoryList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryFromName(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/AbstractCategory;
    .registers 6
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, v1

    .line 107
    :goto_8
    return-object v0

    .line 102
    :cond_9
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->categoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/AbstractCategory;

    .line 103
    .local v0, "category":Lcom/nuance/swype/input/emoji/AbstractCategory;
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_8

    .end local v0    # "category":Lcom/nuance/swype/input/emoji/AbstractCategory;
    :cond_26
    move-object v0, v1

    .line 107
    goto :goto_8
.end method

.method public getCategoryIndex(Lcom/nuance/swype/input/emoji/AbstractCategory;)I
    .registers 3
    .param p1, "cat"    # Lcom/nuance/swype/input/emoji/AbstractCategory;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->categoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDefaultCategory()Lcom/nuance/swype/input/emoji/AbstractCategory;
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->recentCat:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->recentCat:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    .line 121
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->categoryList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/AbstractCategory;

    goto :goto_a
.end method

.method public getRecentCat()Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->recentCat:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    return-object v0
.end method
