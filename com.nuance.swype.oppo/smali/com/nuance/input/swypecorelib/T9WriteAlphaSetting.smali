.class public Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;
.super Lcom/nuance/input/swypecorelib/T9WriteSetting;
.source "T9WriteAlphaSetting.java"


# static fields
.field public static final HWR_TEMPLATE_DATABASE:I = 0x109

.field public static final MAX_RESULT_CANDIDATES:I = 0xa

.field public static final MAX_RESULT_CHARACTERS:I = 0x40


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/T9WriteSetting;-><init>()V

    .line 9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->setRecognitionMode(I)V

    .line 10
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->setWritingDirection(I)V

    .line 11
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->addPunctuationCategory()V

    .line 12
    return-void
.end method


# virtual methods
.method public addTextCategory()V
    .locals 0

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->addTextOnlyCategory()V

    .line 17
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/T9WriteAlphaSetting;->addPunctuationCategory()V

    .line 18
    return-void
.end method
