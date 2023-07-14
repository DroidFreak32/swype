.class public Lcom/nuance/swype/input/InputMethods$InputMode;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputMode"
.end annotation


# static fields
.field private static final AUTO_CORRECTION:Ljava/lang/String; = "auto_correction"

.field private static final AUTO_SPACE:Ljava/lang/String; = "auto_space"

.field private static final CORRECTION_LEVEL:Ljava/lang/String; = "correction_level"

.field private static HANDWRITING_INPUT_AREA:Ljava/lang/String; = null

.field public static final JAPANESE_PORTRAIT_LAYOUT_FLICK:I = 0x11

.field public static final JAPANESE_PORTRAIT_LAYOUT_KEYBOARD:I = 0x0

.field public static final JAPANESE_PORTRAIT_LAYOUT_MASK:I = 0x10

.field public static final JAPANESE_PORTRAIT_LAYOUT_MULTITAP:I = 0x10

.field public static final JAPANESE_PORTRAIT_LAYOUT_MULTITAPANDFLICK:I = 0x12

.field private static final KEYBOARD_LAYOUT:Ljava/lang/String; = "keyboard_layout"

.field private static final MIX_LETTER_AND_ABC:Ljava/lang/String; = "mix_letter_abc"

.field private static final MIX_LETTER_AND_DIGIT:Ljava/lang/String; = "mix_letter_digit"

.field private static final MIX_LETTER_AND_DIGIT_CHINESE:Ljava/lang/String; = "mix_letter_digit_chinese"

.field private static final MIX_LETTER_AND_DIGIT_ENGLISH:Ljava/lang/String; = "mix_letter_digit_english"

.field private static final MIX_LETTER_AND_DIGIT_JAPANESE:Ljava/lang/String; = "mix_letter_digit_japanese"

.field private static final MIX_LETTER_AND_INTEGRATED:Ljava/lang/String; = "mix_letter_integrated"

.field private static final MIX_LETTER_AND_PUNCTUATION:Ljava/lang/String; = "mix_letter_punctuation"

.field private static final MIX_LETTER_AND_SYMBOL:Ljava/lang/String; = "mix_letter_and_symbol"

.field private static final NEXT_WORD_PREDICTION:Ljava/lang/String; = "next_word_prediction"

.field private static final PREF_HANDWRITING_ON_CHINESE_KEYBOARD:Ljava/lang/String; = "handwriting_on_chinese_keyboard"

.field private static final PREF_TRACE_ON_CHINESE_KEYBOARD:Ljava/lang/String; = "trace_on_chinese_keyboard"

.field private static final RECAPTURE:Ljava/lang/String; = "recapture"

.field private static final TRACE:Ljava/lang/String; = "trace"

.field private static final TRACE_AUTO_ACCEPT:Ljava/lang/String; = "trace_auto_accept"

.field private static final WORD_COMPLETION:Ljava/lang/String; = "word_completion"


# instance fields
.field private final compatibleLanguages:[Ljava/lang/CharSequence;

.field private encoding:Ljava/lang/String;

.field private isGlobal:Z

.field public mCurrentJapaneseLayout:Ljava/lang/String;

.field protected mDefaultEnabled:Z

.field public final mDefaultLayoutId:I

.field private mDisplayInputMode:I

.field private mDisplayInputModeString:Ljava/lang/String;

.field public mEnableJapaneseHiragana:Z

.field public mEnableJapaneseHiraganaSmall:Z

.field public mEnableJapaneseJIS:Z

.field public mEnableJapaneseJISLevel1:Z

.field public mEnableJapaneseJISLevel2:Z

.field public mEnableJapaneseJISLevel3:Z

.field public mEnableJapaneseJISLevel4:Z

.field public mEnableJapaneseKatakana:Z

.field public mEnableJapaneseKatakanaSmall:Z

.field protected mEnabledPrefKey:Ljava/lang/String;

.field private mEnabledTrace:Z

.field private mHandwritingInputArea:I

.field public mId:I

.field public mInputMode:Ljava/lang/String;

.field public final mLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Layout;",
            ">;"
        }
    .end annotation
.end field

.field public mMixLetterAndABC:Z

.field public mMixLetterAndDigitChinese:Z

.field public mMixLetterAndDigitEnglish:Z

.field public mMixLetterAndDigitJapanese:Z

.field public mMixLetterAndIntegrated:Z

.field public mMixLetterAndPunctuation:Z

.field public mMixLetterAndSymbol:Z

.field public final mParent:Lcom/nuance/swype/input/InputMethods$Language;

.field private mTraceAutoAccept:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1846
    const-string/jumbo v0, "handwriting_input_area"

    sput-object v0, Lcom/nuance/swype/input/InputMethods$InputMode;->HANDWRITING_INPUT_AREA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1856
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    .line 1883
    iput v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mId:I

    .line 1890
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mCurrentJapaneseLayout:Ljava/lang/String;

    .line 1893
    iput-object p2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1894
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    sget-object v5, Lcom/nuance/swype/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1895
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/nuance/swype/input/R$styleable;->XT9_inputMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 1896
    sget v4, Lcom/nuance/swype/input/R$styleable;->XT9_defaultLayoutId:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultLayoutId:I

    .line 1897
    sget v4, Lcom/nuance/swype/input/R$styleable;->XT9_enabled:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultEnabled:Z

    .line 1898
    sget v4, Lcom/nuance/swype/input/R$styleable;->XT9_inputModeName:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputMode:I

    .line 1899
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-static {v4}, Lcom/nuance/swype/input/InputMethods$Language;->access$1200(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    move v1, v3

    .line 1900
    .local v1, "defaultEnabledTrace":Z
    :goto_0
    sget v4, Lcom/nuance/swype/input/R$styleable;->XT9_enableTrace:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledTrace:Z

    .line 1901
    sget v4, Lcom/nuance/swype/input/R$styleable;->XT9_traceAutoAccept:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    .line 1902
    sget v4, Lcom/nuance/swype/input/R$styleable;->XT9_encoding:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->encoding:Ljava/lang/String;

    .line 1903
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->encoding:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1904
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    :goto_1
    iput-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->encoding:Ljava/lang/String;

    .line 1906
    :cond_1
    sget v4, Lcom/nuance/swype/input/R$styleable;->XT9_isGlobal:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->isGlobal:Z

    .line 1907
    iput v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mHandwritingInputArea:I

    .line 1909
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLanguageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".enabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    .line 1910
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    .line 1911
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    .line 1912
    iput-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitEnglish:Z

    .line 1913
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitChinese:Z

    .line 1914
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndIntegrated:Z

    .line 1915
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndABC:Z

    .line 1916
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseHiragana:Z

    .line 1917
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseHiraganaSmall:Z

    .line 1918
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseKatakana:Z

    .line 1919
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseKatakanaSmall:Z

    .line 1920
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJIS:Z

    .line 1921
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel1:Z

    .line 1922
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel2:Z

    .line 1923
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel3:Z

    .line 1924
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel4:Z

    .line 1925
    iput-boolean v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitJapanese:Z

    .line 1927
    sget v2, Lcom/nuance/swype/input/R$styleable;->XT9_compatibleLanguages:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->compatibleLanguages:[Ljava/lang/CharSequence;

    .line 1928
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->compatibleLanguages:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 1929
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->compatibleLanguages:[Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1932
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1934
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v2, :cond_3

    .line 1935
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 1937
    :cond_3
    return-void

    .end local v1    # "defaultEnabledTrace":Z
    :cond_4
    move v1, v2

    .line 1899
    goto/16 :goto_0

    .line 1904
    .restart local v1    # "defaultEnabledTrace":Z
    :cond_5
    const-string/jumbo v4, ""

    goto :goto_1
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputMethods$InputMode;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 2
    .param p1, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1940
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputModeString:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Lcom/nuance/swype/input/InputMethods$InputMode;Lcom/nuance/swype/input/InputMethods$Language;Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputMethods$InputMode;Lcom/nuance/swype/input/InputMethods$Language;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "inputModeName"    # Ljava/lang/String;

    .prologue
    .line 1943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1856
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    .line 1883
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mId:I

    .line 1890
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mCurrentJapaneseLayout:Ljava/lang/String;

    .line 1944
    iput-object p2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1945
    iput-object p3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 1946
    iget v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultLayoutId:I

    iput v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultLayoutId:I

    .line 1947
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultEnabled:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultEnabled:Z

    .line 1948
    iget v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputMode:I

    iput v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputMode:I

    .line 1949
    iput-object p4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputModeString:Ljava/lang/String;

    .line 1951
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledTrace:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledTrace:Z

    .line 1952
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    .line 1953
    iget v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mHandwritingInputArea:I

    iput v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mHandwritingInputArea:I

    .line 1954
    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->encoding:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->encoding:Ljava/lang/String;

    .line 1955
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->isGlobal:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->isGlobal:Z

    .line 1957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    .line 1958
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    .line 1959
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    .line 1960
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitEnglish:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitEnglish:Z

    .line 1961
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitChinese:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitChinese:Z

    .line 1962
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndIntegrated:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndIntegrated:Z

    .line 1963
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndABC:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndABC:Z

    .line 1964
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseHiragana:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseHiragana:Z

    .line 1965
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseHiraganaSmall:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseHiraganaSmall:Z

    .line 1966
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseKatakana:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseKatakana:Z

    .line 1967
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseKatakanaSmall:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseKatakanaSmall:Z

    .line 1968
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJIS:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJIS:Z

    .line 1969
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel1:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel1:Z

    .line 1970
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel2:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel2:Z

    .line 1971
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel3:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel3:Z

    .line 1972
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel4:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnableJapaneseJISLevel4:Z

    .line 1973
    iget-boolean v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitJapanese:Z

    iput-boolean v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitJapanese:Z

    .line 1974
    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 1975
    .local v0, "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    new-instance v3, Lcom/nuance/swype/input/InputMethods$Layout;

    invoke-direct {v3, v0, p0}, Lcom/nuance/swype/input/InputMethods$Layout;-><init>(Lcom/nuance/swype/input/InputMethods$Layout;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1977
    .end local v0    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    :cond_0
    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->compatibleLanguages:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->compatibleLanguages:[Ljava/lang/CharSequence;

    .line 1978
    return-void
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/InputMethods$InputMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods$InputMode;
    .param p1, "x1"    # Z

    .prologue
    .line 1823
    iput-boolean p1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->isGlobal:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/nuance/swype/input/InputMethods$InputMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 1823
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getModeNameAsKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/InputMethods$InputMode;Lcom/nuance/swype/input/InputMethods$Layout;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods$InputMode;
    .param p1, "x1"    # Lcom/nuance/swype/input/InputMethods$Layout;

    .prologue
    .line 1823
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputMethods$InputMode;->addLayout(Lcom/nuance/swype/input/InputMethods$Layout;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/InputMethods$InputMode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method private addLayout(Lcom/nuance/swype/input/InputMethods$Layout;)V
    .locals 5
    .param p1, "layout"    # Lcom/nuance/swype/input/InputMethods$Layout;

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2058
    :goto_0
    return-void

    .line 2055
    :cond_0
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string/jumbo v1, "Duplicated layout(%#x) for inputMode(%s) - IGNORED"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    .line 2056
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2055
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private composeKeyForKeyboardLayout(I)Ljava/lang/String;
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "keyboard_layout."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->access$1600(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKeyboardLayoutId(II)I
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "defaulKeyboardtLayoutId"    # I

    .prologue
    .line 2277
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputMethods$InputMode;->composeKeyForKeyboardLayout(I)Ljava/lang/String;

    move-result-object v0

    .line 2278
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2279
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private getModeNameAsKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2437
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMultitapMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    const-string/jumbo v0, "multitap"

    .line 2441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNextEnabledLayout(Lcom/nuance/swype/input/InputMethods$Layout;)Lcom/nuance/swype/input/InputMethods$Layout;
    .locals 4
    .param p1, "currentLayout"    # Lcom/nuance/swype/input/InputMethods$Layout;

    .prologue
    .line 2236
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2237
    .local v2, "start":I
    if-gez v2, :cond_0

    .line 2238
    const/4 v2, 0x0

    .line 2242
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 2245
    .local v0, "count":I
    :cond_1
    add-int/lit8 v3, v2, 0x1

    rem-int v2, v3, v0

    .line 2246
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 2247
    .local v1, "nextLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Layout;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, p1}, Lcom/nuance/swype/input/InputMethods$Layout;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2249
    :cond_2
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Layout;->saveAsCurrent()V

    .line 2250
    return-object v1
.end method

.method private setSymLayoutDisabledCJK()V
    .locals 5

    .prologue
    .line 2105
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 2106
    .local v0, "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    iget v2, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Layout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2107
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$integer;->symbols_keyboard_id:I

    .line 2108
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2109
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/InputMethods$Layout;->setEnabled(Z)V

    goto :goto_0

    .line 2112
    .end local v0    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    :cond_1
    return-void
.end method


# virtual methods
.method protected ensureAtleastOneLayoutIsEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2381
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isAtLeastOneLayoutIsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2382
    iget v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 2383
    .local v0, "defaultLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    if-eqz v0, :cond_1

    .line 2384
    invoke-virtual {v0, v3}, Lcom/nuance/swype/input/InputMethods$Layout;->setEnabled(Z)V

    .line 2389
    .end local v0    # "defaultLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    :cond_0
    :goto_0
    return-void

    .line 2386
    .restart local v0    # "defaultLayout":Lcom/nuance/swype/input/InputMethods$Layout;
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Layout;

    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/InputMethods$Layout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2358
    instance-of v2, p1, Lcom/nuance/swype/input/InputMethods$InputMode;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 2359
    check-cast v0, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 2360
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2363
    .end local v0    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_0
    return v1
.end method

.method public findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;
    .locals 3
    .param p1, "layoutId"    # I

    .prologue
    .line 2315
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 2316
    .local v0, "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    iget v2, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    if-ne v2, p1, :cond_0

    .line 2321
    .end local v0    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAutoSpacePrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "auto_space"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLayout()Lcom/nuance/swype/input/InputMethods$Layout;
    .locals 1

    .prologue
    .line 2123
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getScreenOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x0

    .line 2128
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2129
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 2149
    :cond_0
    :goto_0
    return-object v0

    .line 2131
    :cond_1
    iget v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-direct {p0, p1, v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getKeyboardLayoutId(II)I

    move-result v1

    .line 2132
    .local v1, "layoutId":I
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 2134
    .local v0, "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    if-nez v0, :cond_2

    .line 2135
    iget v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 2139
    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2140
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    check-cast v0, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 2143
    .restart local v0    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    :cond_3
    if-nez v0, :cond_0

    .line 2144
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string/jumbo v3, "Error: cannot find current or default layout for languageId(%s) with inputMode(%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 2146
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLanguageId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 2144
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;
    .locals 1

    .prologue
    .line 2062
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getScreenOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLayoutForCJK(I)Lcom/nuance/swype/input/InputMethods$Layout;
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    .line 2066
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->setSymLayoutDisabledCJK()V

    .line 2067
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLanguageId()Ljava/lang/String;

    move-result-object v3

    .line 2068
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getModeNameAsKey()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultLayoutId:I

    .line 2067
    invoke-static {v2, v3, v4, p1, v5}, Lcom/nuance/swype/input/InputMethods;->getKeyboardLayoutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 2069
    .local v1, "layoutId":I
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 2073
    .local v0, "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Layout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2076
    :cond_0
    if-nez v0, :cond_1

    .line 2077
    iget v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 2083
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Layout;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2084
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextEnabledLayout(Lcom/nuance/swype/input/InputMethods$Layout;)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 2085
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/InputMethods$Layout;->setEnabled(Z)V

    .line 2089
    :cond_2
    if-nez v0, :cond_3

    .line 2090
    iget v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultLayoutId:I

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->findLayout(I)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 2091
    if-eqz v0, :cond_3

    .line 2092
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Layout;->saveAsCurrent()V

    .line 2097
    :cond_3
    return-object v0
.end method

.method public getDefaultPortraitKeypadOptions()I
    .locals 5

    .prologue
    .line 2269
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/swype/input/InputMethods;->getPortraitKeypadOptions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 2273
    return v0
.end method

.method public getDefaultPortraitLayoutOptions()I
    .locals 5

    .prologue
    .line 2260
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v2, v2, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/swype/input/InputMethods;->getPortraitLayoutOptions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 2264
    return v0
.end method

.method public getDisplayInputMode()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1981
    iget v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1982
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputModeString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1983
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputModeString:Ljava/lang/String;

    .line 1994
    :cond_0
    :goto_0
    return-object v0

    .line 1985
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1988
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputMode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, "displayName":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputModeString:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1990
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputModeString:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1991
    :cond_4
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v1, :cond_0

    .line 1992
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayInputModeID()I
    .locals 1

    .prologue
    .line 1998
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDisplayInputMode:I

    return v0
.end method

.method public getEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHandwritingOnKeyboardKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2455
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 2456
    .local v0, "lt":Lcom/nuance/swype/input/InputMethods$Layout;
    if-eqz v0, :cond_2

    iget v2, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v3, 0x900

    if-ne v2, v3, :cond_2

    .line 2457
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "pinyin_qwerty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "zhuyin_qwerty"

    .line 2458
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "doublepinyin"

    .line 2459
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2460
    :cond_0
    const-string/jumbo v1, "hwrTrace."

    .line 2467
    .local v1, "str":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "handwriting_on_chinese_keyboard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2462
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "hwrOnly."

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 2465
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "hwrOnly."

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public getKeyboardLayouts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Layout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2326
    .local v1, "layouts":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Layout;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 2327
    .local v0, "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    iget v3, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x600

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x900

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0xa00

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x700

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x710

    if-eq v3, v4, :cond_1

    iget v3, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v4, 0x720

    if-ne v3, v4, :cond_0

    .line 2333
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2337
    .end local v0    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    :cond_2
    return-object v1
.end method

.method public final getLanguageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "GLOBAL"

    goto :goto_0
.end method

.method public getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2283
    const-string/jumbo v0, "mix_letter_and_symbol"

    return-object v0
.end method

.method public getMixLetterAndABCEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mix_letter_abc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMixLetterAndDigitChineseEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mix_letter_digit_chinese"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMixLetterAndDigitEnglishEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mix_letter_digit_english"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMixLetterAndDigitJapaneseEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mix_letter_digit_japanese"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMixLetterAndIntegratedEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mix_letter_integrated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2293
    const-string/jumbo v0, "mix_letter_punctuation"

    return-object v0
.end method

.method public getNextLayout()Lcom/nuance/swype/input/InputMethods$Layout;
    .locals 1

    .prologue
    .line 2255
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getNextEnabledLayout(Lcom/nuance/swype/input/InputMethods$Layout;)Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    return-object v0
.end method

.method public getPortaitKeypadOptionsPrefKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2307
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLanguageId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/InputMethods;->access$1500(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortaitLayoutOptionsPrefKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2303
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLanguageId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/InputMethods;->access$1400(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecapturePrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "recapture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenOrientation()I
    .locals 1

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2350
    const/4 v0, 0x1

    .line 2352
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0
.end method

.method public getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "trace_auto_accept"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceEnabledPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "trace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceOnKeyboardKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2472
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getCurrentLayoutForCJK()Lcom/nuance/swype/input/InputMethods$Layout;

    move-result-object v0

    .line 2473
    .local v0, "lt":Lcom/nuance/swype/input/InputMethods$Layout;
    if-eqz v0, :cond_2

    iget v2, v0, Lcom/nuance/swype/input/InputMethods$Layout;->mLayoutId:I

    const/16 v3, 0x900

    if-ne v2, v3, :cond_2

    .line 2474
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "pinyin_qwerty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "zhuyin_qwerty"

    .line 2475
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "doublepinyin"

    .line 2476
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2477
    :cond_0
    const-string/jumbo v1, "hwrTrace."

    .line 2484
    .local v1, "str":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "trace_on_chinese_keyboard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2479
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "hwrOnly."

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 2482
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "hwrOnly."

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method

.method public getWordCompletionPoint()I
    .locals 3

    .prologue
    .line 2210
    .line 2211
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getWordCompletionPrefKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2210
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWordCompletionPrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "word_completion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected isAtLeastOneLayoutIsEnabled()Z
    .locals 2

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Layout;

    .line 2368
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Layout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2369
    const/4 v0, 0x1

    .line 2372
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoSpaceEnabled()Z
    .locals 3

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getAutoSpacePrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isCompatibleLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .locals 2
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->compatibleLanguages:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->compatibleLanguages:[Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 2040
    :goto_0
    return v0

    .line 2039
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->encoding:Ljava/lang/String;

    .line 2040
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 5

    .prologue
    .line 2170
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 2172
    .local v1, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mDefaultEnabled:Z

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    .line 2173
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2176
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2177
    invoke-virtual {v1}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v0

    .line 2180
    :cond_0
    return v0

    .line 2173
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGlobal()Z
    .locals 1

    .prologue
    .line 2002
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->isGlobal:Z

    return v0
.end method

.method public isHandwriting()Z
    .locals 2

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "handwriting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2011
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandwritingEnabled()Z
    .locals 1

    .prologue
    .line 2033
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHandwritingUCRModeEnabled()Z
    .locals 2

    .prologue
    .line 2015
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isHwrUCRModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2018
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    const-string/jumbo v1, "English"

    .line 2019
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    const-string/jumbo v1, "French"

    .line 2020
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    const-string/jumbo v1, "German"

    .line 2021
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    const-string/jumbo v1, "Italian"

    .line 2022
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    const-string/jumbo v1, "Spanish"

    .line 2023
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    const-string/jumbo v1, "Arabic"

    .line 2024
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2025
    :cond_0
    const/4 v0, 0x1

    .line 2028
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMixLetterAndABCEnabled()Z
    .locals 3

    .prologue
    .line 2396
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndABCEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndABC:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndABC:Z

    .line 2397
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndABC:Z

    return v0
.end method

.method public isMixLetterAndDigitChineseEnabled()Z
    .locals 3

    .prologue
    .line 2415
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndDigitChineseEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitChinese:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitChinese:Z

    .line 2417
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitChinese:Z

    return v0
.end method

.method public isMixLetterAndDigitEnglishEnabled()Z
    .locals 3

    .prologue
    .line 2405
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndDigitEnglishEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitEnglish:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitEnglish:Z

    .line 2407
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitEnglish:Z

    return v0
.end method

.method public isMixLetterAndDigitJapaneseEnabled()Z
    .locals 3

    .prologue
    .line 2449
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndDigitJapaneseEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitJapanese:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitJapanese:Z

    .line 2450
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndDigitJapanese:Z

    return v0
.end method

.method public isMixLetterAndIntegratedEnabled()Z
    .locals 3

    .prologue
    .line 2425
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndIntegratedEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndIntegrated:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndIntegrated:Z

    .line 2427
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndIntegrated:Z

    return v0
.end method

.method public isMixLetterAndPunctuationEnabled()Z
    .locals 3

    .prologue
    .line 2297
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 2298
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getMixLetterAndPunctuationEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    .line 2297
    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    .line 2299
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndPunctuation:Z

    return v0
.end method

.method public isMixLetterAndSymbolEnabled()Z
    .locals 3

    .prologue
    .line 2287
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLetterAndSymbolEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    .line 2289
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mMixLetterAndSymbol:Z

    return v0
.end method

.method public isMultitapMode()Z
    .locals 2

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "multitap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNextWordPredictionEnabled()Z
    .locals 1

    .prologue
    .line 2192
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->isNextWordPredictionEnabled()Z

    move-result v0

    return v0
.end method

.method public isRecaptureEnabled()Z
    .locals 3

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getRecapturePrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTraceAutoAcceptEnabled()Z
    .locals 3

    .prologue
    .line 2229
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    .line 2230
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mTraceAutoAccept:Z

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 3

    .prologue
    .line 2220
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledTrace:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledTrace:Z

    .line 2221
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledTrace:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isTraceFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsCurrent()V
    .locals 0

    .prologue
    .line 2153
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->setCurrent()V

    .line 2154
    return-void
.end method

.method public setCurrent()V
    .locals 2

    .prologue
    .line 2157
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/nuance/swype/input/InputMethods;->access$900(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    .line 3023
    sget-boolean v0, Lcom/nuance/swype/util/AdsUtil;->sAdsSupported:Z

    .line 2158
    if-eqz v0, :cond_0

    .line 2159
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->setHandwriting(Z)V

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-static {v0, p0}, Lcom/nuance/swype/input/InputMethods$Language;->access$1302(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 2162
    return-void
.end method

.method public setCurrentJapaneseLayout(Ljava/lang/String;)V
    .locals 0
    .param p1, "layout"    # Ljava/lang/String;

    .prologue
    .line 2115
    iput-object p1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mCurrentJapaneseLayout:Ljava/lang/String;

    .line 2116
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2165
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 2166
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputMethods$Language;->setEnabled(Z)V

    .line 2167
    return-void
.end method
