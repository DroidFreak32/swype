.class public abstract Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$FastMatcher;,
        Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;,
        Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final INVISIBLE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field private static final NINES:Ljava/lang/String;

.field public static final NONE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

.field static final WHITESPACE_SHIFT:I


# instance fields
.field final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x7f

    const/4 v7, 0x0

    const/16 v6, 0x1f

    .line 67
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$1;

    invoke-direct {v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$1;-><init>()V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 100
    const-string/jumbo v2, "CharMatcher.ASCII"

    invoke-static {v7, v8, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v2

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->ASCII:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 139
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 140
    const-string/jumbo v2, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, 0x9

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->NINES:Ljava/lang/String;

    .line 150
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;

    const-string/jumbo v3, "CharMatcher.DIGIT"

    const-string/jumbo v4, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sget-object v5, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->NINES:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 158
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$2;

    const-string/jumbo v3, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$2;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 169
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$3;

    const-string/jumbo v3, "CharMatcher.JAVA_LETTER"

    invoke-direct {v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$3;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 179
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$4;

    const-string/jumbo v3, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$4;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 190
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$5;

    const-string/jumbo v3, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$5;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 201
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$6;

    const-string/jumbo v3, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$6;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 212
    invoke-static {v7, v6}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->inRange(CC)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v2

    const/16 v3, 0x9f

    invoke-static {v8, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->inRange(CC)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v2

    const-string/jumbo v3, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v2

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 222
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;

    const-string/jumbo v3, "CharMatcher.INVISIBLE"

    const-string/jumbo v4, "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u2066\u2067\u2068\u2069\u206a\u3000\ud800\ufeff\ufff9\ufffa"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-string/jumbo v5, " \u00a0\u00ad\u0604\u061c\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u2066\u2067\u2068\u2069\u206f\u3000\uf8ff\ufeff\ufff9\ufffb"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->INVISIBLE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 247
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;

    const-string/jumbo v3, "CharMatcher.SINGLE_WIDTH"

    const-string/jumbo v4, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-string/jumbo v5, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 252
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$7;

    const-string/jumbo v3, "CharMatcher.ANY"

    invoke-direct {v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$7;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->ANY:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 328
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$8;

    const-string/jumbo v3, "CharMatcher.NONE"

    invoke-direct {v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$8;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->NONE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .line 1358
    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    sput v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->WHITESPACE_SHIFT:I

    .line 1371
    new-instance v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$15;

    const-string/jumbo v3, "WHITESPACE"

    invoke-direct {v2, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$15;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->description:Ljava/lang/String;

    .line 610
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->description:Ljava/lang/String;

    .line 602
    return-void
.end method

.method private static inRange(CC)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .locals 3
    .param p0, "startInclusive"    # C
    .param p1, "endInclusive"    # C

    .prologue
    .line 550
    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CharMatcher.inRange(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "description":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v1

    return-object v1

    .line 550
    .end local v0    # "description":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static inRange(CCLjava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .locals 1
    .param p0, "startInclusive"    # C
    .param p1, "endInclusive"    # C
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$13;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$13;-><init>(Ljava/lang/String;CC)V

    return-object v0
.end method

.method public static is$2a9d1698()Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CharMatcher.is(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "description":Ljava/lang/String;
    new-instance v1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;

    invoke-direct {v1, v0, v3}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$9;-><init>(Ljava/lang/String;C)V

    return-object v1
.end method

.method private static showCharacter(C)Ljava/lang/String;
    .locals 5
    .param p0, "c"    # C

    .prologue
    .line 229
    const-string/jumbo v0, "0123456789ABCDEF"

    .line 230
    .local v0, "hex":Ljava/lang/String;
    const/4 v3, 0x6

    new-array v2, v3, [C

    fill-array-data v2, :array_0

    .line 231
    .local v2, "tmp":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 232
    rsub-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 233
    shr-int/lit8 v3, p0, 0x4

    int-to-char p0, v3

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 230
    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method


# virtual methods
.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 1006
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1007
    .local v1, "length":I
    invoke-static {p2, v1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 1008
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1009
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1013
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 1008
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public abstract matches(C)Z
.end method

.method public or(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .locals 2
    .param p1, "other"    # Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    .prologue
    .line 720
    new-instance v1, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;

    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    invoke-direct {v1, p0, v0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$Or;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->description:Ljava/lang/String;

    return-object v0
.end method

.method withToString(Ljava/lang/String;)Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 775
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
