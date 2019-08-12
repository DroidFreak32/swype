.class public Ltwitter4j/StatusDeletionNoticeImpl;
.super Ljava/lang/Object;
.source "StatusDeletionNoticeImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/StatusDeletionNotice;


# static fields
.field private static final serialVersionUID:J = 0x17ea8725e4ab20deL


# instance fields
.field private statusId:J

.field private userId:J


# direct methods
.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 2
    .param p1, "status"    # Ltwitter4j/internal/org/json/JSONObject;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "id"

    invoke-static {v0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    .line 36
    const-string v0, "user_id"

    invoke-static {v0, p1}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Ltwitter4j/StatusDeletionNotice;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/StatusDeletionNoticeImpl;->compareTo(Ltwitter4j/StatusDeletionNotice;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/StatusDeletionNotice;)I
    .locals 6
    .param p1, "that"    # Ltwitter4j/StatusDeletionNotice;

    .prologue
    .line 51
    iget-wide v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    invoke-interface {p1}, Ltwitter4j/StatusDeletionNotice;->getStatusId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 52
    .local v0, "delta":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 53
    const/high16 v2, -0x80000000

    .line 57
    :goto_0
    return v2

    .line 54
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 55
    const v2, 0x7fffffff

    goto :goto_0

    .line 57
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 65
    check-cast v0, Ltwitter4j/StatusDeletionNoticeImpl;

    .line 67
    .local v0, "that":Ltwitter4j/StatusDeletionNoticeImpl;
    iget-wide v4, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    iget-wide v6, v0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 68
    :cond_4
    iget-wide v4, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    iget-wide v6, v0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getStatusId()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 75
    iget-wide v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    iget-wide v4, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 76
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    iget-wide v4, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 77
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusDeletionNoticeImpl{statusId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->statusId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/StatusDeletionNoticeImpl;->userId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
