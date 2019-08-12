.class public abstract Lcom/nuance/input/swypecorelib/T9WriteSetting;
.super Ljava/lang/Object;
.source "T9WriteSetting.java"


# static fields
.field public static final BASE_AND_HELP_LINE:I = 0x4

.field public static final BASE_LINE_ONLY:I = 0x2

.field public static final HELP_AND_TOP_LINE:I = 0x5

.field public static final HELP_LINE_ONLY:I = 0x3

.field public static final LEFT_TO_RIGHT:I = 0x0

.field public static final MCR_MODE:I = 0x1

.field public static final NO_LINE_SUPPORTS:I = 0x0

.field public static final ON_TOP_WRITING:I = 0x2

.field public static final RIGHT_TO_LEFT:I = 0x1

.field public static final SCR_MODE:I = 0x0

.field public static final TOP_LINE_ONLY:I = 0x1


# instance fields
.field private mBaseline:I

.field mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

.field private mHeight:I

.field private mHelpline:I

.field public mHwrTemplateDatabaseID:I

.field private mInputGuide:I

.field private mJniCategoryMask:I

.field public mLanguageDatabaseID:I

.field private mRecognitionMode:I

.field public mRecognizeDelay:I

.field private mSupportLineSet:I

.field private mTopline:I

.field private mWidth:I

.field private mWritingDirection:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    .line 38
    iput v1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mSupportLineSet:I

    .line 41
    iput v1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mHelpline:I

    .line 42
    iput v1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mBaseline:I

    .line 43
    iput v1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mTopline:I

    .line 44
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mRecognizeDelay:I

    .line 46
    invoke-virtual {p0, v1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWritingDirection(I)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWidth(I)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setHeight(I)V

    .line 54
    return-void
.end method

.method private applyJniCategoryChange()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->getCategory()I

    move-result v0

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mJniCategoryMask:I

    .line 179
    return-void
.end method


# virtual methods
.method public addDigitsAndSymbolsOnlyCategory()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 120
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addSymbol()V

    .line 121
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addNumber()V

    .line 122
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 123
    return-void
.end method

.method public addEmailOnlyCategory()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 132
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addOnlyEmail()V

    .line 133
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 134
    return-void
.end method

.method public addGestureCategory()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addGesture()V

    .line 170
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 171
    return-void
.end method

.method public addLatinLetterCategory()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addLatinLetter()V

    .line 160
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 161
    return-void
.end method

.method public addNumberCategory()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addNumber()V

    .line 94
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 95
    return-void
.end method

.method public addNumberOnlyCategory()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addOnlyNumber()V

    .line 110
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 111
    return-void
.end method

.method public addOnlyLatinLetterCategory()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addOnyLatinLetter()V

    .line 165
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 166
    return-void
.end method

.method public addOnlySymbolCategory()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 104
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addSymbol()V

    .line 105
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 106
    return-void
.end method

.method public addOnlyTextCategory()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 144
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addTextCategory()V

    .line 145
    return-void
.end method

.method public addPhoneNumberOnlyCategory()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addOnlyPhoneNumber()V

    .line 127
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 128
    return-void
.end method

.method public addPunctuationCategory()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addPunctuation()V

    .line 115
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 116
    return-void
.end method

.method public addSymbolCategory()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addSymbol()V

    .line 99
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 100
    return-void
.end method

.method public addTextCategory()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addText()V

    .line 149
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 150
    return-void
.end method

.method public addTextOnlyCategory()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 154
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addText()V

    .line 155
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 156
    return-void
.end method

.method public addUrlOnlyCategory()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 138
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addOnlyUrl()V

    .line 139
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 140
    return-void
.end method

.method public clearCategory()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 175
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mHeight:I

    return v0
.end method

.method public getRecognitionMode()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mRecognitionMode:I

    return v0
.end method

.method public getRecognizerDelay()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mRecognizeDelay:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mWidth:I

    return v0
.end method

.method public final setHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mHeight:I

    .line 70
    return-void
.end method

.method public setRecognitionMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mRecognitionMode:I

    .line 86
    return-void
.end method

.method public setRecognizerDelay(I)V
    .locals 0
    .param p1, "delayMS"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mRecognizeDelay:I

    .line 58
    return-void
.end method

.method public final setWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mWidth:I

    .line 66
    return-void
.end method

.method public setWritingDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mWritingDirection:I

    .line 90
    return-void
.end method
