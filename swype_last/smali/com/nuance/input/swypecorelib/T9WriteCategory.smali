.class public Lcom/nuance/input/swypecorelib/T9WriteCategory;
.super Ljava/lang/Object;
.source "T9WriteCategory.java"


# static fields
.field private static final CATEGORY_DIGIT:I = 0x8

.field private static final CATEGORY_EMAIL:I = 0x100

.field private static final CATEGORY_GESTURE:I = 0x40

.field private static final CATEGORY_LATIN:I = 0x4

.field private static final CATEGORY_PHONE:I = 0x80

.field private static final CATEGORY_PUNCTUATION:I = 0x10

.field private static final CATEGORY_SYMBOL:I = 0x20

.field private static final CATEGORY_TEXT:I = 0x2

.field private static final CATEGORY_URL:I = 0x200

.field public static final MULTITOUCH_HORIZONTAL_SWIPE_LEFT_UNICODE_VALUE:I = 0x21d0

.field public static final MULTITOUCH_HORIZONTAL_SWIPE_RIGHT_UNICODE_VALUE:I = 0x21d2

.field public static final MULTITOUCH_VERTICAL_SWIPE_DOWN_UNICODE_VALUE:I = 0x21d3

.field public static final MULTITOUCH_VERTICAL_SWIPE_UP_UNICODE_VALUE:I = 0x21d1


# instance fields
.field private categories:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInstantGestureCharacter(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 100
    const/16 v0, 0x8

    if-eq p0, v0, :cond_a

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isMultiTouchGesturesCharacter(I)Z
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 93
    const/16 v0, 0x21d0

    if-eq p0, v0, :cond_10

    const/16 v0, 0x21d2

    if-eq p0, v0, :cond_10

    const/16 v0, 0x21d1

    if-eq p0, v0, :cond_10

    const/16 v0, 0x21d3

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private remove(I)V
    .registers 4
    .param p1, "cat"    # I

    .prologue
    .line 89
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 90
    return-void
.end method


# virtual methods
.method public addGesture()V
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 37
    return-void
.end method

.method public addLatinLetter()V
    .registers 2

    .prologue
    .line 40
    const/16 v0, 0x180

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->remove(I)V

    .line 41
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 42
    return-void
.end method

.method public addNumber()V
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 51
    return-void
.end method

.method public addOnlyEmail()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->remove(I)V

    .line 80
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 81
    return-void
.end method

.method public addOnlyNumber()V
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 55
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 56
    return-void
.end method

.method public addOnlyPhoneNumber()V
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 60
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 61
    return-void
.end method

.method public addOnlySymbol()V
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 75
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 76
    return-void
.end method

.method public addOnlyUrl()V
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 85
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 86
    return-void
.end method

.method public addOnyLatinLetter()V
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->clear()V

    .line 46
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 47
    return-void
.end method

.method public addPunctuation()V
    .registers 2

    .prologue
    .line 69
    const/16 v0, 0x180

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->remove(I)V

    .line 70
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 71
    return-void
.end method

.method public addSymbol()V
    .registers 2

    .prologue
    .line 64
    const/16 v0, 0x180

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->remove(I)V

    .line 65
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 66
    return-void
.end method

.method public addText()V
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    .line 33
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 28
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteCategory;->remove(I)V

    .line 29
    return-void
.end method

.method public getCategory()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/nuance/input/swypecorelib/T9WriteCategory;->categories:I

    return v0
.end method
