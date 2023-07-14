.class final Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;


# direct methods
.method private constructor <init>(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->a:I

    iput v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;->c:Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser$b;-><init>(Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/binary/DnsBinV1ResultParser;)V

    return-void
.end method
