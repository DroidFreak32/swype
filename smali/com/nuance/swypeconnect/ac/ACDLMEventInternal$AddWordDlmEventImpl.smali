.class final Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;
.super Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACAddWordDLMEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AddWordDlmEventImpl"
.end annotation


# instance fields
.field public final categoryId:I

.field public final highPriority:Z

.field public final languageId:I

.field public final quality:B

.field public final useCount:I

.field public final word:[B

.field public final wordLen:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;-><init>(ILcom/nuance/swypeconnect/ac/ACDLMEventInternal$1;)V

    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->word:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->categoryId:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->languageId:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->useCount:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->quality:B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->wordLen:I

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->word:[B

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->wordLen:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->categoryId:I

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    iget-byte v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->quality:B

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->quality:B

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->highPriority:Z

    return-void
.end method


# virtual methods
.method public final getCategoryId()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->categoryId:I

    return v0
.end method

.method public final getLanguageId()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->languageId:I

    return v0
.end method

.method public final getWord()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->word:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->wordLen:I

    mul-int/lit8 v3, v3, 0x2

    const-string v4, "UTF-16"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-class v1, Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACAddWordDLMEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->categoryId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nLanguage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->languageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nWord Len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->wordLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nWord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$AddWordDlmEventImpl;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
