.class public abstract Lcom/fsck/k9/mail/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mParent:Lcom/fsck/k9/mail/Part;

.field protected mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/BodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V
    .locals 1
    .param p1, "part"    # Lcom/fsck/k9/mail/BodyPart;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public addBodyPart(Lcom/fsck/k9/mail/BodyPart;I)V
    .locals 1
    .param p1, "part"    # Lcom/fsck/k9/mail/BodyPart;
    .param p2, "index"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 25
    return-void
.end method

.method public getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/BodyPart;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getParent()Lcom/fsck/k9/mail/Part;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParent:Lcom/fsck/k9/mail/Part;

    return-object v0
.end method

.method public removeBodyPart(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public removeBodyPart(Lcom/fsck/k9/mail/BodyPart;)Z
    .locals 1
    .param p1, "part"    # Lcom/fsck/k9/mail/BodyPart;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v3, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/BodyPart;

    .line 68
    .local v2, "part":Lcom/fsck/k9/mail/BodyPart;
    :try_start_0
    invoke-virtual {v2}, Lcom/fsck/k9/mail/BodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 69
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v3, v0, Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v3, :cond_0

    .line 71
    const-string v3, "Content-Transfer-Encoding"

    invoke-virtual {v2, v3, p1}, Lcom/fsck/k9/mail/BodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    check-cast v0, Lcom/fsck/k9/mail/internet/TextBody;

    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/internet/TextBody;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v3

    goto :goto_0

    .line 81
    .end local v2    # "part":Lcom/fsck/k9/mail/BodyPart;
    :cond_1
    return-void
.end method

.method public setParent(Lcom/fsck/k9/mail/Part;)V
    .locals 0
    .param p1, "parent"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fsck/k9/mail/Multipart;->mParent:Lcom/fsck/k9/mail/Part;

    .line 60
    return-void
.end method
