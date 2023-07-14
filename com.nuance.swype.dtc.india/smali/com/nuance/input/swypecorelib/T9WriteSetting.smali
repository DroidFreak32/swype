.class public abstract Lcom/nuance/input/swypecorelib/T9WriteSetting;
.super Ljava/lang/Object;
.source "T9WriteSetting.java"


# static fields
.field public static final ANCHORED_SUPPORT_LINES:I = 0x3

.field public static final BASE_AND_HELP_LINE:I = 0x0

.field public static final BASE_AND_TOP_LINE:I = 0x1

.field public static final BOX:I = 0x2

.field public static final LEFT_TO_RIGHT:I = 0x0

.field public static final MCR_MODE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final ON_TOP_WRITING:I = 0x2

.field public static final RIGHT_TO_LEFT:I = 0x1

.field public static final SCR_MODE:I = 0x0

.field public static final SUPPORT_LINES:I = 0x1

.field public static final UCR_MODE:I = 0x2

.field public static final UNKNOWN_WRITING:I = 0x3


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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-direct {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    .line 43
    iput v1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mSupportLineSet:I

    .line 46
    iput v1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mHelpline:I

    .line 47
    iput v1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mBaseline:I

    .line 48
    iput v1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mTopline:I

    .line 49
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mRecognizeDelay:I

    .line 51
    invoke-virtual {p0, v1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWritingDirection(I)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setWidth(I)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->setHeight(I)V

    .line 59
    return-void
.end method

.method private applyJniCategoryChange()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->getCategory()I

    move-result v0

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mJniCategoryMask:I

    .line 224
    return-void
.end method


# virtual methods
.method public addDigitsAndSymbolsOnlyCategory()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 165
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addSymbol()V

    .line 166
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addNumber()V

    .line 167
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 168
    return-void
.end method

.method public addEmailOnlyCategory()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 177
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addOnlyEmail()V

    .line 178
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 179
    return-void
.end method

.method public addGestureCategory()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addGesture()V

    .line 215
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 216
    return-void
.end method

.method public addLatinLetterCategory()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addLatinLetter()V

    .line 205
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 206
    return-void
.end method

.method public addNumberCategory()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addNumber()V

    .line 139
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 140
    return-void
.end method

.method public addNumberOnlyCategory()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addOnlyNumber()V

    .line 155
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 156
    return-void
.end method

.method public addOnlyLatinLetterCategory()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addOnyLatinLetter()V

    .line 210
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 211
    return-void
.end method

.method public addOnlySymbolCategory()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 149
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addSymbol()V

    .line 150
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 151
    return-void
.end method

.method public addOnlyTextCategory()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 189
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->addTextCategory()V

    .line 190
    return-void
.end method

.method public addPhoneNumberOnlyCategory()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addOnlyPhoneNumber()V

    .line 172
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 173
    return-void
.end method

.method public addPunctuationCategory()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addPunctuation()V

    .line 160
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 161
    return-void
.end method

.method public addSymbolCategory()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addSymbol()V

    .line 144
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 145
    return-void
.end method

.method public addTextCategory()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addText()V

    .line 194
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 195
    return-void
.end method

.method public addTextOnlyCategory()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 199
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addText()V

    .line 200
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 201
    return-void
.end method

.method public addUrlOnlyCategory()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 183
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->addOnlyUrl()V

    .line 184
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;->applyJniCategoryChange()V

    .line 185
    return-void
.end method

.method public clearCategory()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mCategory:Lcom/nuance/input/swypecorelib/T9WriteCategory;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 220
    return-void
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mBaseline:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mHeight:I

    return v0
.end method

.method public getHelpline()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mHelpline:I

    return v0
.end method

.method public getInputGuide()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mInputGuide:I

    return v0
.end method

.method public getRecognitionMode()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mRecognitionMode:I

    return v0
.end method

.method public getRecognizerDelay()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mRecognizeDelay:I

    return v0
.end method

.method public getSupportLineSet()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mSupportLineSet:I

    return v0
.end method

.method public getTopline()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mTopline:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mWidth:I

    return v0
.end method

.method public final setBaseline(I)V
    .locals 0
    .param p1, "b"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mBaseline:I

    .line 87
    return-void
.end method

.method public final setHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mHeight:I

    .line 75
    return-void
.end method

.method public final setHelpline(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mHelpline:I

    .line 91
    return-void
.end method

.method public final setInputGuide(I)V
    .locals 0
    .param p1, "inputGuide"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mInputGuide:I

    .line 79
    return-void
.end method

.method public setRecognitionMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mRecognitionMode:I

    .line 131
    return-void
.end method

.method public setRecognizerDelay(I)V
    .locals 0
    .param p1, "delayMS"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mRecognizeDelay:I

    .line 63
    return-void
.end method

.method public final setSupportLineSet(I)V
    .locals 0
    .param p1, "supportLineSet"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mSupportLineSet:I

    .line 83
    return-void
.end method

.method public final setTopline(I)V
    .locals 0
    .param p1, "t"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mTopline:I

    .line 95
    return-void
.end method

.method public final setWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mWidth:I

    .line 71
    return-void
.end method

.method public setWritingDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteSetting;->mWritingDirection:I

    .line 135
    return-void
.end method
