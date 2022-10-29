.class public Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;
.super Lcom/nuance/input/swypecorelib/T9WriteSetting;
.source "T9WriteAlphaSetting.java"


# static fields
.field public static final HWR_TEMPLATE_DATABASE:I = 0x109

.field public static final MAX_RESULT_CANDIDATES:I = 0xa

.field public static final MAX_RESULT_CHARACTERS:I = 0x40


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;-><init>()V

    .line 9
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->setRecognitionMode(I)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->setWritingDirection(I)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->setInputGuide(I)V

    .line 12
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->addPunctuationCategory()V

    .line 13
    return-void
.end method


# virtual methods
.method public addTextCategory()V
    .registers 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->addTextOnlyCategory()V

    .line 18
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->addPunctuationCategory()V

    .line 19
    return-void
.end method
