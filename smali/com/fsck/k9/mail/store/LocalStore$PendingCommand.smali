.class public Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingCommand"
.end annotation


# instance fields
.field public arguments:[Ljava/lang/String;

.field public command:Ljava/lang/String;

.field private mId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)J
    .locals 2
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;

    .prologue
    .line 750
    iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->mId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;J)J
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
    .param p1, "x1"    # J

    .prologue
    .line 750
    iput-wide p1, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->mId:J

    return-wide p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 759
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 760
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    iget-object v1, p0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 764
    .local v0, "argument":Ljava/lang/String;
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    .end local v0    # "argument":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
