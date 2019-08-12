.class public interface abstract Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
.super Ljava/lang/Object;


# virtual methods
.method public abstract commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
.end method

.method public abstract commit(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
.end method

.method public abstract putBinary(Ljava/lang/String;[B)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation
.end method

.method public abstract putBoolean(Ljava/lang/String;Z)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation
.end method

.method public abstract putEventReference(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation
.end method

.method public abstract putFloat(Ljava/lang/String;D)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation
.end method

.method public abstract putInteger(Ljava/lang/String;I)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation
.end method

.method public abstract putLong(Ljava/lang/String;J)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation
.end method
