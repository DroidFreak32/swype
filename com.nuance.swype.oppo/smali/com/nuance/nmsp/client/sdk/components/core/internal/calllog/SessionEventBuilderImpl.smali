.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;
    }
.end annotation


# instance fields
.field private final a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

.field private final b:Ljava/util/Hashtable;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->b:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->getCalllog()Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->genSeqId(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;)V

    return-void
.end method

.method static a(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventName is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;)V

    return-object v1
.end method

.method static a(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventName is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RegularSessionEventImpl;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RegularSessionEventImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;)V

    return-object v1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;
    .locals 7

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventName is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;)V

    return-object v1
.end method

.method public static createRemoteSessionEventBuilder(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventName is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;

    invoke-direct {v0, p0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    invoke-direct {v1, v0, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;)V

    return-object v1
.end method


# virtual methods
.method public cancel()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    instance-of v0, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;

    iput-boolean v3, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RemoteSessionEventImpl;->_cancelled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->b:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->done(Ljava/util/Hashtable;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)V

    iput-boolean v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    return-object v0
.end method

.method public commit()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->commit(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    return-object v0
.end method

.method public commit(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .locals 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->done(Ljava/util/Hashtable;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    return-object v0
.end method

.method public putBinary(Ljava/lang/String;[B)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;

    const-string v1, "SessionEvent is already committed."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;

    const-string v1, "SessionEvent is already committed."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putEventReference(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;

    const-string v1, "SessionEvent is already committed."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;D)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;

    const-string v1, "SessionEvent is already committed."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putInteger(Ljava/lang/String;I)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;

    const-string v1, "SessionEvent is already committed."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;

    const-string v1, "SessionEvent is already committed."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->b:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;

    const-string v1, "SessionEvent is already committed."

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventAlreadyCommittedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
