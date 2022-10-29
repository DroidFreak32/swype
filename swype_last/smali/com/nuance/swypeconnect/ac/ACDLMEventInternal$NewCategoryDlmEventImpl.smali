.class final Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;
.super Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACNewCategoryDLMEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NewCategoryDlmEventImpl"
.end annotation


# instance fields
.field public final active:I

.field public final categoryId:I

.field public final categoryInfo:[B

.field public final categoryName:[B

.field public final infoLen:I

.field public final nameLen:I

.field public final paddingCt:J

.field public final properties:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5

    const/4 v2, 0x0

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;-><init>(ILcom/nuance/swypeconnect/ac/ACDLMEventInternal$1;)V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->categoryName:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->categoryInfo:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->categoryId:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->paddingCt:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->properties:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->active:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->nameLen:I

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->categoryName:[B

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->nameLen:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->infoLen:I

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->categoryInfo:[B

    iget v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->infoLen:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final getCategoryId()I
    .registers 2

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->categoryId:I

    return v0
.end method

.method public final getCategoryInfo()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->categoryInfo:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->infoLen:I

    mul-int/lit8 v3, v3, 0x2

    const-string/jumbo v4, "UTF-16"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final getCategoryName()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->categoryName:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->nameLen:I

    mul-int/lit8 v3, v3, 0x2

    const-string/jumbo v4, "UTF-16"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-class v1, Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACNewCategoryDLMEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\nCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->categoryId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\nName Len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->nameLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\nInfo Len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->infoLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\nName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\nInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$NewCategoryDlmEventImpl;->getCategoryInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
