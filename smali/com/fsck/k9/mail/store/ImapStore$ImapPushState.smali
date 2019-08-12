.class public Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;
.super Ljava/lang/Object;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImapPushState"
.end annotation


# instance fields
.field protected uidNext:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "nUidNext"    # I

    .prologue
    .line 3576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3577
    iput p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->uidNext:I

    .line 3578
    return-void
.end method

.method protected static parse(Ljava/lang/String;)Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;
    .locals 9
    .param p0, "pushState"    # Ljava/lang/String;

    .prologue
    .line 3581
    const/4 v2, -0x1

    .line 3582
    .local v2, "newUidNext":I
    if-eqz p0, :cond_1

    .line 3584
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, ";"

    invoke-direct {v4, p0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3587
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-direct {v3, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    .local v3, "thisState":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3590
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 3592
    .local v1, "key":Ljava/lang/String;
    const-string v6, "uidNext"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3594
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 3597
    .local v5, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 3599
    :catch_0
    move-exception v0

    .line 3601
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "k9"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to part uidNext value "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3608
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "thisState":Ljava/util/StringTokenizer;
    .end local v4    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;

    invoke-direct {v6, v2}, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;-><init>(I)V

    return-object v6
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3613
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uidNext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapPushState;->uidNext:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
