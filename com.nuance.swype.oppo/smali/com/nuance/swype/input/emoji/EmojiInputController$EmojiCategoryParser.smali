.class Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;
.super Ljava/lang/Object;
.source "EmojiInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmojiCategoryParser"
.end annotation


# static fields
.field private static final CATEGORY_TAG_NAME:Ljava/lang/String; = "category"


# instance fields
.field categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->categoryList:Ljava/util/List;

    .line 317
    sget v0, Lcom/nuance/swype/input/R$xml;->emoji_category_list:I

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->parseXml(Landroid/content/Context;I)V

    .line 318
    return-void
.end method

.method private addCategoryFromAttributes(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v7, 0x0

    .line 347
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    sget-object v6, Lcom/nuance/swype/input/R$styleable;->EmojiCategory:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 348
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/nuance/swype/input/R$styleable;->EmojiCategory_categoryKey:I

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 349
    .local v3, "keyCode":I
    sget v5, Lcom/nuance/swype/input/R$styleable;->EmojiCategory_categoryItemsRefId:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 350
    .local v1, "arrayRefId":I
    sget v5, Lcom/nuance/swype/input/R$styleable;->EmojiCategory_categoryName:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "name":Ljava/lang/String;
    sget v5, Lcom/nuance/swype/input/R$styleable;->EmojiCategory_categoryIcon:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 352
    .local v2, "iconResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 353
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->categoryList:Ljava/util/List;

    new-instance v6, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    invoke-direct {v6, v3, v1, v4, v2}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;-><init>(IILjava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method private parseXml(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 323
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 324
    .local v0, "eventType":I
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 325
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "tag":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 336
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 337
    goto :goto_0

    .line 328
    :pswitch_0
    const-string v3, "category"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->addCategoryFromAttributes(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 344
    .end local v0    # "eventType":I
    .end local v2    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 345
    :cond_1
    :goto_2
    return-void

    :catch_1
    move-exception v3

    goto :goto_2

    .line 326
    nop

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
            "Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->categoryList:Ljava/util/List;

    return-object v0
.end method

.method public getAllCategoriesKeys()[I
    .locals 4

    .prologue
    .line 357
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->categoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 358
    .local v0, "arraySize":I
    new-array v2, v0, [I

    .line 359
    .local v2, "keys":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 360
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->categoryList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getKeyCode()I

    move-result v3

    aput v3, v2, v1

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-object v2
.end method

.method public getCategory(I)Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 366
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->categoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    .line 367
    .local v0, "category":Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getKeyCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 371
    .end local v0    # "category":Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCategoryFromName(Ljava/lang/String;)Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    .locals 3
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategoryParser;->categoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;

    .line 376
    .local v0, "category":Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    .end local v0    # "category":Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiCategory;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
