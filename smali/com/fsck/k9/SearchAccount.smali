.class public final Lcom/fsck/k9/SearchAccount;
.super Ljava/lang/Object;
.source "SearchAccount.java"

# interfaces
.implements Lcom/fsck/k9/SearchSpecification;
.implements Ljava/io/Serializable;


# instance fields
.field private integrate:Z

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/SearchAccount;->query:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/SearchAccount;->integrate:Z

    .line 21
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/SearchAccount;->integrate:Z

    .line 46
    return-void
.end method


# virtual methods
.method public final getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fsck/k9/SearchAccount;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final isIntegrate()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/fsck/k9/SearchAccount;->integrate:Z

    return v0
.end method
