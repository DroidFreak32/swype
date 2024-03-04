.class final Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;
.super Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACAddWordPairDLMEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AddWordPairDlmEventImpl"
.end annotation


# instance fields
.field public final categoryId:I

.field public final languageId:I

.field public final quality:B

.field public final spelling:[B

.field public final spellingLen:I

.field public final spellingType:I

.field public final useCount:I

.field public final word:[B

.field public final wordLen:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    const/16 v3, 0x80

    const/4 v2, 0x0

    const/16 v0, 0x3c

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;-><init>(ILcom/nuance/swypeconnect/ac/ACDLMEventInternal$1;)V

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->word:[B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->spelling:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->categoryId:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->languageId:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->useCount:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->quality:B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->spellingType:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->wordLen:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->spellingLen:I

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->word:[B

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->wordLen:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->spelling:[B

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->spellingLen:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final getCategoryId()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->categoryId:I

    return v0
.end method

.method public final getLanguageId()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->languageId:I

    return v0
.end method

.method public final getSpelling()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->spelling:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->spellingLen:I

    mul-int/lit8 v3, v3, 0x2

    const-string v4, "UTF-16"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final getWord()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->word:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordPairDlmEventImpl;->wordLen:I

    mul-int/lit8 v3, v3, 0x2

    const-string v4, "UTF-16"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-class v1, Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACAddWordPairDLMEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
