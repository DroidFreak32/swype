.class public Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;
.super Ljava/lang/Object;
.source "T9WriteRecognizeCandidate.java"


# static fields
.field public static final STEM_OF_WORD:I = 0x1

.field public static final TERMINAL_WORD:I = 0x2

.field public static final WORD_NOT_FROM_DICTIONARY:I


# instance fields
.field public mCandidate:Ljava/lang/String;

.field public final mEndWithGesture:I

.field public final mEndWithInstantGesture:I

.field public final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "endWithInstantGesture"    # I
    .param p4, "endWithGesture"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mType:I

    .line 20
    iput p3, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mEndWithInstantGesture:I

    .line 21
    iput p4, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mEndWithGesture:I

    .line 22
    return-void
.end method


# virtual methods
.method public toWordCandidate()Lcom/nuance/input/swypecorelib/WordCandidate;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 25
    iget v1, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mType:I

    if-nez v1, :cond_0

    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    .line 28
    .local v0, "source":Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    :goto_0
    new-instance v1, Lcom/nuance/input/swypecorelib/WordCandidate;

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/T9WriteRecognizeCandidate;->mCandidate:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->value()I

    move-result v3

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    return-object v1

    .line 25
    .end local v0    # "source":Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    :cond_0
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_UNKNOWN:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0
.end method
