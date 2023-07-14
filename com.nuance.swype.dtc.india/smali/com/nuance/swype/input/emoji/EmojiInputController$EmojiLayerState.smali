.class public Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;
.super Ljava/lang/Object;
.source "EmojiInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiLayerState"
.end annotation


# instance fields
.field private appPrefs:Lcom/nuance/swype/input/AppPreferences;

.field private categoryItem:I

.field private categoryName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    invoke-static {p1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    .line 758
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->loadState()V

    .line 759
    return-void
.end method

.method private saveState()V
    .locals 4

    .prologue
    .line 780
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "saveState(): cat: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; first item: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 781
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setLastUsedEmojiCategoryName(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryItem:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setLastUsedEmojiCategoryItem(I)V

    .line 783
    return-void
.end method


# virtual methods
.method public getCategoryItem()I
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryItem:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public loadState()V
    .locals 4

    .prologue
    .line 774
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getLastUsedEmojiCategoryName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryName:Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->appPrefs:Lcom/nuance/swype/input/AppPreferences;

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getLastUsedEmojiCategoryItem()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryItem:I

    .line 776
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "loadState(): cat: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; first item: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryItem:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 777
    return-void
.end method

.method public resetState(Ljava/lang/String;)V
    .locals 1
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryName:Ljava/lang/String;

    .line 763
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryItem:I

    .line 764
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->saveState()V

    .line 765
    return-void
.end method

.method public saveState(Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;)V
    .locals 2
    .param p1, "catGroup"    # Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    .param p2, "iter"    # Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    .prologue
    .line 768
    invoke-virtual {p2}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiCategory;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryName:Ljava/lang/String;

    .line 769
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getGrid()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getLocalPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiGridParams;->getFirstItemOnPage(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->categoryItem:I

    .line 770
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->saveState()V

    .line 771
    return-void
.end method
