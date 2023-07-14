.class public Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;
.super Ljava/lang/Object;
.source "T9WriteJapaneseCategory.java"


# static fields
.field public static final DECUMA_ALPHA:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field private static final DECUMA_CATEGORY_ANSI:I = 0x3ea

.field private static final DECUMA_CATEGORY_CJK_SYMBOL:I = 0x1770

.field private static final DECUMA_CATEGORY_DIGIT:I = 0x44d

.field private static final DECUMA_CATEGORY_GESTURES:I = 0x69

.field private static final DECUMA_CATEGORY_HIRAGANA:I = 0x177a

.field private static final DECUMA_CATEGORY_HIRAGANASMALL:I = 0x177c

.field private static final DECUMA_CATEGORY_JIS:I = 0x179a

.field private static final DECUMA_CATEGORY_JIS_LEVEL_1:I = 0x1776

.field private static final DECUMA_CATEGORY_JIS_LEVEL_2:I = 0x1777

.field private static final DECUMA_CATEGORY_JIS_LEVEL_3:I = 0x1778

.field private static final DECUMA_CATEGORY_JIS_LEVEL_4:I = 0x1779

.field private static final DECUMA_CATEGORY_KATAKANA:I = 0x177b

.field private static final DECUMA_CATEGORY_KATAKANASMALL:I = 0x177d

.field private static final DECUMA_CATEGORY_PUNCTUATIONS:I = 0x4e2

.field public static final DECUMA_DIGIT:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_GESTURES:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_HIRAGANA:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_HIRAGANASMALL:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_JIS:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_JIS_LEVEL_1:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_JIS_LEVEL_2:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_JIS_LEVEL_3:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_JIS_LEVEL_4:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_KATAKANA:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_KATAKANASMALL:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_PUNCTUATION:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

.field public static final DECUMA_SYMBOL:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;


# instance fields
.field private final category:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_ALPHA:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 60
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x44d

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_DIGIT:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 63
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x4e2

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_PUNCTUATION:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 66
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x1770

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_SYMBOL:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 69
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_GESTURES:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 72
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x1776

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_JIS_LEVEL_1:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 75
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x1777

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_JIS_LEVEL_2:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 78
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x1778

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_JIS_LEVEL_3:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 81
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x1779

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_JIS_LEVEL_4:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 84
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x177a

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_HIRAGANA:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 87
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x177b

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_KATAKANA:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 90
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x177c

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_HIRAGANASMALL:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 93
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x177d

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_KATAKANASMALL:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .line 96
    new-instance v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    const/16 v1, 0x179a

    invoke-direct {v0, v1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->DECUMA_JIS:Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->category:I

    .line 103
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 111
    instance-of v0, p1, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->get()I

    move-result v0

    check-cast p1, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->category:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteJapaneseCategory;->category:I

    return v0
.end method
