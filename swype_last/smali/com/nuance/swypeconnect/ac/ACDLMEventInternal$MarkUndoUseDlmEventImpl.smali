.class final Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;
.super Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACMarkUndoUseDLMEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MarkUndoUseDlmEventImpl"
.end annotation


# instance fields
.field public final categoryId:I

.field public final contextHash:J

.field public final languageId:I

.field public final order:I

.field public final updateUnigram:I

.field public final useCount:I

.field public final wordHash:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal;-><init>(ILcom/nuance/swypeconnect/ac/ACDLMEventInternal$1;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;->order:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;->contextHash:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;->wordHash:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;->categoryId:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;->languageId:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;->useCount:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;->updateUnigram:I

    return-void
.end method


# virtual methods
.method public final getCategoryId()I
    .registers 2

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;->categoryId:I

    return v0
.end method

.method public final getLanguageId()I
    .registers 2

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMEventInternal$MarkUndoUseDlmEventImpl;->languageId:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-class v1, Lcom/nuance/swypeconnect/ac/ACDLMEventData$ACMarkUndoUseDLMEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
