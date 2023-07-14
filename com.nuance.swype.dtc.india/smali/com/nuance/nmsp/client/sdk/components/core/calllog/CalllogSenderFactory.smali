.class public Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSenderFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCalllogSender(Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender;
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;

    invoke-direct {v0, p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogSenderImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/calllog/CalllogSender$SenderListener;)V

    return-object v0
.end method
