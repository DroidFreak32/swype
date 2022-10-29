.class public Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;
.super Ljava/lang/Object;
.source "EmojiCategoryGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation


# instance fields
.field private cats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiCategory;",
            ">;"
        }
    .end annotation
.end field

.field private currentCategory:I

.field private currentPage:I

.field private pageCount:I

.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;-><init>(Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;II)V
    .registers 6
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    .param p2, "category"    # I
    .param p3, "page"    # I

    .prologue
    .line 45
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->this$0:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    .line 47
    iput p3, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    .line 48
    # getter for: Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->access$000(Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;)Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->cats:Ljava/util/List;

    .line 49
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->updatePageCount()V

    .line 50
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->pageCount:I

    if-lt p3, v0, :cond_23

    .line 51
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Page beyond category page range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_23
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;
    .registers 6

    .prologue
    .line 86
    # getter for: Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getCategory(): called >>> currentCategory=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->cats:Ljava/util/List;

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiCategory;

    return-object v0
.end method

.method public getLocalPage()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    return v0
.end method

.method public getLocalPageCount()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->pageCount:I

    return v0
.end method

.method public hasCategoryNext()Z
    .registers 3

    .prologue
    .line 101
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->cats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasCategoryPrev()Z
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasPageNext()Z
    .registers 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->hasCategoryNext()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hasPagePrev()Z
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->hasCategoryPrev()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    if-lez v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public moveToGlobalPage(I)V
    .registers 9
    .param p1, "page"    # I

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, "curCat":I
    const/4 v3, 0x0

    .line 62
    .local v3, "curPage":I
    const/4 v1, 0x0

    .line 63
    .local v1, "catFirstPageOffset":I
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->cats:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiCategory;

    .line 64
    .local v0, "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->this$0:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    invoke-virtual {v6, v0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getPageCount(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v4

    .line 66
    .local v4, "pagesInCat":I
    add-int/2addr v3, v4

    .line 67
    if-gt v3, p1, :cond_22

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    add-int/2addr v1, v4

    .line 73
    goto :goto_9

    .line 74
    .end local v0    # "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    .end local v4    # "pagesInCat":I
    :cond_22
    iput v2, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    .line 75
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->updatePageCount()V

    .line 76
    sub-int v5, p1, v1

    iput v5, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    .line 78
    return-void
.end method

.method public nextCategory()V
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->hasCategoryNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 150
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 152
    :cond_c
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    .line 154
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->updatePageCount()V

    .line 155
    return-void
.end method

.method public nextPage()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->hasPageNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 119
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 121
    :cond_d
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->pageCount:I

    if-ne v1, v2, :cond_23

    .line 123
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    .line 124
    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    .line 125
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->updatePageCount()V

    .line 126
    const/4 v0, 0x1

    .line 128
    :cond_23
    return v0
.end method

.method public prevCategory()V
    .registers 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->hasCategoryPrev()Z

    move-result v0

    if-nez v0, :cond_c

    .line 159
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 161
    :cond_c
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    .line 162
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->updatePageCount()V

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    .line 165
    return-void
.end method

.method public prevPage()Z
    .registers 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->hasPagePrev()Z

    move-result v0

    if-nez v0, :cond_c

    .line 134
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 136
    :cond_c
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    if-nez v0, :cond_21

    .line 138
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentCategory:I

    .line 139
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->updatePageCount()V

    .line 140
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->pageCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    .line 141
    const/4 v0, 0x1

    .line 144
    :goto_20
    return v0

    .line 143
    :cond_21
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->currentPage:I

    .line 144
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public final updatePageCount()V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->this$0:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getPageCount(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->pageCount:I

    .line 82
    return-void
.end method
