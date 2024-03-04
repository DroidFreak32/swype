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
.field private mAppContext:Landroid/content/Context;

.field private mCategoryName:Ljava/lang/String;

.field private mPageNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mAppContext:Landroid/content/Context;

    .line 591
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->restoreState()V

    .line 592
    return-void
.end method


# virtual methods
.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mPageNumber:I

    return v0
.end method

.method public restoreState()V
    .locals 2

    .prologue
    .line 605
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 606
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getLastUsedEmojiCategoryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mCategoryName:Ljava/lang/String;

    .line 607
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getLastUserEmojiPageNumber()I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mPageNumber:I

    .line 608
    return-void
.end method

.method public saveState()V
    .locals 2

    .prologue
    .line 611
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 612
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setLastUsedEmojiCategoryName(Ljava/lang/String;)V

    .line 613
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mPageNumber:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setLastUsedEmojiPageNumber(I)V

    .line 614
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mCategoryName:Ljava/lang/String;

    .line 596
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->saveState()V

    .line 597
    return-void
.end method

.method public setPageNumber(I)V
    .locals 0
    .param p1, "pageNumber"    # I

    .prologue
    .line 600
    iput p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->mPageNumber:I

    .line 601
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiInputController$EmojiLayerState;->saveState()V

    .line 602
    return-void
.end method
