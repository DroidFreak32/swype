.class public Lcom/nuance/input/swypecorelib/RecaptureInfo;
.super Ljava/lang/Object;
.source "RecaptureInfo.java"


# static fields
.field static final DEFAULT_WORD_INDEX:I = 0x1

.field public static final EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

.field static final RECAPTURED_WORD_LENGTH_INDEX:I = 0x3

.field static final RECAPTURE_INFO_FIELDS:I = 0x4

.field static final START_RECAPTURED_WORD_POSITION_INDEX:I = 0x2

.field static final TOTAL_WORD_INDEX:I


# instance fields
.field private final EMPTY_RECAPTURED_WORD:Ljava/lang/String;

.field public final defaultWordIndex:I

.field final recapturedFieldInfo:[I

.field public final recapturedWord:Ljava/lang/String;

.field public final recapturedWordLen:I

.field public final startRecaptureWordPosition:I

.field public final totalWord:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 14
    new-instance v0, Lcom/nuance/input/swypecorelib/RecaptureInfo;

    invoke-static {}, Lcom/nuance/input/swypecorelib/RecaptureInfo;->allocateRecaptureInfoFieldInfoArray()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/input/swypecorelib/RecaptureInfo;-><init>([I[C)V

    sput-object v0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURE_INFO:Lcom/nuance/input/swypecorelib/RecaptureInfo;

    return-void
.end method

.method constructor <init>([I[C)V
    .registers 6
    .param p1, "recaptureInfo"    # [I
    .param p2, "buffer"    # [C

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURED_WORD:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->recapturedFieldInfo:[I

    .line 44
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->totalWord:I

    .line 45
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->defaultWordIndex:I

    .line 46
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->startRecaptureWordPosition:I

    .line 47
    const/4 v0, 0x3

    aget v0, p1, v0

    iput v0, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->recapturedWordLen:I

    .line 49
    if-eqz p2, :cond_34

    .line 50
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->startRecaptureWordPosition:I

    iget v0, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->recapturedWordLen:I

    if-lez v0, :cond_32

    iget v0, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->recapturedWordLen:I

    :goto_2c
    invoke-direct {v1, p2, v2, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->recapturedWord:Ljava/lang/String;

    .line 54
    :goto_31
    return-void

    .line 50
    :cond_32
    array-length v0, p2

    goto :goto_2c

    .line 52
    :cond_34
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->EMPTY_RECAPTURED_WORD:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/RecaptureInfo;->recapturedWord:Ljava/lang/String;

    goto :goto_31
.end method

.method static allocateRecaptureInfoFieldInfoArray()[I
    .registers 1

    .prologue
    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [I

    return-object v0
.end method

.method public static makeRecaptureInfo([C)Lcom/nuance/input/swypecorelib/RecaptureInfo;
    .registers 3
    .param p0, "word"    # [C

    .prologue
    .line 58
    new-instance v0, Lcom/nuance/input/swypecorelib/RecaptureInfo;

    invoke-static {}, Lcom/nuance/input/swypecorelib/RecaptureInfo;->allocateRecaptureInfoFieldInfoArray()[I

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/nuance/input/swypecorelib/RecaptureInfo;-><init>([I[C)V

    return-object v0
.end method
