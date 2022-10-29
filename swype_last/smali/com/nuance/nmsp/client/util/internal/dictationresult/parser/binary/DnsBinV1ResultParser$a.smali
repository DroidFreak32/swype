.class final Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

.field public b:I

.field public c:I


# direct methods
.method private constructor <init>(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->a:Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->b:I

    iput v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$a;-><init>(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;)V

    return-void
.end method
