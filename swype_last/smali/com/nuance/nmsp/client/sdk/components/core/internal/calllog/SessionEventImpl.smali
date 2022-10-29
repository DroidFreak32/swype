.class public Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;


# static fields
.field public static final NMSP_CALLLOG_META_APPLICATION_NAME:Ljava/lang/String; = "Application"

.field public static final NMSP_CALLLOG_META_CANCEL:Ljava/lang/String; = "Cancel"

.field public static final NMSP_CALLLOG_META_CHANNEL:Ljava/lang/String; = "Channel"

.field public static final NMSP_CALLLOG_META_COMPLETED_TIMESTAMP:Ljava/lang/String; = "CompletedTimestamp"

.field public static final NMSP_CALLLOG_META_HOSTNAME:Ljava/lang/String; = "Hostname"

.field public static final NMSP_CALLLOG_META_MERGED_NAME:Ljava/lang/String; = "Merged"

.field public static final NMSP_CALLLOG_META_NAME:Ljava/lang/String; = "Name"

.field public static final NMSP_CALLLOG_META_PARENT_ID:Ljava/lang/String; = "ParentSeqId"

.field public static final NMSP_CALLLOG_META_REFERENCE_ID:Ljava/lang/String; = "RefId"

.field public static final NMSP_CALLLOG_META_RETENTION_DAYS:Ljava/lang/String; = "RetentionDays"

.field public static final NMSP_CALLLOG_META_ROOT_PARENT_ID:Ljava/lang/String; = "RootParentId"

.field public static final NMSP_CALLLOG_META_SCHEMA_VERSION:Ljava/lang/String; = "SchemaVersion"

.field public static final NMSP_CALLLOG_META_SEQUENCE_ID:Ljava/lang/String; = "SeqId"

.field public static final NMSP_CALLLOG_META_TIMESTAMP:Ljava/lang/String; = "Timestamp"

.field private static final d:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field protected _table:Ljava/util/Hashtable;

.field a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

.field b:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

.field c:I

.field private e:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->b:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    return-void
.end method


# virtual methods
.method protected addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>()V

    instance-of v0, p3, [B

    if-eqz v0, :cond_18

    const-string/jumbo v0, "bin"

    :goto_d
    const-string/jumbo v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4c

    move v0, v1

    :goto_17
    return v0

    :cond_18
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    const-string/jumbo v0, "bool"

    goto :goto_d

    :cond_20
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_28

    const-string/jumbo v0, "float"

    goto :goto_d

    :cond_28
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_30

    const-string/jumbo v0, "int"

    goto :goto_d

    :cond_30
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_38

    const-string/jumbo v0, "long"

    goto :goto_d

    :cond_38
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_40

    const-string/jumbo v0, "str"

    goto :goto_d

    :cond_40
    instance-of v0, p3, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_48

    const-string/jumbo v0, "str"

    goto :goto_d

    :cond_48
    const-string/jumbo v0, "unknown"

    goto :goto_d

    :cond_4c
    const-string/jumbo v3, "t"

    invoke-interface {v2, v3, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "k"

    invoke-interface {v2, v0, p2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p3, [B

    if-eqz v0, :cond_69

    const-string/jumbo v0, "v"

    check-cast p3, [B

    invoke-interface {v2, v0, p3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addByteString(Ljava/lang/String;[B)V

    :goto_64
    invoke-interface {p1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    const/4 v0, 0x1

    goto :goto_17

    :cond_69
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_7a

    const-string/jumbo v0, "v"

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_7a
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_8b

    const-string/jumbo v0, "v"

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_8b
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_9c

    const-string/jumbo v0, "v"

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_64

    :cond_9c
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_ad

    const-string/jumbo v0, "v"

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_ad
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_ba

    const-string/jumbo v0, "v"

    check-cast p3, Ljava/lang/String;

    invoke-interface {v2, v0, p3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    :cond_ba
    instance-of v0, p3, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_eb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p3

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getRootParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p3, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iget v1, p3, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v"

    invoke-interface {v2, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_64

    :cond_eb
    move v0, v1

    goto/16 :goto_17
.end method

.method protected buildMetaSeq()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .registers 7

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;-><init>()V

    const-string/jumbo v1, "RootParentId"

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getRootParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    if-eqz v1, :cond_24

    const-string/jumbo v1, "ParentSeqId"

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iget v3, v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_24
    const-string/jumbo v1, "SeqId"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string/jumbo v1, "Name"

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string/jumbo v1, "Timestamp"

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->g:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .registers 3

    invoke-static {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public createRemoteChildEvent(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->createRemoteChildEvent(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    return-object v0
.end method

.method public createRemoteChildEvent(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->createRemoteSessionEventBuilder(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl$GenSeqIdCallback;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    move-result-object v0

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl$1;-><init>(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)V

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->commit(Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    return-object v0
.end method

.method public done(Ljava/util/Hashtable;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)V
    .registers 5

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->_table:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->g:J

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->b:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-virtual {v0, p0, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)V

    return-void
.end method

.method protected genSeqId()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getSequenceId()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    return-void
.end method

.method public getBinaryFormat()[B
    .registers 7

    new-instance v1, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>()V

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->buildMetaSeq()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;

    move-result-object v2

    new-instance v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-direct {v3}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;-><init>()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->_table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->_table:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v0, v5}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2e
    const-string/jumbo v0, "meta"

    invoke-interface {v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->size()I

    move-result v0

    if-lez v0, :cond_40

    const-string/jumbo v0, "attr"

    invoke-interface {v1, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    :cond_40
    move-object v0, v1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCalllog()Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->b:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    if-nez v0, :cond_16

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "getSessionEventId() has been called before builder commit has completed"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getRootParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getParent()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    return-object v0
.end method
