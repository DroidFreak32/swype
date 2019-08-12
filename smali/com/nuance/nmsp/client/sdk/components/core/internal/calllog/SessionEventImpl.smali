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
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iput-object p3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    iput-object p4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->b:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    return-void
.end method


# virtual methods
.method protected addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-direct {v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;-><init>()V

    instance-of v0, p3, [B

    if-eqz v0, :cond_0

    const-string v0, "bin"

    :goto_0
    const-string v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    move v0, v1

    :goto_1
    return v0

    :cond_0
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const-string v0, "bool"

    goto :goto_0

    :cond_1
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_2

    const-string v0, "float"

    goto :goto_0

    :cond_2
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v0, "int"

    goto :goto_0

    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_4

    const-string v0, "long"

    goto :goto_0

    :cond_4
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "str"

    goto :goto_0

    :cond_5
    instance-of v0, p3, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_6

    const-string v0, "str"

    goto :goto_0

    :cond_6
    const-string v0, "unknown"

    goto :goto_0

    :cond_7
    const-string v3, "t"

    invoke-interface {v2, v3, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "k"

    invoke-interface {v2, v0, p2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p3, [B

    if-eqz v0, :cond_8

    const-string v0, "v"

    check-cast p3, [B

    invoke-interface {v2, v0, p3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addByteString(Ljava/lang/String;[B)V

    :goto_2
    invoke-interface {p1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->addDictionary(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    const-string v0, "v"

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_a

    const-string v0, "v"

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const-string v0, "v"

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addInteger(Ljava/lang/String;I)V

    goto :goto_2

    :cond_b
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_c

    const-string v0, "v"

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "v"

    check-cast p3, Ljava/lang/String;

    invoke-interface {v2, v0, p3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addUTF8String(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    instance-of v0, p3, Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    if-eqz v0, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p3

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iget-object v0, v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getRootParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p3, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iget v1, p3, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v"

    invoke-interface {v2, v1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addAsciiString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    move v0, v1

    goto/16 :goto_1
.end method

.method protected buildMetaSeq()Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;
    .locals 6

    new-instance v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXSequence;-><init>()V

    const-string v1, "RootParentId"

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getRootParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    if-eqz v1, :cond_0

    const-string v1, "ParentSeqId"

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    iget v3, v3, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "SeqId"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "Name"

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "Timestamp"

    new-instance v2, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->g:J

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createChildEventBuilder(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEventBuilder;
    .locals 1

    invoke-static {p0, p1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;->a(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public createRemoteChildEvent(Ljava/lang/String;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->createRemoteChildEvent(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;

    move-result-object v0

    return-object v0
.end method

.method public createRemoteChildEvent(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .locals 2

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
    .locals 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->_table:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->g:J

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->b:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    invoke-virtual {v0, p0, p2}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;->a(Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent$SessionEventCommittedListener;)V

    return-void
.end method

.method protected genSeqId()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getSequenceId()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    return-void
.end method

.method public getBinaryFormat()[B
    .locals 6

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

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->_table:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v0, v5}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->addEntryToSequence(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "meta"

    invoke-interface {v1, v0, v2}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    invoke-interface {v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "attr"

    invoke-interface {v1, v0, v3}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->addSequence(Ljava/lang/String;Lcom/nuance/nmsp/client/sdk/components/core/pdx/Sequence;)V

    :cond_1
    move-object v0, v1

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/core/internal/pdx/PDXDictionary;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getCalllog()Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->b:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/CalllogImpl;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->d:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v1, "getSessionEventId() has been called before builder commit has completed"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->a:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/RootSessionEventImpl;->getRootParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParent()Lcom/nuance/nmsp/client/sdk/components/core/calllog/SessionEvent;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;->e:Lcom/nuance/nmsp/client/sdk/components/core/internal/calllog/SessionEventImpl;

    return-object v0
.end method
