.class final Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;
.super Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACStringMarkUseDLMEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringMarkUseDlmEventImpl"
.end annotation


# instance fields
.field public final categoryId:I

.field public final languageId:I

.field public final quality:B

.field public final usage:B


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;-><init>(ILcom/nuance/swypeconnect/ac/ACDLMEventInternal$1;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;->categoryId:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;->languageId:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;->quality:B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;->usage:B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final getCategoryId()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;->categoryId:I

    return v0
.end method

.method public final getLanguageId()I
    .locals 1

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;->languageId:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-class v1, Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACStringMarkUseDLMEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "Category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;->categoryId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\nLanguage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$StringMarkUseDlmEventImpl;->languageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
