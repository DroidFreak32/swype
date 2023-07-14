.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;
    }
.end annotation


# static fields
.field public static final ABORT_KEY_BACK:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

.field public static final ABORT_KEY_END:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

.field public static final ABORT_NEW:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

.field public static final PREEMPTED:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

.field public static final STOPPED_TOO_SOON:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    const-string/jumbo v1, "ABORT_END"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;->ABORT_KEY_END:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    const-string/jumbo v1, "ABORT_BACK"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;->ABORT_KEY_BACK:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    const-string/jumbo v1, "ABORT_NEW"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;->ABORT_NEW:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    const-string/jumbo v1, "STOPPED_TOO_SOON"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;->STOPPED_TOO_SOON:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    const-string/jumbo v1, "PREEMPTED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command;->PREEMPTED:Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;

    return-void
.end method


# virtual methods
.method public abstract end()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;,
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;
        }
    .end annotation
.end method

.method public abstract isNetworkHealthy()Z
.end method

.method public abstract sendEnrollmentAudio([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;,
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;
        }
    .end annotation
.end method

.method public abstract sendParam(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Parameter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionAlreadyFinishedException;,
            Lcom/nuance/nmsp/client/sdk/components/general/TransactionExpiredException;
        }
    .end annotation
.end method

.method public abstract setLog(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/Command$CompletionCause;)V
.end method
