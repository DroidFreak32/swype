.class public Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
.super Ljava/lang/Object;
.source "EmojiCategoryGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

.field private context:Landroid/content/Context;

.field private globalPageCount:I

.field private grid:Lcom/nuance/swype/input/emoji/EmojiGridParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string/jumbo v0, "EmojiCategoryGroup"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/EmojiGridParams;Lcom/nuance/swype/input/emoji/EmojiCategoryList;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grid"    # Lcom/nuance/swype/input/emoji/EmojiGridParams;
    .param p3, "categoryList"    # Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->context:Landroid/content/Context;

    .line 172
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    .line 173
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->grid:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    .line 174
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->calcGlobalPageCount()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->globalPageCount:I

    .line 176
    iget v0, p2, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    if-gtz v0, :cond_1c

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid grid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1c
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;)Lcom/nuance/swype/input/emoji/EmojiCategoryList;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method private calcGlobalPageCount()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 211
    sget-object v3, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "calcGlobalPageCount(): called >>>> globalPageCount=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->globalPageCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, "total":I
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v3

    .line 214
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiCategory;

    .line 215
    .local v0, "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getPageCount(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v1

    .line 216
    .local v1, "categoryPageCount":I
    add-int/2addr v2, v1

    .line 217
    goto :goto_28

    .line 218
    .end local v0    # "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    .end local v1    # "categoryPageCount":I
    :cond_3a
    sget-object v3, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "calcGlobalPageCount(): called >>>> total=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 219
    return v2
.end method

.method private getCatIndexForGlobalPage(I)I
    .registers 8
    .param p1, "page"    # I

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "curCat":I
    const/4 v2, 0x0

    .line 245
    .local v2, "curPage":I
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v4}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v4

    .line 246
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiCategory;

    .line 247
    .local v0, "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getPageCount(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v3

    .line 249
    .local v3, "pagesInCat":I
    add-int/2addr v2, v3

    .line 250
    if-gt v2, p1, :cond_22

    .line 254
    add-int/lit8 v1, v1, 0x1

    .line 255
    goto :goto_c

    .line 256
    .end local v0    # "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    .end local v3    # "pagesInCat":I
    :cond_22
    return v1
.end method


# virtual methods
.method public getAllCategories()Ljava/util/List;
    .registers 2
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
    .line 266
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCatForGlobalPage(I)Lcom/nuance/swype/input/emoji/EmojiCategory;
    .registers 4
    .param p1, "page"    # I

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getCatIndexForGlobalPage(I)I

    move-result v0

    .line 261
    .local v0, "catIndex":I
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/EmojiCategory;

    return-object v1
.end method

.method public getGlobalPage(Lcom/nuance/swype/input/emoji/EmojiCategory;)I
    .registers 9
    .param p1, "category"    # Lcom/nuance/swype/input/emoji/EmojiCategory;

    .prologue
    .line 226
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v5, p1}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getCategoryIndex(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v1

    .line 227
    .local v1, "catIndex":I
    const/4 v3, 0x0

    .line 228
    .local v3, "page":I
    const/4 v2, 0x0

    .line 229
    .local v2, "curIndex":I
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v5

    .line 230
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiCategory;

    .line 231
    .local v0, "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    if-ge v2, v1, :cond_28

    .line 234
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getPageCount(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v4

    .line 235
    .local v4, "pagesInCat":I
    add-int/2addr v3, v4

    .line 236
    add-int/lit8 v2, v2, 0x1

    .line 237
    goto :goto_12

    .line 238
    .end local v0    # "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    .end local v4    # "pagesInCat":I
    :cond_28
    return v3
.end method

.method public getGlobalPageCount()I
    .registers 6

    .prologue
    .line 202
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getGlobalPageCount(): called >>>> globalPageCount=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->globalPageCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 203
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->globalPageCount:I

    return v0
.end method

.method public getGrid()Lcom/nuance/swype/input/emoji/EmojiGridParams;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->grid:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    return-object v0
.end method

.method public getPageCount(Lcom/nuance/swype/input/emoji/EmojiCategory;)I
    .registers 10
    .param p1, "cat"    # Lcom/nuance/swype/input/emoji/EmojiCategory;

    .prologue
    const/4 v7, 0x1

    .line 190
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getEmojiList()Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "emojis":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->grid:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    iget v3, v3, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->grid:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    iget v3, v3, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    div-int v0, v2, v3

    .line 192
    .local v0, "count":I
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getPageCount(): called >>> count=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", grid.cellCount=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->grid:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    iget v6, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " emojis.size()=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 194
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public iterator()Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;
    .registers 2

    .prologue
    .line 186
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;-><init>(Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;)V

    return-object v0
.end method

.method public iterator(II)Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;
    .registers 4
    .param p1, "category"    # I
    .param p2, "page"    # I

    .prologue
    .line 182
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    invoke-direct {v0, p0, p1, p2}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;-><init>(Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;II)V

    return-object v0
.end method

.method public updateGlobalPageCount()V
    .registers 2

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->calcGlobalPageCount()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->globalPageCount:I

    .line 199
    return-void
.end method
