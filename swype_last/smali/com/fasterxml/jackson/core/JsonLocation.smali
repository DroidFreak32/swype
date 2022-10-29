.class public final Lcom/fasterxml/jackson/core/JsonLocation;
.super Ljava/lang/Object;
.source "JsonLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NA:Lcom/fasterxml/jackson/core/JsonLocation;


# instance fields
.field final _columnNr:I

.field final _lineNr:I

.field final _sourceRef:Ljava/lang/Object;

.field final _totalBytes:J

.field final _totalChars:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 17
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    const-string/jumbo v1, "N/A"

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JIIB)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .registers 14
    .param p1, "srcRef"    # Ljava/lang/Object;
    .param p2, "totalChars"    # J
    .param p4, "lineNr"    # I
    .param p5, "colNr"    # I

    .prologue
    .line 37
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JIIB)V

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;JIIB)V
    .registers 9
    .param p1, "sourceRef"    # Ljava/lang/Object;
    .param p2, "totalChars"    # J
    .param p4, "lineNr"    # I
    .param p5, "columnNr"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J

    .line 45
    iput-wide p2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    .line 46
    iput p4, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    .line 47
    iput p5, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    .line 48
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    if-ne p1, p0, :cond_5

    .line 126
    :cond_4
    :goto_4
    return v1

    .line 118
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    goto :goto_4

    .line 119
    :cond_9
    instance-of v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;

    if-nez v3, :cond_f

    move v1, v2

    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 120
    check-cast v0, Lcom/fasterxml/jackson/core/JsonLocation;

    .line 122
    .local v0, "otherLoc":Lcom/fasterxml/jackson/core/JsonLocation;
    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v3, :cond_1c

    .line 123
    iget-object v3, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-eqz v3, :cond_28

    move v1, v2

    goto :goto_4

    .line 124
    :cond_1c
    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    iget-object v4, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    move v1, v2

    goto :goto_4

    .line 126
    :cond_28
    iget v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    iget v4, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    if-ne v3, v4, :cond_44

    iget v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    iget v4, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    if-ne v3, v4, :cond_44

    iget-wide v4, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    iget-wide v6, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_44

    .line 1082
    iget-wide v4, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J

    .line 2082
    iget-wide v6, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J

    .line 126
    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_44
    move v1, v2

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 107
    :goto_5
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    xor-int/2addr v0, v1

    .line 108
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    add-int/2addr v0, v1

    .line 109
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    .line 110
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 111
    return v0

    .line 106
    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v1, :cond_37

    .line 91
    const-string/jumbo v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :goto_17
    const-string/jumbo v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 93
    :cond_37
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17
.end method
