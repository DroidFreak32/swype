.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/resource/nmas/PDXCommandListener;
.super Ljava/lang/Object;


# static fields
.field public static final COMMAND_ENDED:S = 0x4s

.field public static final COMMAND_IDLE_FOR_TOO_LONG:S = 0x5s

.field public static final REMOTE_DISCONNECTION:S = 0x3s

.field public static final TIMED_OUT_WAITING_FOR_RESULT:S = 0x1s


# virtual methods
.method public abstract PDXCommandEvent(S)V
.end method

.method public abstract PDXQueryErrorReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryError;)V
.end method

.method public abstract PDXQueryResultReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)V
.end method

.method public abstract PDXQueryRetryReturned(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryRetry;)V
.end method
