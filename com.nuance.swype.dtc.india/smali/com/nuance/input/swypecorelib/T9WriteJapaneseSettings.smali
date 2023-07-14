.class public Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;
.super Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;
.source "T9WriteJapaneseSettings.java"


# static fields
.field public static final MAX_RESULT_CHARACTERS:I = 0x14


# instance fields
.field public mBaseline:I

.field public final mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;",
            ">;"
        }
    .end annotation
.end field

.field public mHeight:I

.field public mHelpline:I

.field public mInputGuide:I

.field public mRecognitionMode:I

.field public mRecognizeDelay:I

.field public mSupportLineSet:I

.field public mTopline:I

.field public mWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteCJKSetting;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->mCategories:Ljava/util/List;

    .line 23
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->mRecognizeDelay:I

    .line 27
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addJapaneseCategory()V

    .line 28
    return-void
.end method


# virtual methods
.method public addAlphaCategory()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->clearCategory()V

    .line 67
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_ALPHA:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 68
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_GESTURES:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 69
    return-void
.end method

.method public addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V
    .locals 2
    .param p1, "cat"    # Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    return-void
.end method

.method public addDigitOnly()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->clearCategory()V

    .line 62
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_DIGIT:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 63
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_GESTURES:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 64
    return-void
.end method

.method public final addJapaneseCategory()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->clearCategory()V

    .line 33
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_JIS:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 34
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_HIRAGANA:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 35
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_KATAKANA:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 36
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_HIRAGANASMALL:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 37
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_KATAKANASMALL:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 38
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_JIS_LEVEL_1:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 39
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_JIS_LEVEL_2:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 40
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_JIS_LEVEL_3:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 41
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_JIS_LEVEL_4:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 42
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_GESTURES:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 43
    return-void
.end method

.method public addMixSymbols()V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->clearCategory()V

    .line 48
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_PUNCTUATION:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 49
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_DIGIT:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 50
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_GESTURES:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 51
    sget-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_SYMBOL:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->addCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V

    .line 52
    return-void
.end method

.method public clearCategory()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    return-void
.end method

.method public removeCategory(Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;)V
    .locals 2
    .param p1, "cat"    # Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "location":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseSettings;->mCategories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    :cond_0
    return-void
.end method
