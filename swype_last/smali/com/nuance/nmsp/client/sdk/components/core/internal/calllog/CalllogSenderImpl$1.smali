.class Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# instance fields
.field public a:I


# direct methods
.method private constructor <init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl$1;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;)V

    return-void
.end method
